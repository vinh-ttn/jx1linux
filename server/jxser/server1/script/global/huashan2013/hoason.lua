Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
function main() 
	dialog_main()	
end


function dialog_main()
	local szTitle = "L�n n�y ph�i <color=blue>Hoa S�n<color> ta t�i su�t,  giang h� l�i th�m nhi�u bi�n ��ng"
	local tbOpt =
	{
		"��n ph�i Hoa S�n/vep",
		"Gia nh�p ph�i Hoa S�n/noi",
		"Tho�t/no",
	}
	
	Say(szTitle, getn(tbOpt), tbOpt)
end

function noi()
	local FactionNumber = GetLastFactionNumber()
	local nSeries = GetSeries()
	if nSeries ~= 2 then
		Talk(1, "", "Nh�n v�t h� Th�y m�i c� th� gia nh�p Hoa S�n")
		return
	end
	if FactionNumber >= 0 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	if GetLevel()<10 then
		Talk(1, "", "H�y t� luy�n t�p th�m ��n c�p 10 r�i quay l�i ��y.")
		return
	end
	Say("Ph�i <color=cyan>Hoa S�n<color> ta �� kh�ng tham gia giang h� h�n 10 n�m nay, l�n n�y t�i xu�t �t s� khi�n b�n giang h� t� ph�i ph�i khi�p s�!",2, "Gia nh�p Hoa S�n/go", "�� ta suy ngh� k� l�i xem/no")
end


function go() 
	Talk(1,"","Ch�c m�ng c�c h� �� gia nh�p <color=blue>Hoa S�n<color>")
--NewWorld(987,1389,3086)
	SetTask(169,10)
	nt_setTask(137,71)
	SetTask(3481,10*256);
	SetRank(82)	
	SetFaction("huashan")  
	SetLastFactionNumber(10)
	SetCurCamp(3)
	SetCamp(3)
	add_hs(GetLevel())
	Msg2Player("Ch�nh th�c gia nh�p Hoa S�n ph�i, h�c ���c ki�m ph�p c� b�n")
--AddGoldItem(0, 4639)
--AddGoldItem(0, 4649)
--Msg2Player("Nh�n ���c <color=yellow>trang b� ho�ng kim c�p Thanh C�u.")
end 

function vep() 
Msg2Player("Ng�i y�n, ch�ng ta �i Hoa S�n ph�i")
NewWorld(987,1389,3086)
end 

function no() 
end 

