TASKTMPID_MEDAL_RANK = 153; -- script viet hoa By http://tranhba.com  t�m th�i nhi�m v� thay ��i l��ng ID of tr��c m�t s� tho�i s� ti�n h�nh ���c ��ch t��ng b�i c�p b�c #1 , 2 , 3# 
TASKTMPID_MEDAL_RANGE = 154; -- script viet hoa By http://tranhba.com  t�m th�i nhi�m v� thay ��i l��ng ID of tr��c m�t s� tho�i s� ti�n h�nh ���c ��ch t��ng b�i ��m ph�m vi #0 , 1 , ... , 9# 
TASKTMPID_MEDAL_ANSWER = 155; -- script viet hoa By http://tranhba.com  t�m th�i nhi�m v� thay ��i l��ng ID of tr��c m�t s� tho�i nh� ch�i l�a ch�n t��ng b�i s� l��ng k�t qu� #DWORD# 
-- script viet hoa By http://tranhba.com TASKID_MEDAL_ANSWER = 2004; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng ID of . . . (test) 
METALCHOOSE_ID = 1000; 

aryszMedalRank = { " kim b�i ","Ng�n b�i ","��ng b�i " }; 

function onMedalmain() 
SetTaskTemp( TASKTMPID_MEDAL_ANSWER, 0 ); 
SetTaskTemp( TASKTMPID_MEDAL_RANK, 1 ); 
showMedalRange(); 
end 

function showMedalRange() 
local aryszRange = {}; 
local nRangeCount = 8; 
local szMedalRank = aryszMedalRank[ GetTaskTemp( TASKTMPID_MEDAL_RANK ) ]; 

for i = 1, nRangeCount do 
		aryszRange[ i ] = ( i - 1 ) * 10 .. "-".. ( i - 1 ) * 10 + 9 .. "ö/onRangeSelect";
end 
	aryszRange[ nRangeCount + 1 ] = "�˳�/onCancel";	

	Say( szMedalRank.."����Χ:", nRangeCount + 1, aryszRange );
end 

function onRangeSelect( nSel ) 
local aryszNumber = {}; 
local nMedalRank = GetTaskTemp( TASKTMPID_MEDAL_RANK ); 

for i = 1, 10 do 
		aryszNumber[i] = ( nSel * 10 + i - 1 ).."ö/onNumberSelect";
end 
aryszNumber[ 11 ] = " tr� v� /showMedalRange"; 

SetTaskTemp( TASKTMPID_MEDAL_RANGE, nSel ); 
Say( aryszMedalRank[ nMedalRank ].." ��m :", 11, aryszNumber ); 
end 

function onNumberSelect( nSel ) 
local nMedalRank = GetTaskTemp( TASKTMPID_MEDAL_RANK ); 
local nMedalRange = GetTaskTemp( TASKTMPID_MEDAL_RANGE ); 
local nMedalAnswer = GetTaskTemp( TASKTMPID_MEDAL_ANSWER ); 
	local nMedalNumber = nMedalRange * 10 + nSel;
nMedalAnswer = SetByte( nMedalAnswer, nMedalRank, nMedalNumber ); 
SetTaskTemp( TASKTMPID_MEDAL_ANSWER, nMedalAnswer ); 
if( nMedalRank < getn( aryszMedalRank ) ) then 
		SetTaskTemp( TASKTMPID_MEDAL_RANK, nMedalRank + 1 );
showMedalRange(); 
else 
confirm(); 
end 
end 

function confirm() 
local nRankCount = getn( aryszMedalRank ); 
local szConfirmInfo = " ng��i l�a ch�n "; 
local nMedalAnswer = GetTaskTemp( TASKTMPID_MEDAL_ANSWER ); 

for i = 1, nRankCount do 
szConfirmInfo = szConfirmInfo..GetByte( nMedalAnswer, i ).." mai "..aryszMedalRank[i]; 
end 
szConfirmInfo = szConfirmInfo..", mua v� s� ? "; 

Say( szConfirmInfo, 2,"X�c ��nh /onSubmit","H�y b� /onCancel" ); 
end 

function onSubmit() 
local nMedalAnswer = GetTaskTemp( TASKTMPID_MEDAL_ANSWER ); 
if (Pay(5000) > 0) then 
if (AddTicket(METALCHOOSE_ID , nMedalAnswer) == 1) then 
nItem = AddItem(6,1,75,1,0,0) 
SetSpecItemParam(nItem, 1, METALCHOOSE_ID ) 
SetSpecItemParam(nItem, 2, nMedalAnswer); 
SetSpecItemParam(nItem, 3, GetByte(nMedalAnswer, 3)) 
SyncItem(nItem) 
else 
Earn(5000); 
Say("Th�t xin l�i , n�n lo�i v� s� tr��c m�t �� m�t ph�p n�a mua . ", 0) 
end; 
else 
Say("Th�t xin l�i , ng��i nh�t ��nh ph�i tr� 5000 hai mua v� s� #", 0) 
end 
end 

function onCancel() 
end 
