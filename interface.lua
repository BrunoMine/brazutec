-- Interface principal do Laptop

-- Slots de aplicativos do laptop
local brazutec_slot1_imagem = ""
local brazutec_slot1_formspec = ""
local brazutec_slot2_imagem = ""
local brazutec_slot2_formspec = ""
local brazutec_slot3_imagem = ""
local brazutec_slot3_formspec = ""
local brazutec_slot4_imagem = ""
local brazutec_slot4_formspec = ""
local brazutec_slot5_imagem = ""
local brazutec_slot5_formspec = ""
local brazutec_slot6_imagem = ""
local brazutec_slot6_formspec = ""
local brazutec_laptop = {
	desktop = "size[12,9]".. -- Desktop
		"bgcolor[#080808BB;true]"..
		"image[0,0;15,10;brazutec_desktop.png]"..
		"image[0,0;5,5;"..brazutec_slot1_imagem.."]",
		"image[0,0;5,5;"..brazutec_slot2_imagem.."]",
		"image[0,0;5,5;"..brazutec_slot3_imagem.."]",
		"image[0,0;5,5;"..brazutec_slot4_imagem.."]",
		"image[0,0;5,5;"..brazutec_slot5_imagem.."]",
		"image[0,0;5,5;"..brazutec_slot6_imagem.."]",
}


-- Instalador de aplicativos
function brazutec_instalar_em_laptop(textura, formspec)
	brazutec_slot1_imagem = textura;
	brazutec_slot1_formspec = formspec;
	-- Agora ocorre a distribuição dos apps no laptop
	
	-- Formspec do laptop
	brazutec_laptop = {
		desktop = "size[12,9]".. -- Desktop
			"bgcolor[#080808BB;true]"..
			"image[0,0;15,10;brazutec_desktop.png]"..
			"image[0,0;5,5;"..brazutec_slot1_imagem.."]",
			"image[0,0;5,5;"..brazutec_slot2_imagem.."]",
			"image[0,0;5,5;"..brazutec_slot3_imagem.."]",
			"image[0,0;5,5;"..brazutec_slot4_imagem.."]",
			"image[0,0;5,5;"..brazutec_slot5_imagem.."]",
			"image[0,0;5,5;"..brazutec_slot6_imagem.."]",
	}
end


