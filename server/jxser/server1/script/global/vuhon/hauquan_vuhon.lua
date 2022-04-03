function main()
	local szTitle = "Xin ch�o <color=red>"..GetName().."<color> ! B�t k� ng��i thu�c ng� h�nh n�o, ng��i c� mu�n gia nh�p <color=fire>V� H�n<color> kh�ng?"
	local tbOpt=
	{
	"V� ph�i/go_vuhon",
	"V�o V� H�n v� h�c ��n skill 150/join_vuhon",
	"K�t th�c ��i tho�i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_vuhon()
	Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>V� h�n ���ng")
	NewWorld(1042, 1625, 3130)
end

function join_vuhon()
	local FactionNumber = GetLastFactionNumber()
	if FactionNumber >= 0 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local szTitle = "<color=red>"..GetName().."<color> ng��i c� ch�c ch�n mu�n gia nh�p ph�i <color=fire>V� H�n<color> b�n ta kh�ng?"
	local tbOpt ={
			"X�c nh�n!/join_vuhon_sure",
			"Kh�ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_vuhon_sure()
	SetSeries(3);
	SetFaction("wuhun");
	SetCamp(1);
	SetCurCamp(1);
	SetRank(97);
	SetLastFactionNumber(11);
	AddMagic(1963,0)
	AddMagic(1964,0)
	AddMagic(1965,0)
	AddMagic(1971,0)
	AddMagic(1972,0)
	AddMagic(1974,0)
	AddMagic(1975,0)
	AddMagic(1976,0)
	AddMagic(1977,0)
	AddMagic(1979,0)
	AddMagic(1980,0)
	AddMagic(1981,0)
	AddMagic(1982,0)
	AddMagic(1967,20)--
	AddMagic(1969,20)--
	AddMagic(1983,20)--
	AddMagic(1984,20)--
	AddMagic(1985,20)--
	--AddMagic(1986,20)--180
	Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i <color=fire>V� H�n")
end