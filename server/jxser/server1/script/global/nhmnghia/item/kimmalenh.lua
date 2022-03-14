Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua")

MONEY		=	2000000
id_KML		=	{4090,4091,4092,4093,4094,4095,4096}
T_KML 		=	2005
T_DAY_KML	=	2006
T_NHANTHUONG	=	5000
T_NHANTHUONG_HN	=	5001
T_DAY			= 	5002

function main()
	--dofile("script/global/nhmnghia/item/kimmalenh.lua")
	dialog()
	return 1
end

function dialog()
	local img = "<link=image[0,0]:\\spr\\item\\script\\other\\jinmajinnang.spr>Kim M� C�m Nang<link>"
	local strTitle = ""..img..": "..GetName().." h�y nhanh ch�ng ho�n th�nh nh�ng kh�o nghi�m trong C�m Nang �� c� th� nh�n ���c nh�ng ph�n th��ng h�p d�n."
	local tbOpt =
	{
		{"Nh�n th��ng h�ng ng�y",NhanThuongHN},
		{"Ta �� thu th�p �� 7 Kim M� L�nh",KML},
		{"Ta mu�n t�m hi�u ho�t ��ng",Info},
		{"Tho�t"},
	}
	CreateNewSayEx(strTitle, tbOpt)
end

function NhanThuongHN()
	local nDate = tonumber(GetLocalDate("%d"))
	if ( GetTask(T_DAY) ~= nDate ) then
		SetTask(T_DAY, nDate);
		SetTask(T_NHANTHUONG_HN,0)
	end
	
	local EMPTY	= 10
	if (CalcFreeItemCellCount() < EMPTY) then
		Msg2Player(""..GetName().." h�y thu d�n h�nh trang "..EMPTY.." � tr�ng!")
		return
	end
	
	if GetTask(T_NHANTHUONG_HN) > 0 then
		Talk(1,"","M�i ng�y ch� c� th� nh�n th��ng 1 l�n duy nh�t.")
	else
		local TAB_BONUS = {
				{szName="<color=yellow>S�t Th� Gi�n", tbProp={6,1,400,90,0,0}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
				{szName="<color=yellow>Vi�m �� L�nh", tbProp={6,1,1617}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
				--{szName="<color=yellow>Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,0,0}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
				{szName="<color=yellow>L�nh B�i Phong L�ng ��", tbProp={4,489}, nCount = 1, nExpiredTime = 1440,},
				{szName="<color=yellow>L�nh B�i Vi S�n ��o", tbProp={6,1,2432}, nCount = 1, nExpiredTime = 1440,},
				--{szName="<color=yellow>Thuy�n R�ng", tbProp={6,1,423}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
		}
	
		for i = 1,getn(TAB_BONUS) do
			tbAwardTemplet:GiveAwardByList(TAB_BONUS[i], "Ph�n th��ng");
		end
		SetTask(T_NHANTHUONG_HN,GetTask(T_NHANTHUONG_HN)+100)
	end
end


function CheckKML()
	local nCount = 0
	for i=1,getn(id_KML) do
		local isOK = CalcEquiproomItemCount(6,1,id_KML[i],-1)
		if (isOK > 0) then
			nCount = nCount + 1
		end
	end
	
	if ( nCount == getn(id_KML) ) then
		return 1
	end
	return 0
end

function DelKML()
	for i=1,getn(id_KML) do
		ConsumeEquiproomItem(1,6,1,id_KML[i],-1)
	end
end

function KML()
	local nDate = tonumber(GetLocalDate("%d"))
	local str = GetName()
	if ( GetTask(T_DAY_KML) ~= nDate ) then
		SetTask(T_DAY_KML, nDate);
		SetTask(T_KML,0)
	end
	
	if ( GetTask(T_KML) > 0 ) then
		Say("<color=yellow>M�i ng�y ch� c� th� s� d�ng 1 l�n Kim M� L�nh",0)
		return
	end
	
	local isOK = CheckKML()
	local nMoney = GetCash()
	
	if (isOK == 0) then
		Msg2Player("H�nh trang c�a "..GetName().." kh�ng mang �� <color=yellow>7 Kim M� L�nh<color> vui l�ng ki�m tra l�i.")
	elseif (nMoney < MONEY) then
		Msg2Player(""..GetName().." kh�ng mang �� <color=yellow>200 v�n l��ng<color>.")
	else
		Pay(MONEY)
		DelKML()
		local EXP = 3000000000
		tl_addPlayerExp(EXP)
		SetTask(T_KML,1)
		Msg2SubWorld(" <color=yellow>"..GetName().."<color> thu th�p �� <color=yellow>7 Kim M� L�nh<color> nh�n ���c <color=red>3 t� EXP<color>.Th�t kh�ng th� tin ���c.")
	end
end

function Info()
	local tb_Info = {
			"Ho�n Th�nh <color=yellow>Th�ch Th�c Th�i Gian<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 1<color>.",
			"Ho�n Th�nh <color=yellow>V��t �i Vi�m ��<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 2<color>.",
			"Ho�n Th�nh <color=yellow>Tin S�<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 3<color>.",
			"C�p b�n b� B�c <color=yellow>Phong L�ng ��<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 4<color>.",
			"Tham gia <color=yellow>T�ng Kim ��t 500 �i�m tr� l�n<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 5<color>.",
			"Ho�n Th�nh <color=yellow>Khai Ph� Vi S�n ��o<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 6<color>.",
			"Ho�n Th�nh 10 nhi�m v� <color=yellow>D� T�u<color> s� nh�n ���c : <color=yellow>Kim M� L�nh - 7<color>.",
			"Giao n�p <color=yellow>7 Kim M� L�nh<color> v� 200 v�n l��ng s� nh�n ���c <color=yellow>3 t� EXP<color>.",
		}
	for i=1,getn(tb_Info) do
		Msg2Player(tb_Info[i])
	end
end