-- Interface principal do Laptop

-- Slots de aplicativos do laptop
local brazutec_slot1_imagem = "brazutec_botao_slotlivre.png"
local brazutec_slot1_formspec = "brazutec_laptop.slotlivre"
local brazutec_slot2_imagem = "brazutec_botao_slotlivre.png"
local brazutec_slot2_formspec = "brazutec_laptop.slotlivre"
local brazutec_slot3_imagem = "brazutec_botao_slotlivre.png"
local brazutec_slot3_formspec = "brazutec_laptop.slotlivre"
local brazutec_slot4_imagem = "brazutec_botao_slotlivre.png"
local brazutec_slot4_formspec = "brazutec_laptop.slotlivre"
local brazutec_slot5_imagem = "brazutec_botao_slotlivre.png"
local brazutec_slot5_formspec = "brazutec_laptop.slotlivre"
local brazutec_slot6_imagem = "brazutec_botao_slotlivre.png"
local brazutec_slot6_formspec = "brazutec_laptop.slotlivre"
brazutec_laptop = {
	desktop = "size[12,9]"..
		"bgcolor[#080808BB;true]"..
		"image[0,0;15,10;brazutec_desktop.png]"..
		"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";brazutec_slot1_botao;]"..
		"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";brazutec_slot2_botao;]"..
		"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";brazutec_slot3_botao;]"..
		"image_button[5,4.5;3,3;"..brazutec_slot4_imagem..";brazutec_slot4_botao;]"..
		"image_button[7,1.5;3,3;"..brazutec_slot5_imagem..";brazutec_slot5_botao;]"..
		"image_button[8,4.5;3,3;"..brazutec_slot6_imagem..";brazutec_slot6_botao;]",
	slotlivre = "size[5,6]".. -- Slot Livre
		"label[0.5,0.5;Slot livre para aplicativos]"..
		"image[0.5,1;5,5;brazutec_botao_slotlivre.png]",
}

-- Instalador de aplicativos
function brazutec_instalar_em_laptop(textura, formspec)
	if brazutec_slot1_imagem == "brazutec_botao_slotlivre.png" then
		brazutec_slot1_imagem = textura
		brazutec_slot1_formspec = formspec
	 else
		if brazutec_slot2_imagem == "brazutec_botao_slotlivre.png" then
	 		brazutec_slot2_imagem = textura
			brazutec_slot2_formspec = formspec
		 else
		 	if brazutec_slot3_imagem == "brazutec_botao_slotlivre.png" then
		 		brazutec_slot3_imagem = textura
				brazutec_slot3_formspec = formspec
			else
			 	if brazutec_slot4_imagem == "brazutec_botao_slotlivre.png" then
			 		brazutec_slot4_imagem = textura
					brazutec_slot4_formspec = formspec
				else
					if brazutec_slot5_imagem == "brazutec_botao_slotlivre.png" then
			 			brazutec_slot5_imagem = textura
						brazutec_slot5_formspec = formspec
					 else
					 	if brazutec_slot6_imagem == "brazutec_botao_slotlivre.png" then
			 				brazutec_slot6_imagem = textura
							brazutec_slot6_formspec = formspec
						end
					end
				end
			end
		end
	end		
	brazutec_laptop = {
		desktop = "size[12,9]"..
			"bgcolor[#080808BB;true]"..
			"image[0,0;15,10;brazutec_desktop.png]"..
			"image_button[1,1.5;3,3;"..brazutec_slot1_imagem..";brazutec_slot1_botao;]"..
			"image_button[2,4.5;3,3;"..brazutec_slot2_imagem..";brazutec_slot2_botao;]"..
			"image_button[4,1.5;3,3;"..brazutec_slot3_imagem..";brazutec_slot3_botao;]"..
			"image_button[5,4.5;3,3;"..brazutec_slot4_imagem..";brazutec_slot4_botao;]"..
			"image_button[7,1.5;3,3;"..brazutec_slot5_imagem..";brazutec_slot5_botao;]"..
			"image_button[8,4.5;3,3;"..brazutec_slot6_imagem..";brazutec_slot6_botao;]",
		slotlivre = "size[5,6]"..
			"label[0.5,0.5;Slot livre para aplicativos]"..
			"image[0.5,1;5,5;brazutec_botao_slotlivre.png]",
	}
end

-- Pegar formspec
function pegar_formspec_laptop(slot_formspec)
   return slot_formspec
end

-- Funcoes dos botoes dos slots
minetest.register_on_player_receive_fields(function(player, meta, fields)
	if fields.brazutec_slot1_botao then
		minetest.show_formspec(player:get_player_name(), "", pegar_formspec_laptop(brazutec_slot1_formspec))
	end
	if fields.brazutec_slot2_botao then
		minetest.show_formspec(player:get_player_name(), "", pegar_formspec_laptop(brazutec_slot2_formspec))
	end
	if fields.brazutec_slot3_botao then
		minetest.show_formspec(player:get_player_name(), "", pegar_formspec_laptop(brazutec_slot3_formspec))
	end
	if fields.brazutec_slot4_botao then
		minetest.show_formspec(player:get_player_name(), "", pegar_formspec_laptop(brazutec_slot4_formspec))
	end
	if fields.brazutec_slot5_botao then
		minetest.show_formspec(player:get_player_name(), "", pegar_formspec_laptop(brazutec_slot5_formspec))
	end
	if fields.brazutec_slot6_botao then
		minetest.show_formspec(player:get_player_name(), "", pegar_formspec_laptop(brazutec_slot6_formspec))
	end
	return false
end)
