local _, L = ...

local KMItextures = {
	default = {
		textureNum = 1,
		textureName = "Default",
		texture = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons",
	},
	NodesAsCircles = {
		textureNum = 2,
		textureName = "Circles",
		texture = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\NodesAsCircles",
	},
	NodesAsCirclesSG = {
		textureNum = 3,
		textureName = "Circles Shiny",
		texture = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\NodesAsCircles_ShinyG",
	},
	BlueNodes = {
		textureNum = 4,
		textureName = "Blue",
		texture = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\BlueNodes",
	},
	BlueNodesSG = {
		textureNum = 5,
		textureName = "Blue Shiny",
		texture = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\BlueNodes_ShinyG",
	},
	GameDefault = {
		textureNum = 6,
		textureName = "Game Default",
		texture = "Interface\\MINIMAP\\ObjectIconsAtlas",
	},

};

local defaultsTable = {
	texture = KMItextures.default.textureNum
};



local kmiFrame = CreateFrame("Frame", "KeyboardsMinimapIconsFrame");
kmiFrame:RegisterEvent("ADDON_LOADED");
kmiFrame:RegisterEvent("PLAYER_LOGOUT");
kmiFrame:RegisterEvent("PLAYER_ENTERING_WORLD");

kmiFrame.coloredText = "|caa2788e3"..L["KMI"].."|r"
kmiFrame.coloredTextVerbose = "|caa2788e3"..L["KMIVerbose"].."|r"

local function Print(...)
	local prefix = string.format(kmiFrame.coloredText .. ":");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

StaticPopupDialogs["KMI_ADDON_INCOMPATIBLE"] = {
	text = string.format("|caaf5e042"..L["DerangementMinimapBlips"].."|r",kmiFrame.coloredText .. ": "..L["IncompatibleFound"]),
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		if UnitAffectingCombat("player") == true then
			Print(ERR_NOT_IN_COMBAT);
			return
		else
			C_AddOns.DisableAddOn("DerangementMinimapBlips")
			ReloadUI()
		end
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
};

function kmiFrame.DateChecker()
	local CurrentPatch = select(1, GetBuildInfo())
	local AddonPatch = "12.0.1"


	StaticPopupDialogs["KMI_ADDON_OUTOFDATE"] = {
		text = kmiFrame.coloredTextVerbose .. ": "..L["CurrentVersion"].." (" .. AddonPatch .. ") "..L["NotRecognized"]..L["UpdateTo"].. CurrentPatch,
		button1 = OKAY,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	};

	if CurrentPatch == AddonPatch then -- verify this is the current build, because pretty much every major build breaks the addon
		for k, v in pairs(KMItextures) do
			if KMI_DB["texture"] == v["textureNum"] then
				Minimap:SetBlipTexture(v["texture"]);
			end
		end
	else
		StaticPopup_Show("KMI_ADDON_OUTOFDATE")
	end
end

function kmiFrame.SetTexture()
	if not KMI_DB then 
		KMI_DB = CopyTable(defaultsTable);
		kmiFrame.DateChecker()
	else
		for k, v in pairs(KMItextures) do
			if KMI_DB == v["texture"] then
				Print(L["ConvertingData"])
				KMI_DB = {}
				KMI_DB["texture"] = (v["textureNum"])
			end
		end
		kmiFrame.DateChecker()
	end
end

function kmiFrame.SetupAddonSettings()
	local function OnSettingChanged(_, setting, value)
		local variable = setting:GetVariable()

		if strsub(variable, 1, 3) == "KMI_" then
			variable = strsub(variable, 4); -- remove our prefix so it matches existing savedvar keys
		end

		kmiFrame.SetTexture()
	end

	local addonName = C_AddOns.GetAddOnMetadata("KeyboardsMinimapIcons", "Title")
	kmiFrame.category, kmiFrame.layout = Settings.RegisterVerticalLayoutCategory(addonName)
	--local subcategory, layout2 = Settings.RegisterVerticalLayoutSubcategory(category, "my very own subcategory")

	--layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(string.format(L["Version"], GetAddOnMetadata("DragonRider", "Version"))));

	--layout:AddInitializer(CreateSettingsListSectionHeaderInitializer("Texture Select"));

	local CreateDropdown = Settings.CreateDropdown or Settings.CreateDropDown
	local CreateCheckbox = Settings.CreateCheckbox or Settings.CreateCheckBox

	local function RegisterSetting(variableKey, defaultValue, name)
		local uniqueVariable = "KMI_" .. variableKey; -- these have to be unique or calamity ensues, savedvars will be unaffected

		local setting;
		setting = Settings.RegisterAddOnSetting(kmiFrame.category, uniqueVariable, variableKey, KMI_DB, type(defaultValue), name, defaultValue);

		setting:SetValue(KMI_DB[variableKey]);
		Settings.SetOnValueChangedCallback(uniqueVariable, OnSettingChanged);

		return setting;
	end

	do
		local variable = "texture"
		local defaultValue = 1  -- Corresponds to "Option 1" below.
		local name = L["MinimapTexture"]
		local tooltip = L["MinimapTextureTT"]

		local function GetOptions()
			local container = Settings.CreateControlTextContainer()
			container:Add(1, L["Default"], L["defaultDescript"])
			container:Add(2, L["NodesAsCircles"], L["circleDescript"])
			container:Add(3, L["NodesAsCirclesSG"], L["circleShinyDescript"])
			container:Add(4, L["BlueNodes"], L["blueDescript"])
			container:Add(5, L["BlueNodesSG"], L["blueShinyDescript"])
			return container:GetData()
		end

		local setting = RegisterSetting(variable, defaultValue, name);
		CreateDropdown(kmiFrame.category, setting, GetOptions, tooltip)
	end

	Settings.RegisterAddOnCategory(kmiFrame.category)
end

function kmiFrame.eventHandler(self, event, arg1)
	--Minimap:SetBlipTexture(defaultsTable.texture);
	if event == "ADDON_LOADED" and arg1 == "KeyboardsMinimapIcons" then

		kmiFrame.SetTexture()
		kmiFrame.SetupAddonSettings()
	end
	if event == "PLAYER_ENTERING_WORLD" and C_AddOns.IsAddOnLoaded("DerangementMinimapBlips") == true then
		StaticPopup_Show("KMI_ADDON_INCOMPATIBLE")
	end
	if event == "PLAYER_LOGOUT" then
		Minimap:SetBlipTexture(KMItextures.GameDefault["texture"]);
	end
end

kmiFrame:SetScript("OnEvent",kmiFrame.eventHandler);



kmiFrame.commands = {
	[L["enable"]] = function()
		kmiFrame.SetTexture()
		Print(L["Enabling"] .. kmiFrame.coloredTextVerbose);
	end,

	[L["disable"]] = function()
		Minimap:SetBlipTexture(KMItextures.GameDefault["texture"]);
		Print(L["TempDisable"] .. kmiFrame.coloredTextVerbose)
	end,

	[L["default"]] = function()
		KMI_DB = CopyTable(defaultsTable);
		kmiFrame.SetTexture()
		Print(L["Enabled"] .. " |caaf5e042" .. L["default"] .. "|r" .. " - " .. L["defaultDescript"]);
	end,

	[L["circle"]] = function(subCommand)
		if not subCommand or subCommand == "" then
			KMI_DB["texture"] = KMItextures.NodesAsCircles.textureNum;
			kmiFrame.SetTexture()
			Print(L["Enabled"] .. " |caaf5e042" .. L["circle"] .. "|r" .. " - " .. L["circleShinyDescript"]);
		elseif subCommand == L["shiny"] then
			KMI_DB["texture"] = KMItextures.NodesAsCirclesSG.textureNum;
			kmiFrame.SetTexture()
			Print(L["Enabled"] .. " |caaf5e042" .. L["circle"] .. " " .. L["shiny"] .. "|r" .. " - " .. L["circleShinyDescript"]);
		else

			Print(L["InvalidCommand"].. "|caaf5e042" .. L["slashkmi"].." "..L["circle"] .. "|r".. " | " .. "|caaf5e042" .. L["slashkmi"].." "..L["circle"] .. " " .. L["shiny"] .. "|r");
		end
	end,

	[L["blue"]] = function(subCommand)
		if not subCommand or subCommand == "" then
			KMI_DB["texture"] = KMItextures.BlueNodes.textureNum;
			kmiFrame.SetTexture()
			Print(L["Enabled"] .. " |caaf5e042" .. L["blue"] .. "|r" .. " - " .. L["blueDescript"]);
		elseif subCommand == L["shiny"] then
			KMI_DB["texture"] = KMItextures.BlueNodesSG.textureNum;
			kmiFrame.SetTexture()
			Print(L["Enabled"] .. " |caaf5e042" .. L["blue"] .. " " .. L["shiny"] .. "|r" .. " - " .. L["blueShinyDescript"]);
		else
			Print(L["InvalidCommand"].. "|caaf5e042" .. L["slashkmi"].." "..L["blue"] .. "|r".. " | " .. "|caaf5e042" .. L["slashkmi"].." "..L["blue"] .. " " .. L["shiny"] .. "|r");
		end
	end,

	[L["help"]] = function()
		local concatenatedString
		for k, v in pairs(kmiFrame.commands) do
			if concatenatedString == nil then
				concatenatedString = "|caaf5e042"..k.."|r"
			else
				concatenatedString = concatenatedString .. " | ".. "|caaf5e042"..k.."|r"
			end
			
		end
		local intro = string.format(L["ThanksForUsing"], kmiFrame.coloredTextVerbose)
		Print(
			intro..
			"\n"..L["CommandsAvailable"].. " " .. concatenatedString..
			"\n"..L["AdditionalCommands"].. " |caaf5e042" .. L["slashkmi"].." "..L["circle"] .. " " .. L["shiny"] .. "|r" .. " | " .. "|caaf5e042" .. L["slashkmi"].." "..L["blue"] .. " " .. L["shiny"] .. "|r"
		);
	end
};

local function HandleSlashCommands(str)
	if (#str == 0) then
		kmiFrame.commands.help();
		return;
		end

		local args = {};
		for _dummy, arg in ipairs({ string.split(' ', str) }) do
			if (#arg > 0) then
				table.insert(args, arg);
				end
			end

			local path = kmiFrame.commands; -- required for updating found table.

			for id, arg in ipairs(args) do

			if (#arg > 0) then --if string length is greater than 0
			arg = arg:lower();          
			if (path[arg]) then
				if (type(path[arg]) == "function") then
					-- all remaining args passed to our function!
					path[arg](select(id + 1, unpack(args))); 
					return;                 
				elseif (type(path[arg]) == "table") then
					path = path[arg]; -- another sub-table found!
				end
				else
					kmiFrame.commands.help();
				return;
			end
		end
	end
end

function kmiFrame:init(event, name)
	if (name ~= "KeyboardsMinimapIcons") then return end
	SLASH_KMI1 = L["slashkmi"];
	SlashCmdList.KMI = HandleSlashCommands;
end

local events = CreateFrame("Frame");
events:RegisterEvent("ADDON_LOADED");
events:SetScript("OnEvent", kmiFrame.init);