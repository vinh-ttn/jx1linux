-- So thu tu NPC la so trong npcs.xlss - 2, trong data co den npc 2481

dialognpc_vuhon = { 
{2467,53,1624,3197,"\\script\\global\\vuhon\\hauquan_vuhon.lua","H�u qu�n V� H�n"}, 
{2468,1042,1694,3045,"\\script\\global\\vuhon\\vuhon_nothing.lua","Nh�c L�i"}, 
{2469,1042,1680,2880,"\\script\\global\\vuhon\\vuhon_nothing.lua","Ng�u Th�ng"}, 
{2470,1042,1688,3056,"\\script\\global\\vuhon\\vuhon_nothing.lua","H�n Th��ng ��c"},
{2471,1042,1744,3248,"\\script\\global\\vuhon\\vuhon_nothing.lua","Thi Phong"},  
{2472,1042,1768,3184,"\\script\\global\\vuhon\\vuhon_nothing.lua","Thang Anh"},
{2473,1042,1600,3008,"\\script\\global\\vuhon\\vuhon_nothing.lua","H�n Kh�i Ph�ng"},  
{2474,1042,1592,2995,"\\script\\global\\vuhon\\vuhon_nothing.lua","Nh�c ��nh"},
{2475,1042,1623,3123,"\\script\\global\\vuhon\\vuhon_nothing.lua","Ng� Li�n"},
{2480,1042,1789,3204,"\\script\\global\\vuhon\\vuhon_nothing.lua","Y S�"},
{2481,1042,1804,3240,"\\script\\global\\vuhon\\vuhon_nothing.lua","D� ��i Ch�y"},
{2477,1042,1673,3305,"\\script\\global\\vuhon\\vuhon_nothing.lua","Nh�c Nh� N��ng"},
{625,1042,1551,3198,"804\\script\\changefeature\\npc\\box.lua","R��ng ch�a ��"},
}

function add_npc_vuhon()
	add_dialognpc(dialognpc_vuhon) -- c� s�n trong autoexec.lua
end