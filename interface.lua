-- Interface principal do Laptop

-- Slots de aplicativos do laptop
local brazutec_slot1_imagem = ""
local brazutec_slot1_formspec = ""

-- Instalador de aplicativos
function brazutec_instalar_em_laptop(textura)
	brazutec_slot1_imagem = textura;
	minetest.chat_send_all("Comando brazutec iniciado")
	minetest.chat_send_all("Valor de brazutec_slot1_imagem eh " ..brazutec_slot1_imagem)
	-- Agora ocorre a distribuição dos apps no laptop
end

-- Formspec do laptop
brazutec_laptop = {
	desktop = "size[12,9]".. -- Desktop
		"bgcolor[#080808BB;true]"..
		"image[0,0;15,10;brazutec_desktop.png]"..
		"image[0,0;5,5;"..brazutec_slot1_imagem.."]",
}
