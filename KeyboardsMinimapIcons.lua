local addonName, L = ...

local kmiFrame = CreateFrame("Frame", "KeyboardsMinimapIconsFrame")
kmiFrame:RegisterEvent("ADDON_LOADED")
kmiFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

kmiFrame.coloredText = "|caa2788e3"..(L["KMI"]).."|r"
kmiFrame.coloredTextVerbose = "|caa2788e3"..(L["KMIVerbose"]).."|r"

local function Print(...)
	local prefix = string.format(kmiFrame.coloredText .. ":")
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...))
end

StaticPopupDialogs["KMI_ADDON_RETIRED"] = {
	text = kmiFrame.coloredTextVerbose .. "\n\n"..string.format(L["AddonIsRetired"], L["KMIVerbose"]),
	button1 = OKAY,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}

function kmiFrame.eventHandler(self, event, arg1)
	if event == "ADDON_LOADED" and arg1 == addonName then
		if type(KMI_DB) ~= "table" then 
			KMI_DB = {}
		end
	end
	
	if event == "PLAYER_ENTERING_WORLD" then
		StaticPopup_Show("KMI_ADDON_RETIRED")
		Print(L["AddonIsRetired"])
	end
end

kmiFrame:SetScript("OnEvent", kmiFrame.eventHandler)

local function HandleSlashCommands(str)
	StaticPopup_Show("KMI_ADDON_RETIRED")
end

function kmiFrame:init(event, name)
	if (name ~= addonName) then return end
	SLASH_KMI1 = L["slashkmi"]
	SlashCmdList.KMI = HandleSlashCommands
end

local events = CreateFrame("Frame")
events:RegisterEvent("ADDON_LOADED")
events:SetScript("OnEvent", kmiFrame.init)