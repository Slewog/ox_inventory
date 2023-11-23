return {
	-- Police Personnal Locker.
	{
		coords = vec3(472.95, -995.25, 26.40),
		target = {
			loc = vec3(461.94, -1000.20, 29.75),
			distance = 1.2,
			length = 0.42,
			width = 4.4,
			debug = false,
			heading = 0,
			minZ = 29.74,
			maxZ = 32.45,
			label = 'Accéder à votre casier',
			icon = 'fa-solid fa-unlock',
		},
		name = 'policelocker',
		label = 'Casier personnel LSPD',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},
	-- Police Fridge.
	{
		coords = vec3(462.96, -980.21, 29.75),
		target = {
			loc = vec3(463.4, -980.200, 29.75),
			distance = 1.2,
			length = 0.72,
			width = 0.11,
			debug = false,
			heading = 0,
			minZ = 29.74,
			maxZ = 31.50,
			label = 'Ouvrir le frigo',
			icon = 'fa-solid fa-bowl-food'
		},
		name = 'policefridge',
		label = 'Frigo de salle de pause',
		owner = false,
		slots = 30,
		weight = 10000,
		jobs = {['police'] = 0}
	},

	-- Ambulance Personnal Locker.
	{
		coords = vec3(302.35, -599.66, 43.7),
		target = {
			loc = vec3(302.35, -599.66, 42.45),
			distance = 1.0,
			length = 3.0,
			width = 0.25,
			heading = 340,
			minZ = 42.45,
			maxZ = 44.51,
			debug = false,
			label = 'Accéder à votre casier',
			icon = 'fa-solid fa-unlock',
		},
		name = 'emslocker',
		label = 'Casier personnel LSMC',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
	-- Taxi Personnal Locker.
	{
		coords = vec3(-212.57, -1332.21, 23.0),
		target = {
			loc = vec3(893.9, -170.9, 74.2),
			distance = 1.0,
			length = 0.5,
			width = 2.0,
			debug = false,
			heading = 239.0,
			minZ = 73.5,
			maxZ = 75.06,
			label = 'Accéder à votre casier',
			-- icon = 'fa-solid fa-taxi'
			icon = 'fa-solid fa-unlock',
		},
		name = 'taxilocker',
		label = 'Casier personnel Downtown&Cab',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['taxi'] = 0}
	},
}