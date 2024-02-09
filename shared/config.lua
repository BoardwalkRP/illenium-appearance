Config = {}

Config.Debug = false

Config.ClothingCost = 10
Config.BarberCost = 5
Config.TattooCost = 10
Config.SurgeonCost = 50

Config.ChargePerTattoo = true -- Charge players per tattoo. Config.TattooCost will become the cost of 1 tattoo. The cost can be overridden by adding `cost` key in shared/tattoos.lua for specific tattoos

-- Only set this to true if you're using rcore_tattoos
Config.RCoreTattoosCompatibility = false

Config.AsynchronousLoading = false -- Change this to false if you want the NUI data to load before displaying the appearance UI

Config.UseTarget = false

Config.TextUIOptions = {
    position = "left-center"
}

Config.NotifyOptions = {
    position = "top-right"
}

Config.OutfitCodeLength = 10

Config.UseRadialMenu = false
Config.UseOxRadial = false -- Set to true to use ox_lib radial menu, both this and UseRadialMenu must be true 

Config.EnablePedsForShops = true
Config.EnablePedsForClothingRooms = true
Config.EnablePedsForPlayerOutfitRooms = false

Config.EnablePedMenu = true
Config.PedMenuGroup = "group.admin"

Config.EnableJobOutfitsCommand = false -- Enables /joboutfits and /gangoutfits commands

Config.ShowNearestShopOnly = false
Config.HideRadar = false -- Hides the minimap while the appearance menu is open
Config.NearestShopBlipUpdateDelay = 10000

Config.InvincibleDuringCustomization = true

Config.PreventTrackerRemoval = false -- Disables "Scarf and Chains" section if the player has tracker
Config.TrackerClothingOptions = {
    drawable = 13,
    texture = 0
}

Config.NewCharacterSections = {
    Ped = true,
    HeadBlend = true,
    FaceFeatures = true,
    HeadOverlays = true,
    Components = true,
    Props = true,
    Tattoos = true
}

Config.GenderBasedOnPed = true

Config.AlwaysKeepProps = false

Config.PersistUniforms = true -- Keeps Job / Gang Outfits on player reconnects / logout
Config.OnDutyOnlyClothingRooms = false -- Set to `true` to make the clothing rooms accessible only to players who are On Duty

Config.BossManagedOutfits = false -- Allows Job / Gang bosses to manage their own job / gang outfits

Config.ReloadSkinCooldown = 5000

Config.AutomaticFade = false -- Enables automatic fading and hides the Fade section from Hair

Config.DisableComponents = {
    Masks = false,
    UpperBody = false,
    LowerBody = false,
    Bags = false,
    Shoes = false,
    ScarfAndChains = false,
    BodyArmor = false,
    Shirts = false,
    Decals = false,
    Jackets = false
}

---@type string[]
Config.Aces = {} -- list of ace permissions used for blacklisting

Config.DisableProps = {
    Hats = false,
    Glasses = false,
    Ear = false,
    Watches = false,
    Bracelets = false
}

Config.Blips = {
    ["clothing"] = {
        Show = true,
        Sprite = 366,
        Color = 47,
        Scale = 0.7,
        Name = "Clothing Store",
    },
    ["barber"] = {
        Show = true,
        Sprite = 71,
        Color = 0,
        Scale = 0.7,
        Name = "Barber",
    },
    ["tattoo"] = {
        Show = true,
        Sprite = 75,
        Color = 4,
        Scale = 0.7,
        Name = "Tattoo Shop",
    },
    ["surgeon"] = {
        Show = true,
        Sprite = 102,
        Color = 4,
        Scale = 0.7,
        Name = "Plastic Surgeon",
    }
}

Config.TargetConfig = {
    ["clothing"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-tshirt",
        label = "Open Clothing Store",
        distance = 3
    },
    ["barber"] = {
        model = "s_m_m_hairdress_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scissors",
        label = "Open Barber Shop",
        distance = 3
    },
    ["tattoo"] = {
        model = "u_m_y_tattoo_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-pen",
        label = "Open Tattoo Shop",
        distance = 3
    },
    ["surgeon"] = {
        model = "s_m_m_doctor_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scalpel",
        label = "Open Surgeon",
        distance = 3
    },
    ["clothingroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Open Job / Gang Clothes Menu",
        distance = 3
    },
    ["playeroutfitroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Open Outfits Menu",
        distance = 3
    },
}

Config.Stores = {
    {
        type = "clothing",
        coords = vector4(1693.2, 4828.11, 42.07, 188.66),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false, -- false => uses the size + rotation to create the zone | true => uses points to create the zone
        showBlip = true, -- overrides the blip visibilty configured above for the group
        --targetModel = "s_m_m_doctor_01", -- overrides the target ped configured for the group
        --targetScenario = "" -- overrides the target scenario configure for the group
        points = {
            vector3(1686.9018554688, 4829.8330078125, 42.07),
            vector3(1698.8566894531, 4831.4604492188, 42.07),
            vector3(1700.2448730469, 4817.7734375, 42.07),
            vector3(1688.3682861328, 4816.2954101562, 42.07)
        }
    },
    {
        type = "clothing",
        coords = vector4(-712.32, -154.05, 37.42, 212.36),
        size = vector3(7, 7, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-719.86212158203, -147.83151245117, 37.42),
            vector3(-709.10491943359, -141.53076171875, 37.42),
            vector3(-699.94342041016, -157.44494628906, 37.42),
            vector3(-710.68774414062, -163.64665222168, 37.42)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1192.61, -768.4, 17.32, 216.6),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1206.9552001953, -775.06304931641, 17.32),
            vector3(-1190.6080322266, -764.03198242188, 17.32),
            vector3(-1184.5672607422, -772.16949462891, 17.32),
            vector3(-1199.24609375, -783.07928466797, 17.32)
        }
    },
    {
        type = "clothing",
        coords = vector4(425.91, -801.03, 29.49, 177.79),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(419.55020141602, -798.36547851562, 29.49),
            vector3(431.61773681641, -798.31909179688, 29.49),
            vector3(431.19784545898, -812.07122802734, 29.49),
            vector3(419.140625, -812.03594970703, 29.49)
        }
    },
    {
        type = "clothing",
        coords = vector4(-168.73, -301.41, 39.73, 238.67),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-160.82145690918, -313.85919189453, 39.73),
            vector3(-172.56513977051, -309.82858276367, 39.73),
            vector3(-166.5775604248, -292.48077392578, 39.73),
            vector3(-154.84906005859, -296.51647949219, 39.73)
        }
    },
    {
        type = "clothing",
        coords = vector4(75.39, -1398.28, 29.38, 6.73),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(81.406135559082, -1400.7791748047, 29.38),
            vector3(69.335029602051, -1400.8251953125, 29.38),
            vector3(69.754981994629, -1387.078125, 29.38),
            vector3(81.500122070312, -1387.3002929688, 29.38)
        }
    },
    {
        type = "clothing",
        coords = vector4(-827.39, -1075.93, 11.33, 294.31),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-826.26251220703, -1082.6293945312, 11.33),
            vector3(-832.27856445312, -1072.2819824219, 11.33),
            vector3(-820.16442871094, -1065.7727050781, 11.33),
            vector3(-814.08953857422, -1076.1878662109, 11.33)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1453.12, -236.99, 49.81, 39.66),
        size = vector3(6, 6, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1448.4829101562, -226.39401245117, 49.82),
            vector3(-1439.2475585938, -234.70428466797, 49.82),
            vector3(-1451.5389404297, -248.33193969727, 49.82),
            vector3(-1460.7554931641, -240.02815246582, 49.82)
        }
    },
    {
        type = "clothing",
        coords = vector4(9.22, 6515.74, 31.88, 131.27),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(6.4955291748047, 6522.205078125, 31.88),
            vector3(14.737417221069, 6513.3872070312, 31.88),
            vector3(4.3691010475159, 6504.3452148438, 31.88),
            vector3(-3.5187695026398, 6513.1538085938, 31.88)
        }
    },
    {
        type = "clothing",
        coords = vector4(615.35, 2762.72, 42.09, 170.51),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(612.58312988281, 2747.2814941406, 42.09),
            vector3(612.26214599609, 2767.0520019531, 42.09),
            vector3(622.37548828125, 2767.7614746094, 42.09),
            vector3(623.66833496094, 2749.5180664062, 42.09)
        }
    },
    {
        type = "clothing",
        coords = vector4(1191.61, 2710.91, 38.22, 269.96),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1188.7923583984, 2704.2021484375, 38.22),
            vector3(1188.7498779297, 2716.2661132812, 38.22),
            vector3(1202.4979248047, 2715.8479003906, 38.22),
            vector3(1202.3558349609, 2703.9294433594, 38.22)
        }
    },
    {
        type = "clothing",
        coords = vector4(-3171.32, 1043.56, 20.86, 334.3),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-3162.0075683594, 1056.7303466797, 20.86),
            vector3(-3170.8247070312, 1039.0412597656, 20.86),
            vector3(-3180.0979003906, 1043.1201171875, 20.86),
            vector3(-3172.7292480469, 1059.8623046875, 20.86)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1105.52, 2707.79, 19.11, 317.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1103.3004150391, 2700.8195800781, 19.11),
            vector3(-1111.3771972656, 2709.884765625, 19.11),
            vector3(-1100.8548583984, 2718.638671875, 19.11),
            vector3(-1093.1976318359, 2709.7365722656, 19.11)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1119.24, -1440.6, 5.23, 300.5),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1124.5535888672, -1444.5367431641, 5.23),
            vector3(-1118.7023925781, -1441.0450439453, 5.23),
            vector3(-1121.2891845703, -1434.8474121094, 5.23),
            vector3(-1128.4727783203, -1439.8254394531, 5.23)
        }
    },
    {
        type = "clothing",
        coords = vector4(124.82, -224.36, 54.56, 335.41),
        size = vector3(5, 5, 5),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(133.60948181152, -210.31390380859, 54.56),
            vector3(125.8349609375, -228.48097229004, 54.56),
            vector3(116.3140335083, -225.02020263672, 54.56),
            vector3(122.56930541992, -207.83396911621, 54.56)
        }
    },
    {
        type = "barber",
        coords = vector4(-814.22, -183.7, 37.57, 116.91),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-825.06127929688, -182.67497253418, 37.57),
            vector3(-808.82415771484, -179.19134521484, 37.57),
            vector3(-808.55261230469, -184.9720916748, 37.57),
            vector3(-819.77899169922, -191.81831359863, 37.57)
        }
    },
    {
        type = "barber",
        coords = vector4(136.78, -1708.4, 29.29, 144.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(132.57008361816, -1710.5053710938, 29.29),
            vector3(138.77899169922, -1702.6778564453, 29.29),
            vector3(142.73052978516, -1705.6853027344, 29.29),
            vector3(135.49719238281, -1712.9750976562, 29.29)
        }
    },
    {
        type = "barber",
        coords = vector4(-1282.57, -1116.84, 6.99, 89.25),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1287.4735107422, -1115.4364013672, 6.99),
            vector3(-1277.5638427734, -1115.1229248047, 6.99),
            vector3(-1277.2469482422, -1120.1147460938, 6.99),
            vector3(-1287.4561767578, -1119.2506103516, 6.99)
        }
    },
    {
        type = "barber",
        coords = vector4(1931.41, 3729.73, 32.84, 212.08),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1932.4931640625, 3725.3374023438, 32.84),
            vector3(1927.2720947266, 3733.7663574219, 32.84),
            vector3(1931.4379882812, 3736.5327148438, 32.84),
            vector3(1936.0697021484, 3727.2839355469, 32.84)
        }
    },
    {
        type = "barber",
        coords = vector4(1212.8, -472.9, 65.2, 60.94),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1208.3327636719, -469.84338378906, 65.2),
            vector3(1217.9066162109, -472.40216064453, 65.2),
            vector3(1216.9870605469, -477.00939941406, 65.2),
            vector3(1206.1077880859, -473.83499145508, 65.2)
        }
    },
    {
        type = "barber",
        coords = vector4(-32.9, -152.3, 56.1, 335.22),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-29.730783462524, -148.67495727539, 56.1),
            vector3(-32.919719696045, -158.04254150391, 56.1),
            vector3(-37.612594604492, -156.62759399414, 56.1),
            vector3(-33.30192565918, -147.31649780273, 56.1)
        }
    },
    {
        type = "barber",
        coords = vector4(-278.1, 6228.5, 30.7, 49.32),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-280.29818725586, 6232.7265625, 30.7),
            vector3(-273.06427001953, 6225.9692382812, 30.7),
            vector3(-276.25280761719, 6222.4013671875, 30.7),
            vector3(-282.98211669922, 6230.015625, 30.7)
        }
    },
    {
        type = "tattoo",
        coords = vector4(1322.6, -1651.9, 51.2, 42.47),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1323.9360351562, -1649.2370605469, 51.2),
            vector3(1328.0186767578, -1654.3087158203, 51.2),
            vector3(1322.5780029297, -1657.7045898438, 51.2),
            vector3(1319.2043457031, -1653.0885009766, 51.2)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-1154.01, -1425.31, 4.95, 23.21),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1152.7110595703, -1422.8382568359, 4.95),
            vector3(-1149.0043945312, -1428.1975097656, 4.95),
            vector3(-1154.6730957031, -1431.1898193359, 4.95),
            vector3(-1157.7064208984, -1426.3433837891, 4.95)
        }
    },
    {
        type = "tattoo",
        coords = vector4(322.62, 180.34, 103.59, 156.2),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(319.28741455078, 179.9383392334, 103.59),
            vector3(321.537109375, 186.04516601562, 103.59),
            vector3(327.24526977539, 183.12303161621, 103.59),
            vector3(325.01351928711, 177.8542175293, 103.59)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-3169.52, 1074.86, 20.83, 253.29),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-3169.5861816406, 1072.3740234375, 20.83),
            vector3(-3175.4802246094, 1075.0703125, 20.83),
            vector3(-3172.2041015625, 1080.5860595703, 20.83),
            vector3(-3167.076171875, 1078.0391845703, 20.83)
        }
    },
    {
        type = "tattoo",
        coords = vector4(1864.1, 3747.91, 33.03, 17.23),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1860.2752685547, 3750.1608886719, 33.03),
            vector3(1866.390625, 3752.8081054688, 33.03),
            vector3(1868.6164550781, 3747.3562011719, 33.03),
            vector3(1863.65234375, 3744.5034179688, 33.03)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-294.24, 6200.12, 31.49, 195.72),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-289.42239379883, 6198.68359375, 31.49),
            vector3(-294.69515991211, 6194.5366210938, 31.49),
            vector3(-298.23013305664, 6199.2451171875, 31.49),
            vector3(-294.1501159668, 6203.2700195312, 31.49)
        }
    },
    {
        type = "surgeon",
        coords = vector4(-656.9, 334.35, 88.02, 184.69),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-656.9, 334.35, 88.02),
        }
    },
}


Config.ClothingRooms = {
    {
        job = "police",
        coords = vector3(361.08, -1592.8, 25.45),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(361.08, -1592.8, 25.45),
        }
    },
    {
        job = "ambulance",
        coords = vector3(-662.85, 323.26, 92.74),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-662.85, 323.26, 92.74),
        }
    },
    {
        job = "ambulance",
        coords = vector3(-1527.69, 843.33, 181.59),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1527.69, 843.33, 181.59),
        }
    },
    {
        job = "prison",
        coords = vector3(1778.29, 2549.16, 45.8),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1778.29, 2549.16, 45.8),
        }
    },
    {
        job = "bcso",
        coords = vector3(1845.07, 3693.82, 34.27),
        size = vector3(4, 4, 2),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(1843.27, 3692.91, 34.27),
            vector3(1844.16, 3691.49, 34.27),
            vector3(1847.39, 3693.43, 34.27),
            vector3(1846.79, 3694.9, 34.27),
        }
    },
    {
        job = "sahp",
        coords = vector3(-438.13, 6012.29, 37.0),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-438.13, 6012.29, 37.0),
        }
    },
    {
        job = "firefighter",
        coords = vector3(1688.41, 3591.44, 35.62),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1688.41, 3591.44, 35.62),
        }
    },
    {
        job = "innout",
        coords = vector3(80.38, 295.89, 110.21),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(80.38, 295.89, 110.21),
        }
    },
    {
        job = "sals",
        coords = vector3(427.91, -1505.84, 29.32),
        size = vector3(2, 2, 2),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(427.91, -1505.84, 29.32),
        }
    },
    {
        job = "pizzathis",
        coords = vector3(810.34, -759.76, 31.27),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(810.34, -759.76, 31.27),
        }
    },
}


Config.PlayerOutfitRooms = {
    -- Sample outfit room config
    --[[ {
        job = "police",
        coords = vector4(364.68, -1592.86, 25.45, 317.42),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(364.68, -1592.86, 25.45),
        },
        citizenIDs = {}
    } ]]
}

Config.Outfits = {
    ["ambulance"] = {
        ["Male"] = {
            {
                name = "Basic",
                outfitData = {
                    ["arms"]        = { item = 169,  texture = 1 },  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 18, texture = 18 },  -- Jackets
                    --["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    --["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    --["accessory"]   = { item = 0, texture = 0 },  -- Neck
                    ---["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 106,  texture = 4 },  -- Pants
                    ["shoes"]       = { item = 12,  texture = 11 },  -- Shoes
                    ---["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ---["hat"]         = { item = 122, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
            },
        },
        ["Female"] = {
            {
                name = "Basic",
                outfitData = {
                    ["arms"]        = { item = 110, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 7, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 84, texture = 8 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 28,  texture = 2 },  -- Neck
                    ---["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 41,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 34,  texture = 1 },  -- Shoes
                    ---["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ---["hat"]         = { item = 121, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
        },
    },
    ["firefighter"] = {
        ["Male"] = {
            {
                name = "Uniform",
                outfitData = {
                    ["arms"]        = { item = 4,  texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 26, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 79, texture = 1 },  -- Jackets
                    --["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    --["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    --["accessory"]   = { item = 30, texture = 2 },  -- Neck
                    ---["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 10,  texture = 2 },  -- Pants
                    ["shoes"]       = { item = 26,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 0, texture = 0 },  -- Mask
                    ["hat"]         = { item = 4, texture = 1 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Fire Gear",
                outfitData = {
                    ["arms"]        = { item = 97,  texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 40, texture = 0 },  -- Jackets
                    --["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    --["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    --["accessory"]   = { item = 30, texture = 2 },  -- Neck
                    --["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 21,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 56,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 0, texture = 0 },  -- Mask
                    ["hat"]         = { item = 1, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Fire Gear BA",
                outfitData = {
                    ["arms"]        = { item = 97,  texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 157, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 40, texture = 0 },  -- Jackets
                    --["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    --["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    --["accessory"]   = { item = 30, texture = 2 },  -- Neck
                    --["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 21,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 56,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 47, texture = 0 },  -- Mask
                    ["hat"]         = { item = 1, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
        },
        ["Female"] = {
            {
                name = "Basic",
                outfitData = {
                    ["arms"]        = { item = 110, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 7, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 84, texture = 8 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 28,  texture = 2 },  -- Neck
                    ---["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 41,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 34,  texture = 1 },  -- Shoes
                    ---["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ---["hat"]         = { item = 121, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Polo",
                outfitData = {
                    ["arms"]        = { item = 110, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 7, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 84, texture = 8 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 28,  texture = 2 },  -- Neck
                    ---["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 41,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 34,  texture = 1 },  -- Shoes
                    ---["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ---["hat"]         = { item = 121, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Doctor",
                outfitData = {
                    ["arms"]        = { item = 110, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 7, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 84, texture = 8 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 0,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 28,  texture = 2 },  -- Neck
                    ---["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 41,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 34,  texture = 1 },  -- Shoes
                    ---["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ---["hat"]         = { item = 121, texture = 0 },  -- Hat
                    ---["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ---["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
        },
    },
    ["prison"] = {
        ["Male"] = {
            {
                name = "Shirt and Tie",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 79, texture = 0},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Full Uniform",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 84, texture = 1},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Open Jacket Uniform",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 37, texture = 4},  -- T Shirt
                    ["torso2"]      = { item = 78, texture = 1},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Winter Uniform",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 103, texture = 5},  -- T Shirt
                    ["torso2"]      = { item = 67, texture = 5},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 36, texture = 4},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
        },
        ["Female"] = {
            {
                name = "Main Uniform",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 79, texture = 0},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 79, texture = 0},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Trooper Tan",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 79, texture = 0},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Trooper Black",
                outfitData = {
                    ["arms"]        = { item = 4, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 79, texture = 0},  -- Jacket
                    ["pants"]       = { item = 33, texture = 0},  -- Pants
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["hat"]         = { item = 38, texture = 3},  -- Hat
                },
                grades = {0, 1, 2, 3, 4},
            },
        }
    },
    ["police"] = {
        ["Male"] = {
            {
                name = "LSPD Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 10, texture = 1},  -- Pants
                    ["arms"]        = { item = 108, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "LSPD Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 10, texture = 1},  -- Pants
                    ["arms"]        = { item = 108, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "LSPD Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 10, texture = 1},  -- Pants
                    ["arms"]        = { item = 110, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "LSPD Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 10, texture = 1},  -- Pants
                    ["arms"]        = { item = 110, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
        },
        ["Female"] = {
            {
                name = "LSPD Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 6, texture = 1},  -- Pants
                    ["arms"]        = { item = 107, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 119, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 191, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "LSPD Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 6, texture = 1},  -- Pants
                    ["arms"]        = { item = 107, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 119, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 191, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "LSPD Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 6, texture = 1},  -- Pants
                    ["arms"]        = { item = 112, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 119, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 191, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "LSPD Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 6, texture = 1},  -- Pants
                    ["arms"]        = { item = 112, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 119, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 191, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
        },
    },
    ["bcso"] = {
        ["Male"] = {
            -- Officer
            {
                name = "BCSO Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 6},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {0},
            },
            {
                name = "BCSO Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 6},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {0},
            },
            {
                name = "BCSO Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 6},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {0},
            },
            {
                name = "BCSO Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 6},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {0},
            },
            -- Senior Officer
            {
                name = "BCSO Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {1},
            },
            {
                name = "BCSO Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {1},
            },
            {
                name = "BCSO Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {1},
            },
            {
                name = "BCSO Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 1},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {1},
            },
            -- Corporal
            {
                name = "BCSO Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {2},
            },
            {
                name = "BCSO Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {2},
            },
            {
                name = "BCSO Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {2},
            },
            {
                name = "BCSO Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {2},
            },
            -- Sergeant
            {
                name = "BCSO Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 9},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {3},
            },
            {
                name = "BCSO Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 9},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {3},
            },
            {
                name = "BCSO Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 9},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {3},
            },
            {
                name = "BCSO Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 9},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {3},
            },
            -- Lieutenant
            {
                name = "BCSO Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 10},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {4},
            },
            {
                name = "BCSO Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 10},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {4},
            },
            {
                name = "BCSO Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 10},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {4},
            },
            {
                name = "BCSO Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 10},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {4},
            },
            -- Sheriff
            {
                name = "BCSO Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 11},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {5},
            },
            {
                name = "BCSO Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 108, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 11},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {5},
            },
            {
                name = "BCSO Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 11},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {5},
            },
            {
                name = "BCSO Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 0},  -- Pants
                    ["arms"]        = { item = 110, texture = 1},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 11},  -- Jacket
                    ["shoes"]       = { item = 122, texture = 3},  -- Shoes
                },
                grades = {5},
            },
        },
        ["Female"] = {
        }
    },
    ["sahp"] = {
        ["Male"] = {
            {
                name = "SAHP Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 12},  -- Pants
                    ["arms"]        = { item = 108, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 17, texture = 12},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "SAHP Long Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 12},  -- Pants
                    ["arms"]        = { item = 108, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 16, texture = 12},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "SAHP Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 12},  -- Pants
                    ["arms"]        = { item = 110, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 18, texture = 12},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
            {
                name = "SAHP Short Sleeve w/ Tie",
                outfitData = {
                    ["pants"]       = { item = 106, texture = 12},  -- Pants
                    ["arms"]        = { item = 110, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 142, texture = 0},  -- T Shirt
                    ["torso2"]      = { item = 19, texture = 12},  -- Jacket
                    ["shoes"]       = { item = 195, texture = 0},  -- Shoes
                    --["bag"]         = { item = 14, texture = 1},  -- Bag
                    --["hat"]         = { item = 34, texture = 0},  -- Hat
                    --["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    --["glass"]       = { item = 0, texture = 0},  -- Glasses
                    --["mask"]        = { item = 0, texture = 0},  -- Mask
                    --["vest"]        = { item = 0, texture = 0},  -- Body Vest
                },
                grades = {0, 1, 2, 3, 4, 5, 6},
            },
        },
        ["Female"] = {
        }
    },
}

Config.InitialPlayerClothes = {
    Male = {
        Model = "mp_m_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    },
    Female = {
        Model = "mp_f_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    }
}
