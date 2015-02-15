--[[

Mod Brazutec 1.0
Desenvolvido por BrunoMine da Comunidade Minetestbr <http://minetestbr.blogspot.com.br/>
Git de colaboração e desenvolvimento <https://github.com/BrunoMine/brazutec/>

]]--

--
-- Inicializando mod
-- 

print("[Brazutec] Carregando mod brazutec... ")
dofile(minetest.get_modpath("brazutec").."/diretrizes.lua")
print("[Brazutec] Diretrizes carregadas... ")
dofile(minetest.get_modpath("brazutec").."/itens.lua")
print("[Brazutec] Itens carregados... ")
dofile(minetest.get_modpath("brazutec").."/node.lua")
print("[Brazutec] Laptop carregado... ")
dofile(minetest.get_modpath("brazutec").."/interface.lua")
print("[Brazutec] Interface principal carregada... ")
dofile(minetest.get_modpath("brazutec").."/receitas.lua")
print("[Brazutec] Receitas carregadas... ")
print("[Brazutec] OK")
