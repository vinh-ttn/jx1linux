--Include("\\script\\activitysys\\config\\10\\variables.lua")
--tbConfig = {}
--tbConfig[1] = --һ��ϸ��
--{
--	nId = 1,
--	szMessageType = "ClickNpc",
--	szName = "LingFanNPC_Click",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"�㷷"},
--	tbCondition = 
--	{
--	},
--	tbActition = 
--	{
--		{"AddDialogOpt",	{"�һ��������",2} },
--	},
--}
--tbConfig[2] = --һ��ϸ��
--{
--	nId = 2,
--	szMessageType = "CreateDialog",
--	szName = "ChangXingXiaLing",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"<npc>����Ϸ�ڸ����ָ߼���л�õ�<color=yellow>������<color>�������������ﻻȡ���ֽ���Ŷ��"},
--	tbCondition = 
--	{
--	},
--	tbActition = 
--	{
--		{"AddDialogOpt",	{"�����",3} },
--		{"AddDialogOpt",	{"��¹��",4} },
--		{"AddDialogOpt",	{"������",5} },
--		{"AddDialogOpt",	{"��Գ��",6} },
--		{"AddDialogOpt",	{"�޸�����",7} },
--	},
--}
--tbConfig[3] = --һ��ϸ��
--{
--	nId = 3,
--	szMessageType = "CreateCompose",
--	szName = "XingXiaLing_QingJuLing",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"�����",1,1,1,1},
--	tbCondition = 
--	{
--		{"AddOneMaterial",	{"������",{tbProp={6,1,2566,1,0,0},},10} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2369,1,0,0},nBindState=-2,},1,"XingXiaLing_QingJuLing"} },
--	},
--}
--tbConfig[4] = --һ��ϸ��
--{
--	nId = 4,
--	szMessageType = "CreateCompose",
--	szName = "XingXiaLing_YunLuLing",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"��¹��",1,1,1,1},
--	tbCondition = 
--	{
--		{"AddOneMaterial",	{"������",{tbProp={6,1,2566,1,0,0},},26} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2353,1,0,0},nBindState=-2,},1,"XingXiaLing_YunLuLing"} },
--	},
--}
--tbConfig[5] = --һ��ϸ��
--{
--	nId = 5,
--	szMessageType = "CreateCompose",
--	szName = "XingXiaLing_CangLangLing",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"������",1,1,1,1},
--	tbCondition = 
--	{
--		{"AddOneMaterial",	{"������",{tbProp={6,1,2566,1,0,0},},170} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2352,1,0,0},nBindState=-2,},1,"XingXiaLing_CangLangLing"} },
--	},
--}
--tbConfig[6] = --һ��ϸ��
--{
--	nId = 6,
--	szMessageType = "CreateCompose",
--	szName = "XingXiaLing_XuanYuanLing",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"��Գ��",1,1,1,1},
--	tbCondition = 
--	{
--		{"AddOneMaterial",	{"������",{tbProp={6,1,2566,1,0,0},},600} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2351,1,0,0},nBindState = -2,},1,"XingXiaLing_XuanYuanLing"} },
--	},
--}
--tbConfig[7] = --һ��ϸ��
--{
--	nId = 7,
--	szMessageType = "CreateCompose",
--	szName = "XingXiaLing_XiuFuShenYou",
--	nStartDate = nil,
--	nEndDate  = nil,
--	tbMessageParam = {"�޸�����",1,1,1,1},
--	tbCondition = 
--	{
--		{"AddOneMaterial",	{"������",{tbProp={6,1,2566,1,0,0},},1} },
--	},
--	tbActition = 
--	{
--		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2565,1,0,0},nBindState = -2,},1,"XingXiaLing_XiuFuShenYou"} },
--	},
--}