local _dummy, kmiFrame = ...; -- handles slash commands

local defaultsTable = {"Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons",
}

local kmiFrame = CreateFrame("Frame", "KeyboardsMinimapIconsFrame");
kmiFrame:RegisterEvent("ADDON_LOADED");
kmiFrame:RegisterEvent("PLAYER_LOGOUT");

function kmiFrame.eventHandler(self, event, arg1)
	--Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons");
	if event == "ADDON_LOADED" and arg1 == "KeyboardsMinimapIcons" then
		if not KMI_DB then
			KMI_DB = defaultsTable;
		else
			Minimap:SetBlipTexture(KMI_DB);
		end
	end
	if event == "PLAYER_LOGOUT" then
		Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIconsAtlas");
	end
end

kmiFrame:SetScript("OnEvent",kmiFrame.eventHandler);


kmiFrame.coloredText = "|caa2788e3KMI|r"
kmiFrame.coloredTextVerbose = "|caa2788e3Keyboard's Minimap Icons|r"


function kmiFrame:Print(...)
	local prefix = string.format(kmiFrame.coloredText .. ":");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

kmiFrame.commands = {
	["enable"] = function()
		Minimap:SetBlipTexture(KMI_DB[1]);
		kmiFrame:Print("Enabling " .. kmiFrame.coloredTextVerbose .. ".");
	end,

	["disable"] = function()
		Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIconsAtlas");
		kmiFrame:Print("Temporarily Disabling " .. kmiFrame.coloredTextVerbose .. ".")
	end,

	["default"] = function()
		Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons");
		KMI_DB = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\KeyboardsMinimapIcons";
		kmiFrame:Print("Enabling " .. "|caaf5e042" .. "default" .. "|r" .. " option.");
	end,

	["circle"] = function()
		Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\NodesAsCircles");
		KMI_DB = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\NodesAsCircles";
		kmiFrame:Print("Enabling " .. "|caaf5e042" .. "circle" .. "|r" .. " option.");
	end,

	["blue"] = function()
		Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\BlueNodes");
		KMI_DB = "Interface\\AddOns\\KeyboardsMinimapIcons\\tex\\BlueNodes";
		kmiFrame:Print("Enabling " .. "|caaf5e042" .. "blue" .. "|r" .. " option.");
	end,

	["help"] = function()
		kmiFrame:Print("Thank you for using " .. kmiFrame.coloredTextVerbose .. ". This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue.\nCommands available: " .. "|caaf5e042" .. "/kmi disable" .. "|r" .. " | " .. "|caaf5e042" .. "/kmi enable" .. "|r" .. " | " .. "|caaf5e042" .. "/kmi default" .. "|r" .. " | " .. "|caaf5e042" .. "/kmi circle" .. "|r" .. " | " .. "|caaf5e042" .. "/kmi blue" .. "|r" .. ".")
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