local _dummy, kmiFrame = ...; -- handles slash commands

local defaults = 1

local kmiFrame = CreateFrame("Frame", "KeyboardsMinimapIconsFrame");
kmiFrame:RegisterEvent("ADDON_LOADED");
kmiFrame:RegisterEvent("PLAYER_LOGOUT");
kmiFrame:RegisterEvent("PLAYER_ENTERING_WORLD");

kmiFrame.coloredText = "|caa2788e3KMI|r"
kmiFrame.coloredTextVerbose = "|caa2788e3Keyboard's Minimap Icons|r"

StaticPopupDialogs["KMI_ADDON_INCOMPATIBLE"] = {
	text = kmiFrame.coloredText .. ": You appear to be running an incompatible addon: |caaf5e042Derangement's Minimap Blips|r. This addon is no longer available for updates. Would you like to reload your UI and disable it?",
	button1 = "Yes",
	button2 = "No",
	OnAccept = function()
		if UnitAffectingCombat("player") == true then
			print(ERR_NOT_IN_COMBAT);
			return
		else
			DisableAddOn("DerangementMinimapBlips")
			ReloadUI()
		end
 	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
};

function kmiFrame.SetBlipTexture()
	if KMI_DB then
		if KMI_DB == 1 then
			Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons_Classic");
		end
	end
end

function kmiFrame.eventHandler(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == "KeyboardsMinimapIcons" then
		if not KMI_DB or type(KMI_DB) == "table" then 
			KMI_DB = defaults;
			kmiFrame.SetBlipTexture()
		end
		if KMI_DB == "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons_Vanilla" or
			KMI_DB == "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons_TBC" or
			KMI_DB == "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons_Wrath" or
			KMI_DB == "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons_Cata" then
				KMI_DB = 1
		end
	end
	if event == "PLAYER_ENTERING_WORLD" and IsAddOnLoaded("DerangementMinimapBlips") == true then
		StaticPopup_Show("KMI_ADDON_INCOMPATIBLE")
	end
	if event == "PLAYER_LOGOUT" then
		Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIconsAtlas");
	end
end

kmiFrame:SetScript("OnEvent",kmiFrame.eventHandler);


function kmiFrame:Print(...)
	local prefix = string.format(kmiFrame.coloredText .. ":");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

kmiFrame.commands = {
	["enable"] = function()
		kmiFrame.SetBlipTexture()
		kmiFrame:Print("Enabling " .. kmiFrame.coloredTextVerbose .. ".");
	end,

	["disable"] = function()
		Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIconsAtlas");
		kmiFrame:Print("Temporarily Disabling " .. kmiFrame.coloredTextVerbose .. ".")
	end,

	["default"] = function()
		KMI_DB = 1;
		kmiFrame.SetBlipTexture()
		kmiFrame:Print("Enabling " .. "|caaf5e042" .. "default" .. "|r" .. " option.");
	end,

	["help"] = function()
		kmiFrame:Print("Thank you for using " .. kmiFrame.coloredTextVerbose .. ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue.\nCommands available: " .. "|caaf5e042" .. "/kmi disable" .. "|r" .. " | " .. "|caaf5e042" .. "/kmi enable" .. "|r" .. " | " .. "|caaf5e042" .. "/kmi default" .. "|r" .. ".")
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
	SLASH_KMI1 = "/kmi"
	SlashCmdList.KMI = HandleSlashCommands;
end

local events = CreateFrame("Frame");
events:RegisterEvent("ADDON_LOADED");
events:SetScript("OnEvent", kmiFrame.init);