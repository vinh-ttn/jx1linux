nStartHour = 0
nEndHour = 24 

local _GetStartTime = function(nNowHour, nNowMin)
	
	nNowHour = mod(nNowHour,24)
	nNowMin = mod(nNowMin,60)
	if nNowHour < nStartHour then
		return nStartHour,0
	end
	if nNowMin >= 30 and nNowMin < 60 then
		return nNowHour+1,0
	elseif nNowMin >= 0 and nNowMin < 30 then
		return nNowHour,30
	end
end


function TaskShedule()	
	local nNowHour = tonumber(date("%H"))
	local nNowMin = tonumber(date("%M"))
	TaskName( "Chi’n dﬁch TËng Kim "..nNowHour)

	local nHour,nMin = %_GetStartTime(nNowHour, nNowMin)	
	TaskTime(nHour,nMin)
	--TaskTime(nNowHour,nNowMin)

	TaskInterval(30)
	TaskCountLimit(0)
	
end


-- TËng kim
function TaskContent()
	
	Battle_StartNewRound( 1, 1 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim s¨ c p
	
	Battle_StartNewRound( 1, 2 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim trung c p
	
	Battle_StartNewRound( 1, 3 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim cao c p
	
	OutputMsg( " =========================Chien truong Tong - Kim So Cap 19 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Trung Cap 19 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Cao Cap 19 : 50 khoi dong --->")
	
	zMsg2SubWorld  = "<color=yellow>Chi’n tr≠Íng TËng - Kim<color> <color=0xa9ffe0>S¨ c p, Trung c p, Cao c p Æ∑ Æ’n giÍ b∏o danh, c∏c nh©n s‹ giang hÂ nhanh ch©n tham gia Æ«u qu©n, ThÍi gian b∏o danh lµ 19 phÛt."
	zAddLocalCountNews = "Chi’n tr≠Íng TËng Kim Æ∑ bæt Æ«u b∏o danh, c∏c nh©n s‹ giang hÂ mau Æ’n khu v˘c b∏o danh Æ” tham gia chi’n tr≠Íng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
	
end

function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


