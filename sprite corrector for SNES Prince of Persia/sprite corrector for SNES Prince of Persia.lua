--SNES Prince of Persia - sprite corrector v1.0 by ThunderAxe31

local player_state_addr = 0x000467
local player_X_addr     = 0x000346
local player_Y_addr     = 0x00034A
local side_addr         = 0x00033E

local player_X_1 = -1
local player_X_2 = -1

local player_Y_1 = -1
local player_Y_2 = -1

local side_1 = -1
local side_2 = -1
local side_3 = -1

local id_1 = -1
local id_2 = -1
local id_3 = -1

while true do
	id_1 = memory.read_u8(player_state_addr)
	
	player_X_1 = memory.read_u8(player_X_addr)
	player_Y_1 = memory.read_u8(player_Y_addr)
	
	side_1 = memory.read_u8(side_addr)
	
	gui.pixelText(player_X_2, player_Y_2, string.format("%2X", id_3), white, black)
	
	if id_3~=-1 and id_3~=0 and id_3~=66 and id_3~=86 and id_3~=100 and id_3~=101 and id_3~=120 and id_3~=133 and id_3~=134 and id_3<150 then
		local side = ""
		local x_off = 0
		if side_3 == 0 then
			side = "b"
		else
			x_off = 1
		end
		gui.drawImage("sprite_corrector_data/" .. id_3 .. side .. ".png", player_X_2 +8+ x_off, player_Y_2+8)
	end
	
	player_X_2 = player_X_1
	player_Y_2 = player_Y_1
	
	side_3 = side_2
	side_2 = side_1
	
	id_3 = id_2
	id_2 = id_1
	
	emu.frameadvance()
end
