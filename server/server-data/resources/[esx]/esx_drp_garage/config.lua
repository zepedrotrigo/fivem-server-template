Config = {
	Locale = "en",
	DrawDistance = 100,
	Price = 750,

	-- This is the multiplier of price to pay when the car is damaged
	-- 100% damaged means 1000 * Multiplier
	-- 50% damaged means 500 * Multiplier
	-- Etc.
	RepairMultiplier = 10, 
	
	BlipInfos = {
		Sprite = 290,
		Color = 38
	},
	
	BlipPound = {
		Sprite = 67,
		Color = 64
	}
}

Config.Garages = {
	-- Start of Public Garages
	Garagem_Principal = {	
		Pos = {x=216.49, y=-787.48, z=29.82},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=231.74, y=-793.21, z=29.89},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 21.22,
			Marker = 0
		},
		DeletePoint = {
			Pos = {x=216.49, y=-787.48, z=29.62},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=410.51, y=-1624.12, z=28.69},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=401.85, y=-1641.5, z=28.69},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},
	Garagem_Praia = {	
		Pos = {x=-1180.26, y=-1476.24, z=3.68},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=-1180.26, y=-1476.24, z=3.68},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 315.01,
			Marker = 0
		},
		DeletePoint = {
			Pos = {x=-1196.7, y=-1487.93, z=3.68},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=-198.73, y=6275.23, z=30.7},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=-185.08, y=6271.77, z=30.7},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},

	Garagem_Norte = {	
		Pos = {x=385.82, y=285.14, z=102.53},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=385.82, y=285.14, z=102.53},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 144.86,
			Marker = 0		
		},
		DeletePoint = {
			Pos = {x=361.06, y=277.72, z=102.55},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=-198.73, y=6275.23, z=30.7},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=-185.08, y=6271.77, z=30.7},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},

	Garagem_Sandy = {	
		Pos = {x=1504.93, y=3750.9, z=33.55},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=1504.93, y=3750.9, z=33.55},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 21.22,
			Marker = 0
		},
		DeletePoint = {
			Pos = {x=1522.95, y=3759.18, z=33.43},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=1725.22, y=3708.85, z=33.54},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=1731.81, y=3725.5, z=33.0},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},

	Garagem_Motel = {	
		Pos = {x=300.33, y=-236.8, z=53.4},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=300.33, y=-236.8, z=53.4},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 21.22,
			Marker = 0
		},
		DeletePoint = {
			Pos = {x=289.13, y=-232.21, z=53.4},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=-198.73, y=6275.23, z=30.7},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=-185.08, y=6271.77, z=30.7},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},

	Garagem_Prisao = {	
		Pos = {x=1869.14, y=2591.88, z=45.67},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=1869.31, y=2584.84, z=45.67},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 21.22,
			Marker = 0
		},
		DeletePoint = {
			Pos = {x=1869.14, y=2591.88, z=45.67},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=-198.73, y=6275.23, z=30.7},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=-185.08, y=6271.77, z=30.7},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},

	Garagem_Paleto = {	
		Pos = {x=139.93, y=6624.53, z=30.0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 0,
		SpawnPoint = {
			Pos = {x=139.93, y=6624.53, z=31.0},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 21.22,
			Marker = 0
		},
		DeletePoint = {
			Pos = {x=124.39, y=6608.25, z=31.0},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 0
		},
		MunicipalPoundPoint = {
			Pos = {x=-198.73, y=6275.23, z=30.7},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x=-185.08, y=6271.77, z=30.7},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Heading = 308.53,
			Marker = 1
		},
	},

}
