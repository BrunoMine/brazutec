--
-- Interface principal do Laptop
--

-- Slots de aplicativos do laptop
local brazutec_slot1_imagem = ""
local brazutec_slot1_etiqueta = ""
local brazutec_slot2_imagem = ""
local brazutec_slot2_etiqueta = ""
local brazutec_slot3_imagem = ""
local brazutec_slot3_etiqueta = ""
local brazutec_slot4_imagem = ""
local brazutec_slot4_etiqueta = ""
local brazutec_slot5_imagem = ""
local brazutec_slot5_etiqueta = ""
local brazutec_slot6_imagem = ""
local brazutec_slot6_etiqueta = ""
brazutec_laptop = {
	desktop = "size[12,9]"..
			"bgcolor[#080808BB;true]"..
			"image[0,0;15,10;brazutec_desktop.png]"..
			"image_button[10.3,6.8;2,2;brazutec_botao_semapps.png;brazutec_semapps_etiqueta;]",
	semapps = "size[5,6.5]".. -- Tela de aviso 'Sem Apps'
			"label[0.5,0.5;Nenhum aplicativo instalado]"..
			"image[0.5,1;5,5;brazutec_botao_semapps.png]"..
			"label[0.5,5.5;Encontre aplicativos no site]"..
			"label[0.5,6;site]",
}

-- Instalador de aplicativos
function brazutec_instalar_em_laptop(textura, etiqueta)
	if brazutec_slot1_imagem == "" then
		brazutec_slot1_imagem = textura
		brazutec_slot1_etiqueta = etiqueta
		brazutec_laptop = {
			desktop = "size[12,9]"..
					"bgcolor[#080808BB;true]"..
					"image[0,0;15,10;brazutec_desktop.png]"..
					"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]",
		}
	 else
		if brazutec_slot2_imagem == "" then
	 		brazutec_slot2_imagem = textura
			brazutec_slot2_etiqueta = etiqueta
			brazutec_laptop = {
				desktop = "size[12,9]"..
					"bgcolor[#080808BB;true]"..
					"image[0,0;15,10;brazutec_desktop.png]"..
					"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]"..
					"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";"..brazutec_slot2_etiqueta..";]",
			}
		 else
		 	if brazutec_slot3_imagem == "" then
		 		brazutec_slot3_imagem = textura
				brazutec_slot3_etiqueta = etiqueta
				brazutec_laptop = {
					desktop = "size[12,9]"..
						"bgcolor[#080808BB;true]"..
						"image[0,0;15,10;brazutec_desktop.png]"..
						"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]"..
						"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";"..brazutec_slot2_etiqueta..";]"..
						"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";"..brazutec_slot3_etiqueta..";]",
				}
			else
			 	if brazutec_slot4_imagem == "" then
			 		brazutec_slot4_imagem = textura
					brazutec_slot4_etiqueta = etiqueta
					brazutec_laptop = {
						desktop = "size[12,9]"..
							"bgcolor[#080808BB;true]"..
							"image[0,0;15,10;brazutec_desktop.png]"..
							"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]"..
							"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";"..brazutec_slot2_etiqueta..";]"..
							"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";"..brazutec_slot3_etiqueta..";]"..
							"image_button[5,4.5;3,3;"..brazutec_slot4_imagem..";"..brazutec_slot4_etiqueta..";]",
					}
				else
					if brazutec_slot5_imagem == "" then
			 			brazutec_slot5_imagem = textura
						brazutec_slot5_etiqueta = etiqueta
						brazutec_laptop = {
							desktop = "size[12,9]"..
								"bgcolor[#080808BB;true]"..
								"image[0,0;15,10;brazutec_desktop.png]"..
								"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]"..
								"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";"..brazutec_slot2_etiqueta..";]"..
								"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";"..brazutec_slot3_etiqueta..";]"..
								"image_button[5,4.5;3,3;"..brazutec_slot4_imagem..";"..brazutec_slot4_etiqueta..";]"..
								"image_button[7,1.5;3,3;"..brazutec_slot5_imagem..";"..brazutec_slot5_etiqueta..";]",
						}
					 else
					 	if brazutec_slot6_imagem == "" then
			 				brazutec_slot6_imagem = textura
							brazutec_slot6_etiqueta = etiqueta
								brazutec_laptop = {
									desktop = "size[12,9]"..
										"bgcolor[#080808BB;true]"..
										"image[0,0;15,10;brazutec_desktop.png]"..
										"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]"..
										"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";"..brazutec_slot2_etiqueta..";]"..
										"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";"..brazutec_slot3_etiqueta..";]"..
										"image_button[5,4.5;3,3;"..brazutec_slot4_imagem..";"..brazutec_slot4_etiqueta..";]"..
										"image_button[7,1.5;3,3;"..brazutec_slot5_imagem..";"..brazutec_slot5_etiqueta..";]"..
										"image_button[8,4.5;3,3;"..brazutec_slot6_imagem..";"..brazutec_slot6_etiqueta..";]"..
										"image_button[10.3,6.8;2,2;brazutec_botao_excessodeapps.png;brazutec_excessodeapps_etiqueta;]",
								}
						 else
						 	-- Excesso de aplicativos
						 	brazutec_laptop = {
									desktop = "size[12,9]"..
										"bgcolor[#080808BB;true]"..
										"image[0,0;15,10;brazutec_desktop.png]"..
										"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";"..brazutec_slot1_etiqueta..";]"..
										"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";"..brazutec_slot2_etiqueta..";]"..
										"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";"..brazutec_slot3_etiqueta..";]"..
										"image_button[5,4.5;3,3;"..brazutec_slot4_imagem..";"..brazutec_slot4_etiqueta..";]"..
										"image_button[7,1.5;3,3;"..brazutec_slot5_imagem..";"..brazutec_slot5_etiqueta..";]"..
										"image_button[8,4.5;3,3;"..brazutec_slot6_imagem..";"..brazutec_slot6_etiqueta..";]"..
										"image_button[10.3,6.8;2,2;brazutec_botao_excessodeapps.png;brazutec_excessodeapps_etiqueta;]",
									excessodeapps = "size[5,7]".. -- Tela de aviso de erro no app
										"label[0.5,0.5;Excesso de aplicativos]"..
										"image[0.5,1;5,5;brazutec_botao_semapps.png]"..
										"label[0.5,5.5;O laptop suporta apenas 6]"..
										"label[0.5,6;aplicativos]"..
										"label[0.5,6.5;Existe um excesso (verifique)]",
								}
						end
					end
				end
			end
		end
	end		
end

-- Funcoes dos botoes para ocorrencias
minetest.register_on_player_receive_fields(function(player, meta, fields)
	if fields.brazutec_semapps_etiqueta then
		minetest.show_formspec(player:get_player_name(), "", brazutec_laptop.semapps)
	end
	if fields.brazutec_excessodeapps_etiqueta then
		minetest.show_formspec(player:get_player_name(), "", brazutec_laptop.excessodeapps)
	end
end)
