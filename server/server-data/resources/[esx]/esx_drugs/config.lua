Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 3
}

Config.DrugDealerItems = {
	marijuana = 55
}

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	WeedField = {coords = vector3(1451.9,-2668.41,40.69), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 50.0},
	WeedProcessing = {coords = vector3(1389.3,3604.49,38.94), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 50.0},

	DrugDealer = {coords = vector3(-1001.37,4848.39,275.01), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
}