------------------------------------------------------------------------------------------------------------
function main()
	local szTitle = "Xin ch�o "..GetName().."! <color=fire>V� H�n ���ng<color> h�n h�nh ��n ti�p ng��i c�a <color=yellow>H�i qu�n V� l�m offline<color> gh� th�m. B�n c� th�ch n�i n�y kh�ng?"
	local tbOpt=
	{
	"R�t th�ch, c�m �n c�c b�n �� chu�n b� chu ��o./thich_vuhon",
	"Kh�ng./khong_vuhon",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function thich_vuhon()
	Talk(1, "", "V� H�n ���ng c� ch�t qu� nh� t�ng c�c h�, tham quan vui v� nh�.")
	SetTask(4000, GetTask(4000) + 100)
	AddItem(6, 1, 4418, 0, 0, 0)
	Msg2Player("B�n nh�n ���c <color=yellow>100 �i�m Ch�n Nguy�n<color> v� <color=yellow>1 ��i h� m�ch ��n<color>.")
	
end

function khong_vuhon()
	Talk(1, "", "T�nh c�m kh�ng th� c��ng c�u, nh�ng mong <color=yellow>��ng n�i l�i cay ��ng<color>.")
end