-- Node do CUB


-- Função de verificação de dono
local function verificar_dono(meta, player)
	if player:get_player_name() ~= meta:get_string("dono") then
		return false
	end
	return true
end

-- CUB em estado normal
minetest.register_node("brazutec:cub_aberto", {
	description = "Laptop CUB",
	drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {
			"brazutec_laptop_cima_aberto.png", -- Cima
			"brazutec_laptop_lado.png", -- Baixo
			"brazutec_laptop_lado.png", -- Lado direito
			"brazutec_laptop_lado.png", -- Lado esquerda
			"brazutec_laptop_fundo.png", -- Fundo
			{name="brazutec_laptop_frente.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}}, -- Frente
	node_box = {
		type = "fixed",
		fixed = {
					{-0.4375, -0.5, -0.375, 0.4375, -0.4375, 0.375}, -- Teclado
					{-0.4375, -0.5, 0.3125, 0.4375, 0.1875, 0.375}, -- Tela
				}
	},
	on_construct = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", "")
	end,
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", placer:get_player_name())
	end,
	on_punch = function (pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if verificar_dono(meta, clicker) then
			node.name = "brazutec:cub_fechado"
			minetest.env:set_node(pos, node)
			nodeupdate(pos)
			meta:set_string("dono", clicker:get_player_name())
		end
    end,
    on_rightclick = function (pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if verificar_dono(meta, clicker) then
			minetest.show_formspec(clicker:get_player_name(), "", brazutec_laptop.desktop)
		end
    end,
    can_dig = function(pos, player)
		local meta = minetest.get_meta(pos)
		return verificar_dono(meta, player)
	end,
	on_timer = function(pos, elapsed)
		local meta = minetest.get_meta(pos)
		local player = meta:get_string("dono")
		local node = minetest.get_node(pos)
		node.name = "brazutec:cub_descarregado_aberto"
		minetest.env:set_node(pos, node)
		nodeupdate(pos)
		meta:set_string("dono", player)
	end,
	is_ground_content = true,
	groups = {snappy=2, choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	drop = "brazutec:cub_fechado",
})

-- CUB fechado
minetest.register_node("brazutec:cub_fechado", {
	description = "Laptop CUB",
	drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {
			"brazutec_laptop_cima_fechado.png", -- Cima
			"brazutec_laptop_lado.png", -- Baixo
			"brazutec_laptop_lado.png", -- Lado direito
			"brazutec_laptop_lado.png", -- Lado esquerda
			"brazutec_laptop_fundo.png", -- Fundo
			{name="brazutec_laptop_frente_fechado.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}}, -- Frente
	node_box = {
		type = "fixed",
		fixed = {
					{-0.4375, -0.5, -0.375, 0.4375, -0.375, 0.375}, -- Laptop
				}
	},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", "")
	end,
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", placer:get_player_name())
	end,
	on_punch = function (pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if verificar_dono(meta, clicker) then
			node.name = "brazutec:cub_aberto"
			minetest.env:set_node(pos, node)
			nodeupdate(pos)
			meta:set_string("dono", clicker:get_player_name())
			meta:set_int("tempo_bateria", 0)
			local tempo  = minetest.get_node_timer(pos)
			tempo:start(180)
		end
    end,
    can_dig = function(pos, player)
		local meta = minetest.get_meta(pos)
		return verificar_dono(meta, player)
	end,
	is_ground_content = true,
	drop = "brazutec:cub_fechado",
	groups = {snappy=2, choppy=2, oddly_breakable_by_hand=2 },
	sounds = default.node_sound_stone_defaults(),
})

-- CUB (Descarregado) aberto
minetest.register_node("brazutec:cub_descarregado_aberto", {
	description = "Laptop CUB (Descarregado)",
	drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {
			"brazutec_laptop_cima_aberto_descarregado.png", -- Cima
			"brazutec_laptop_lado.png", -- Baixo
			"brazutec_laptop_lado.png", -- Lado direito
			"brazutec_laptop_lado.png", -- Lado esquerda
			"brazutec_laptop_fundo.png", -- Fundo
			{name="brazutec_laptop_frente_descarregado.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}}, -- Frente
	node_box = {
		type = "fixed",
		fixed = {
					{-0.4375, -0.5, -0.375, 0.4375, -0.4375, 0.375}, -- Teclado
					{-0.4375, -0.5, 0.3125, 0.4375, 0.1875, 0.375}, -- Tela
				}
	},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", "")
	end,
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", placer:get_player_name())
	end,
	on_punch = function (pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if verificar_dono(meta, clicker) then
			node.name = "brazutec:cub_descarregado_fechado"
			minetest.env:set_node(pos, node)
			nodeupdate(pos)
			meta:set_string("dono", clicker:get_player_name())
		end
    end,
    can_dig = function(pos, player)
		local meta = minetest.get_meta(pos)
		return verificar_dono(meta, player)
	end,
	is_ground_content = true,
	drop = "brazutec:cub_descarregado_fechado",
	groups = {snappy=2, choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
})

-- CUB fechado (Descarregado)
minetest.register_node("brazutec:cub_descarregado_fechado", {
	description = "Laptop CUB (Descarregado)",
	drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {
			"brazutec_laptop_cima_fechado.png", -- Cima
			"brazutec_laptop_lado.png", -- Baixo
			"brazutec_laptop_lado.png", -- Lado direito
			"brazutec_laptop_lado.png", -- Lado esquerda
			"brazutec_laptop_fundo.png", -- Fundo
			{name="brazutec_laptop_frente_descarregado.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}}, -- Frente
	node_box = {
		type = "fixed",
		fixed = {
					{-0.4375, -0.5, -0.375, 0.4375, -0.375, 0.375}, -- Laptop
				}
	},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", "")
	end,
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("dono", placer:get_player_name())
	end,
	on_punch = function (pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if verificar_dono(meta, clicker) then
			node.name = "brazutec:cub_descarregado_aberto"
			minetest.env:set_node(pos, node)
			nodeupdate(pos)
			meta:set_string("dono", clicker:get_player_name())
		end
    end,
    can_dig = function(pos, player)
		local meta = minetest.get_meta(pos)
		return verificar_dono(meta, player)
	end,
	is_ground_content = true,
	drop = "brazutec:cub_descarregado_fechado",
	groups = {snappy=2, choppy=2, oddly_breakable_by_hand=2 },
	sounds = default.node_sound_stone_defaults(),
})