local _, L = ...; -- Let's use the private table passed to every .lua 

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(L, {__index=defaultFunc});

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- The EU English game client also
	-- uses the US English locale code.
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"

return end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"


return end

if LOCALE == "deDE" then
	-- German translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"


return end

if LOCALE == "frFR" then
	-- French translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"



return end

if LOCALE == "itIT" then
	-- French translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"



return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"



-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"




return end

if LOCALE == "koKR" then
	-- Korean translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"




return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"



return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon"
	L["DisableAddon"] = "This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to"
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabling"] = "Enabling " -- includes space
	L["defaultDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes." -- includes space
	L["circleDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes." -- includes space
	L["circleShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["blueDescript"] = " option. This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes." -- includes space
	L["blueShinyDescript"] = " option. This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes." -- includes space
	L["ThanksForUsing"] = "Thank you for using " -- includes space
	L["ThisAddonReplaces"] = ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue." -- includes space
	L["InvalidCommand"] = "Invalid sub-command for " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["Use"] = ". Use " -- includes space
	L["or"] = " or " -- includes space
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily diabling " -- includes space
	L["help"] = "help"




return end
