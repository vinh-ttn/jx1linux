function GetDesc(nItemIndex)
	local _,_,_,nLevel = GetItemProp(nItemIndex)
	return format("B�t c� t�ng kinh m�ch %d khi xung %d t�ng th�t b�i s� kh�ng b� h� c�p", nLevel + 5, nLevel + 6)
end