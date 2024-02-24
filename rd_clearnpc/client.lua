local QBCore = exports['qb-core']:GetCoreObject()

local clearPeds = {
	{coords = vector3(-1089.96, -831.01, 37.7), radius = 40.0}, -- Vespucci PD
}

CreateThread(function()
	while true do
		Wait(5000)
		for _, v in pairs(clearPeds) do
			ClearAreaOfPeds(v.coords, v.radius, 1)
		end
	end
end)