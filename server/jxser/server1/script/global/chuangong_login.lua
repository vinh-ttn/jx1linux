Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\head_qianzhuang.lua")
TV_LAST_APPLY_TIME = 1571 -- 上次申请传功时间
TBMONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
strimg = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr>чc C� Ki誱:<link>"

function chuangong_login()
	if (GetTask(TV_LAST_APPLY_TIME) > 0) then
		local nowday = tonumber(date("%y%m%d"))
		local applytime = GetTask(TV_LAST_APPLY_TIME)
		if (nowday >= applytime ) then 
			Describe(strimg.."Hi謓 ngi <color=yellow> chu萵 b� xong truy襫 c玭g<color>, c� th� n ch� ta truy襫 c玭g b蕋 k� l骳 n祇!", 2, "Ta bi誸 r錳!/cg_OnCancel", "Ta kh玭g mu鑞 truy襫 c玭g!/cg_undo");
		else
			Describe(strimg.."B筺 hi謓  <color=yellow>chu萵 b� ho祅 t蕋"..(num2datestr(applytime)).." <color>,  c� th� l藀 t鴆 truy襫 c玭g!", 2, " t� Minh ch� th鴆 t豱h! V穘 b鑙 c竜 bi謙!/cg_OnCancel", "Ta kh玭g mu鑞 truy襫 c玭g!/cg_undo");
		end
	end
end

function chuangong_msg()
	print("msgmsg")
	if (GetTask(TV_LAST_APPLY_TIME) > 0) then
		local nowday = tonumber(date("%y%m%d"))
		local applytime = GetTask(TV_LAST_APPLY_TIME)
		if (nowday >= applytime ) then 
			Msg2Player("Hi謓 t筰 <color=yellow>b筺  ng k� th祅h c玭g truy襫 c玭g<color=>, c� th� n ch� чc C� Ki誱  truy襫 th�. Truy襫 c玭g c莕 2 Ng﹏ phi誹, xin h穣 chu萵 b�!")
		else
			Msg2Player("Hi謓 t筰 <color=yellow>b筺  ng k� th祅h c玭g truy襫 c玭g, th阨 gian truy襫 c玭g t筰"..(num2datestr(applytime)).."<color>. Truy襫 c玭g c莕 2 Ng﹏ phi誹, xin h穣 chu萵 b�!")
		end
	end
end

function num2datestr(nday)
	local year = floor(nday / 10000) + 2000
	local month = mod( floor(nday / 100) , 100)
	local day = mod(nday, 100)
	return year.."n╩"..month.."th竛g"..day.."ng祔"
end

function cg_undo()
	local nowday = GetTask(TV_LAST_APPLY_TIME)
	if (nowday > 0) then 
		Describe(strimg.."Ta n"..num2datestr(nowday).."l� c� th� truy襫 c玭g cho ngi, c� th藅 ngi kh玭g mu鑞 truy襫 c玭g kh玭g?",2,"Kh玭g! Ta kh玭g mu鑞 truy襫 c玭g!/cg_undo_sure", "V﹏g! Ta mu鑞 truy襫 c玭g./cg_OnCancel")
	else
		Describe(strimg.."Ngi ch璦 xin ph衟 truy襫 c玭g, c莕 g� h駓 b�!",1,"K誸 th骳 i tho筰/cg_OnCancel")
	end
end

function cg_undo_sure()
	SetTask(TV_LAST_APPLY_TIME, 0)
	Describe(strimg.."Л頲! Nguy猲 li謚 n祔 ta t筸 gi� l筰, n誹 l莕 sau mu鑞 truy襫 c玭g th� n y!",1,"C秏 琻 Minh ch�!/cg_OnCancel")
end

function cg_OnCancel()
		
end

if (GetProductRegion() ~= "vn") then
	login_add(chuangong_msg, 2)
end
