function main()
	--dofile("script/global/nhmnghia/item/kimmalebao.lua")
	local str = ""..GetName().." mu�n ch�n Kim M� L�nh n�o?"
	local tb_KML = {
			"Kim M� L�nh - 1./#NhanKML(1)",
			"Kim M� L�nh - 2./#NhanKML(2)",
			"Kim M� L�nh - 3./#NhanKML(3)",
			"Kim M� L�nh - 4./#NhanKML(4)",
			"Kim M� L�nh - 5./#NhanKML(5)",
			"Kim M� L�nh - 6./#NhanKML(6)",
			"Kim M� L�nh - 7./#NhanKML(7)",
			--"Tho�t./no",
		}
	Say(str,getn(tb_KML),tb_KML)
	--return 1
end

function NhanKML(nIndex)
	AddItem(6, 1, 4089 + nIndex, 1, 0 , 0)
end

function no()
end