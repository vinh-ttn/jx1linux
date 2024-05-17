---------------------------------***Edit*By*Heart*Doldly***------------------------------------
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\updateconfig\\tasklist.lua")
-----------------------------------------------------------------------------
DROPRATE_BOSS_HONOURRATE = {
		["V��ng T�"] = {350, 136},--739
		["Huy�n Gi�c ��i S�"] = {350, 134},--740
		["���ng B�t Nhi�m"] = {350, 149},--741
		["B�ch Doanh Doanh"] = {350, 138},--742
		["Thanh Tuy�t S� Th�i"] = {350, 137},--743
		["Y�n Hi�u Tr�i"] = {350, 168},--744
		["H� Nh�n Ng�"] = {350, 171},--745
		["T� ��i Nh�c"] = {350, 171},--1367
		["Tuy�n C� T�"] = {350, 144},--747
		["Gia Lu�t T� Ly"] = {350, 130},--563
		["Huy�n Nan ��i S�"] = {400, 130},--1365
		["�oan M�c Du�"] = {400, 127},--565
		["C� B�ch"] = {350, 141},--566
		["��o Thanh Ch�n Nh�n"] = {300, 130},--562
		["Chung Linh T�"] = {400, 130},--567
		["H� Linh Phi�u"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M�nh Th��ng L��ng"] = {300, 180},--583
		["���ng Phi Y�n"] = {300, 180},--1366
		["Thanh Li�n T�"] = {300, 180},--1368
}

TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 10000000
KILLBOSSNEAREXPAWARD = 8000000

tbDropAward = {
	[1] = {
		{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,0,0},nCount=3},
		{szName="Thi�t La H�n",tbProp={6,1,23,1,0,0},nCount=3},
		{szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=2},
		{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,0,0},nCount=2},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=3},
		{szName="B�ch Qu� L�",tbProp={6,1,73,1,0,0},nCount=2},
		{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=5},
		{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=5},
		{szName="Ph�c duy�n l� ti�u",tbProp={6,1,122,1,0,0},nCount=5},
		{szName="Ph�c duy�n l� trung",tbProp={6,1,123,1,0,0},nCount=5},
		{szName="Ph�c duy�n l� ��i",tbProp={6,1,124,1,0,0},nCount=5},
	},
	[2] = {
		{szName = "B� K�p 120", tbProp={6,1,1125,1,0,0},nCount=1, nRate = 10},
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=4, nRate = 20},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=4, nRate = 20},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=4, nRate = 20},
		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=4, nRate = 20},
		{szName="V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=3,nRate=5},
		{szName="T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=3,nRate=5},
	},
	[3] = {
		{szName="An Bang",tbProp={0,random(216,219)},nQuality = 1,nRate = 1.5},
		{szName="��nh Qu�c",tbProp={0,random(398,402)},nQuality = 1,nRate = 3.5},
	},
}

tbDropEquip = {
	["V��ng T�"] = {
		{szName="H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={0,20},nQuality=1,nRate=0.3},
		{szName="Ng� Long Thi�n M�n Th�c Y�u ��i",tbProp={0,28},nQuality=1,nRate=0.3},
	},
	["Huy�n Gi�c ��i S�"] = {
		{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nQuality=1,nRate=0.3},
		{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nQuality=1,nRate=0.3},
		{szName="M�ng Long Ch�nh H�ng C� Sa",tbProp={0,2},nQuality=1,nRate=0.3},
		{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nQuality=1,nRate=0.3},
	},
	["���ng B�t Nhi�m"] = {
		{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nQuality=1,nRate=100},
		{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},nQuality=1,nRate=0.3},
		{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nQuality=1,nRate=0.3},
		{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},nQuality=1,nRate=0.3},
	},
	["B�ch Doanh Doanh"] = {
		{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nQuality=1,nRate=0.3},
		{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},nQuality=1,nRate=0.3},
	},
	["Thanh Tuy�t S� Th�i"] = {
		{szName="V� Gian � Thi�n Ki�m",tbProp={0,31},nQuality=1,nRate=0.3},
		{szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={0,42},nQuality=1,nRate=0.3},
	},
	["Y�n Hi�u Tr�i"] = {
		{szName="T� Ho�ng Ph�ng Phi �ao",tbProp={0,46},nQuality=1,nRate=0.3},
		{szName="B�ch H�i Uy�n ��ng Li�n Ho�n �ao",tbProp={0,51},nQuality=1,nRate=0.3},
		{szName="B�ch H�i H�ng Linh Kim Ti ��i",tbProp={0,53},nQuality=1,nRate=0.3},
	},
	["H� Nh�n Ng�"] = {
		{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94},nQuality=1,nRate=0.3},
		{szName="��nh Kh�i L�c Ng�c Tr��ng",tbProp={0,96},nQuality=1,nRate=0.3},
	},
	["T� ��i Nh�c"] = {
		{szName="C�p Phong Huy�n Ti Tam �o�n C�m",tbProp={0,123},nQuality=1,nRate=0.3},
	},
	["Tuy�n C� T�"] = {
		{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nQuality=1,nRate=0.3},
		{szName="L�i Khung Thi�n ��a H� Ph�",tbProp={0,132},nQuality=1,nRate=0.3},
		{szName="V� �o B�c Minh ��o Qu�n",tbProp={0,136},nQuality=1,nRate=0.3},
	},
	["Gia Lu�t T� Ly"] = {
		{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107},nQuality=1,nRate=0.3},
		{szName="Ma Th� S�n H�i S�n H�ng L�",tbProp={0,115},nQuality=1,nRate=0.3},
	},
	["Huy�n Nan ��i S�"] = {
		{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},nQuality=1,nRate=0.03},
		{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nQuality=1,nRate=0.3},
		{szName="M�ng Long Ch�nh H�ng C� Sa",tbProp={0,2},nQuality=1,nRate=0.3},
		{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nQuality=1,nRate=0.3},
	},
	["�oan M�c Du�"] = {
		{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nQuality=1,nRate=0.3},
	},
	["C� B�ch"] = {
		{szName="K� Nghi�p B�n L�i To�n Long Th��ng",tbProp={0,21},nQuality=1,nRate=0.3},
		{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nQuality=1,nRate=0.3},
		{szName="Ng� Phong L��ng Ng�n B�o �ao",tbProp={0,26},nQuality=1,nRate=0.3},
	},
	["��o Thanh Ch�n Nh�n"] = {
		{szName="C�p Phong Tam Thanh Ph�",tbProp={0,122},nQuality=1,nRate=0.3},
	},
	["Chung Linh T�"] = {
		{szName="T� Ho�ng B�ng Tung C�m Uy�n",tbProp={0,49},nQuality=1,nRate=0.3},
		{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54},nQuality=1,nRate=0.3},
	},
	["H� Linh Phi�u"] = {
		{szName="V� Ma T�y T��ng Ng�c Kh�u",tbProp={0,39},nQuality=1,nRate=0.3},
		{szName="V� Ma H�ng Truy Nhuy�n Th�p H�i",tbProp={0,40},nQuality=1,nRate=0.3},
	},
	["Lam Y Y"] = {
		{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,60},nQuality=1,nRate=0.3},
		{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56},nQuality=1,nRate=0.3},
	},
	["M�nh Th��ng L��ng"] = {
		{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},nQuality=1,nRate=0.3},
		{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},nQuality=1,nRate=0.3},
	},
	["���ng Phi Y�n"] = {
		{szName="Thi�n Quang Hoa V� M�n Thi�n",tbProp={0,76},nQuality=1,nRate=0.3},
		{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},nQuality=1,nRate=0.3},
		{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nQuality=1,nRate=0.3},
		{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},nQuality=1,nRate=0.3},
		{szName="S�m Ho�ng H�n Gi�o Th�c Y�u",tbProp={0,83},nQuality=1,nRate=0.3},
	},
	["Thanh Li�n T�"] = {
		{szName="L�i Khung H�n Tung B�ng B�ch Qu�n",tbProp={0,131},nQuality=1,nRate=0.3},
		{szName="L�i Khung Thi�n ��a H� Ph�",tbProp={0,132},nQuality=1,nRate=0.3},
		{szName="V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={0,139},nQuality=1,nRate=0.3},
	},
}

function OnDeath(nNpcIndex)
	local szNpcName = GetNpcName(nNpcIndex)
	local nTeamSize = GetTeamSize();
	local szName;
	if (nTeamSize > 1) then
		for i = 1, nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain) == 1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m T� ��i Gi�t BOSS ho�ng kim"));
		end
	else
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m C� Nh�n �� b�i BOSS ho�ng kim"));
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng Xung Quanh L�c BOSS Ho�ng Kim B� Ti�u Di�t"));
	end
	
	local szNews = format("<color=green>Ch�c M�ng <color=yellow>%s<color> T�i <color=yellow>%s<color> �� Ti�u Di�t Th�nh C�ng <color=yellow>%s<color> Nh�n ���c 10 Tri�u Kinh Nghi�m V� Ng��i Xung Quanh Nh�n ���c 8 Tri�u Kinh Nghi�m<color>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1,"","","\\script\\event\\msg2allworld.lua","battle_msg2allworld", szNews , "", "");

	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbDropEquip[szNpcName],format("killed_%s", szNpcName))
	tbDropTemplet:GiveAwardByRate(nNpcIndex, PlayerIndex,tbDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	----------------------BOSS ��c C� Xu�t Hi�n-------------------------------------
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua","ReduceGoldBossCount",0);
	end
end;

function OnTimer(npcindex, nTimeOut) 
	DelNpc(npcindex);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------