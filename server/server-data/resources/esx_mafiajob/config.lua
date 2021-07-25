Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = false
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MafiaStations = {

  PeakyBlinders = {

    Blip = {
      --Pos = { x = x = 1394.82, y = 1141.83, z = 114.0 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMPACTRIFLE',        price = 250000 },
	  { name = 'WEAPON_COMBATPDW',        price = 250000 },
    },

	  AuthorizedVehicles = {
		  { name = 'g65amg',  label = 'Mercedez G65 AMG' }
	  },

    Cloakrooms = {
      --{ x = 1403.86, y = 1145.21, z = 113.5 },
    },

    Armories = {
      { x = 1401.49, y = 1132.28, z = 113.5 },
    },

    Vehicles = {
      {
        Spawner    = { x = 1400.38, y = 1129.67, z = 113.5 },
        SpawnPoint = { x = 1401.78, y = 1117.96, z = 114.0 },
        Heading    = 90.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 9999.312, y = 9999.667, z = 9999.627 },
        SpawnPoint = { x = 9999.40, y = 9999.56, z = 9999.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 1407.79, y =  1116.39, z = 114.0 }
    },

    BossActions = {
      --{ x = 1399.09, y = 1139.51, z = 113.5 }
    },

  },

  Groove = {

    Blip = {
      --Pos = { x = -14.18, y = -1441.79, z = 31.1 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMPACTRIFLE',        price = 250000 },
    },

	  AuthorizedVehicles = {
		  { name = 'schafter3',  label = 'Schafter' }
	  },

    Cloakrooms = {
      --{ x = 1403.86, y = 1145.21, z = 113.5 },
    },

    Armories = {
      { x = -16.43, y = -1430.28, z = 30.3 },
    },

    Vehicles = {
      {
        Spawner    = { x = -14.44, y = -1427.94, z = 30.3 },
        SpawnPoint = { x = -24.37, y = -1437.49, z = 30.65 },
        Heading    = 180.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 9999.32, y = -9999.92, z = 9999.85 },
        SpawnPoint = { x = -9999.53, y = -9999.68, z = 9999.65 },
        Heading    = 180.0,
      }
    },

    VehicleDeleters = {
      { x = -25.46, y = -1429.04, z = 29.85 }
    },

    BossActions = {
      --{ x = -17.7, y = -1439.3, z = 30.3 }
    },

  },

  Cartel = {

    Blip = {
      --Pos = { x = -14.18, y = -1441.79, z = 31.1 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMPACTRIFLE',        price = 250000 },
	    { name = 'WEAPON_GUSENBERG',        price = 250000 },
    },

	  AuthorizedVehicles = {
		  { name = 'g65amg',  label = 'Mercedez G65 AMG' }
	  },

    Cloakrooms = {
      --{ x = 1403.86, y = 1145.21, z = 113.5 },
    },

    Armories = {
      { x = 977.17810058594, y = -104.06871795654, z = 73.845100402832 },
    },

    Vehicles = {
      {
        Spawner    = { x = 964.87175996094, y = -119.22956848145, z = 73.353042602539 },
        SpawnPoint = { x = 967.47393798828, y = -125.96086120605, z = 73.354141235352},
        Heading    = 331.298,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 9999.32, y = -9999.92, z = 9999.85 },
        SpawnPoint = { x = -9999.53, y = -9999.68, z = 9999.65 },
        Heading    = 180.0,
      }
    },

    VehicleDeleters = {
      { x = 954.15002441406, y = -133.45330810547, z = 73.452224731445 }
    },

    BossActions = {
      --{ x = -17.7, y = -1439.3, z = 30.3 }
    },

  },

  RivanS = {

    Blip = {
      --Pos = { x = x = 1394.82, y = 1141.83, z = 114.0 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMPACTRIFLE',        price = 250000 },
    },

	  AuthorizedVehicles = {
		  { name = 'fq2',  label = 'Fhatom FQ2' }
	  },

    Cloakrooms = {
      --{ x = 1403.86, y = 1145.21, z = 113.5 },
    },

    Armories = {
      { x = -201.23, y = -1318.15, z = 30.29 },
    },

    Vehicles = {
      {
        Spawner    = { x = -209.6, y = -1312.96, z = 30.09 },
        SpawnPoint = { x = -201.32, y = -1303.56, z = 30.64 },
        Heading    = 266.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = -9999.6, y = -9999.96, z = 9999.09 },
        SpawnPoint = { x = 9999.40, y = 9999.56, z = 9999.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -199.83, y = -1307.48, z = 30.65 }
    },

    BossActions = {
      --{ x = 1399.09, y = 1139.51, z = 113.5 }
    },

  },

}