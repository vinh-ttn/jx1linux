-- script viet hoa By http://tranhba.com  TimerHead.lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-23) t�nh gi� kh� t��ng quan c�ng c� 

FramePerSec = 18 -- script viet hoa By http://tranhba.com  m�i gi�y tr�nh ��m l�m th�nh th��ng l��ng x� l� 
CTime = 600 -- script viet hoa By http://tranhba.com  m�i canh gi� theo nh� 600 gi�y #10 ph�t # t�nh to�n 

function GetRestSec(i) -- script viet hoa By http://tranhba.com  tr�c ti�p tr� v� t�nh gi� kh� c�n th�a l�i gi�y ��m 
return floor(GetRestTime(i) / FramePerSec) 
end; 

function GetRestCTime(i) -- script viet hoa By http://tranhba.com  l�y ���c t�nh gi� kh� c�n th�a l�i th�i gian , l�n h�n m�t canh gi� l�c theo nh� Trung qu�c th�i gian chuy�n ��i 
x = floor(GetRestTime(i) / FramePerSec) 
if (x < CTime) then -- script viet hoa By http://tranhba.com  ch�a �� m�t canh gi� 
y = x.." gi�y " 
else 
y = floor(x / CTime).." c� canh gi� " 
end 
return y 
end; 

function GetTimerTask(i) -- script viet hoa By http://tranhba.com  th�ng qua t�nh gi� kh� ID s� gi�i t�ch t��ng �ng nhi�m v� 

end
