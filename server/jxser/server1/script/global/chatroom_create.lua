MONEY_CREATECHATROOM = 50000

function Checkup()
	if (GetCash() < MONEY_CREATECHATROOM) then
		Msg2Player("<#>Trong h�nh trang kh�ng c� �� <color=yellow>" .. MONEY_CREATECHATROOM.." l��ng.<color>")
		return 0
	end
	return 1
end

function Consume()
	return Pay(MONEY_CREATECHATROOM)
end
