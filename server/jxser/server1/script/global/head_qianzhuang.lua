-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ti�n trang ch�c n�ng ��ch ��u v�n ki�n 

Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  ϵͳ����

IncludeForRegionVer("\\script\\global\\", "gamebank_head.lua")

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

QUESTKEY_TICKET = 488; -- script viet hoa By http://tranhba.com  ng�n phi�u ��ch v�t ph�m ID 
EXTPOINT_TICKET = 2; -- script viet hoa By http://tranhba.com  ng�n phi�u ��ch ph�t tri�n �i�m 
EXTPOINT_TICKET_NEW = 6; 
QUESTKEY_TICKET_NEW = 962 

EXTPOINT_MAXVAL = 32768; 
-- script viet hoa By http://tranhba.com  ph�t tri�n �i�m ��ch l�n nh�t tr� gi� 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  s� d�ng ng�n phi�u ch�c n�ng h�m s� ng�n phi�u ph�n ng�n phi�u c�ng m�i ng�n phi�u hai lo�i , v�n function th�ng nh�t x� l� 
-- script viet hoa By http://tranhba.com  ��a v�o tham s� , ticket ng�n phi�u s� l��ng logstr thao t�c mi�u t� # s� nh� ng�y ch� # 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� l� -1 d� th��ng 0 ng�n phi�u kh�ng �� 1 ng�n phi�u kh�u tr� th�nh c�ng 
-- script viet hoa By http://tranhba.com  n�u nh� ng�n phi�u kh�ng �� , s� kh�ng tr� ng�n phi�u ��ch 

function qz_use_silver( ticket , logstr) 
if (logstr == nil) then 
logstr = "[ kh�ng bi�t ]" 
end 

if (SYSCFG_GAMEBANK_TICKET_USE == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("use_ticket have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return -1 
end 

if (ticket < 1 or ticket == nil) then 
Msg2Player("Ch�c n�ng b� l�i ") 
return -1 
end 
local nCountOld = GetItemCountEx(488);-- script viet hoa By http://tranhba.com  c�u ng�n phi�u 
local nCountNew = GetItemCountEx(962); 
	if (nCountOld + nCountNew < ticket) then
return 0; 
end 

local nDelCountOld = ticket; 
local nDelCountNew = 0; 
if (nCountOld < ticket) then 
nDelCountOld = nCountOld; 
nDelCountNew = ticket - nCountOld; 
end; 
for i = 1, nDelCountOld do 
DelItemEx(488); 
end 
for i = 1, nDelCountNew do 
DelItemEx(962); 
end 
WriteGoldLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount().." , ["..GetName().."]# t�n hao "..ticket.." t�m ng�n phi�u "..logstr, 0, 0, 0, (-ticket)); 

if (nDelCountOld > 0) then 
UseSilver(2, 2, nDelCountOld); -- script viet hoa By http://tranhba.com  ng�n phi�u ��i v� ��ng ti�n ��ch ti�u hao th�ng k� ( tr�c ti�p ti�u hao nguy�n b�o ng�n phi�u , c�ng ��ng ti�n ��i ch� c�ng x� l� ) 
end; 
if (nDelCountNew > 0) then 
UseSilver(3, 2, nDelCountNew); -- script viet hoa By http://tranhba.com  ng�n phi�u ��i v� ��ng ti�n ��ch ti�u hao th�ng k� ( tr�c ti�p ti�u hao nguy�n b�o ng�n phi�u , c�ng ��ng ti�n ��i ch� c�ng x� l� ) 
end; 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
return 1; 
end 

function buy_hunyuanlinglu() 
local szMsg = 
{ 
" ti�n C�u gia # g�n nh�t t� kinh th�nh v�o m�t nh�m h�n nguy�n linh l� # � trong ch�a 100 tinh luy�n th�ch # , c� th� �� cho ng��i � ��y du l�ch giang h� l�c luy�n ch� t�t h�n trang b� , c�n c� th� v� ��i l�y c�c lo�i v�t ph�m . to�n Trung Nguy�n ch� n�y m�t nh� , tuy�t kh�ng ph�n h�o . c� mu�n nh�n m�t ch�t hay kh�ng ? ", -- script viet hoa By http://tranhba.com 1 
"1 ��ng ti�n mua h�n nguy�n linh l� /#buy_addhunyuan_yes(1)", -- script viet hoa By http://tranhba.com 2 
"5 ��ng ti�n mua h�n nguy�n linh l� /#buy_addhunyuan_yes(5)", -- script viet hoa By http://tranhba.com 3 
"10 ��ng ti�n mua h�n nguy�n linh l� /#buy_addhunyuan_yes(10)", -- script viet hoa By http://tranhba.com 4 
"50 ��ng ti�n mua h�n nguy�n linh l� /#buy_addhunyuan_yes(50)", -- script viet hoa By http://tranhba.com 5 
"100 ��ng ti�n mua h�n nguy�n linh l� /#buy_addhunyuan_yes(100)", -- script viet hoa By http://tranhba.com 6 
" ta kh�ng c� h�ng th� /no", -- script viet hoa By http://tranhba.com 7 
}; 

Say(szMsg[1], 6, szMsg[2], szMsg[3], szMsg[4], szMsg[5], szMsg[6], szMsg[7]); 

end 

function buy_addhunyuan_yes(nNedCount) 
if (nNedCount < 1 or nNedCount == nil) then 
print("Fail!!!!"); 
return 
end; 
if(CalcFreeItemCellCount() < 5) then 
Say("T�i �eo l�ng ch� tr�ng ch�a �� , �t nh�t c�n 5 c�ch ch� tr�ng ", 0); 
return 
end 
local nCount = CalcEquiproomItemCount(4, 417, 1, 1) 

if (nCount < nNedCount) then 
Talk(1,"","Ng�i ti�n tr�n ng��i kh�ng �� , quy�n g�p �� ti�n tr� l�i �i . ") 
return 1; 
end 
ConsumeEquiproomItem(nNedCount, 4, 417, 1, 1) 

WriteGoldLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName()..format("]: t�n hao %d ��ng ti�n , mua h�n nguy�n linh l� .",nNedCount),-2,0,0,0); 
for i=1,nNedCount do 
AddItem(6,1,2312,1,0,0,0) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  h�n nguy�n linh l� 
end 

UseSilver(1, 2, nNedCount); -- script viet hoa By http://tranhba.com  kim nguy�n b�o ��i v� ��ng ti�n ��ch ti�u hao th�ng k� ( tr�c ti�p ti�u hao nguy�n b�o ng�n phi�u , c�ng ��ng ti�n ��i ch� c�ng x� l� ) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 

Talk(1,"","Mua h�n nguy�n linh l� th�nh c�ng # xin/m�i ki�m tra <color=yellow> t�i �eo l�ng <color>") 
Msg2Player("Mua h�n nguy�n linh l� th�nh c�ng # xin/m�i tra x�t t�i �eo l�ng . ") 
end 
