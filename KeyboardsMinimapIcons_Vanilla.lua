local function eventHandler(self,event,...)
	Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\KeyboardsMinimapIcons");
end

local frame=CreateFrame("Frame","KeyboardsMinimapIconsFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:SetScript("OnEvent",eventHandler);

SLASH_KMI_ENABLE1 = "/kmienable"
SlashCmdList["KMI_ENABLE"] = function(msg)
	Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\KeyboardsMinimapIcons");
	print("|caa2788e3KMI|r: Enabling Keyboard's Minimap Icons");
end

SLASH_KMI_DISABLE1 = "/kmidisable"
SlashCmdList["KMI_DISABLE"] = function(msg)
	Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIconsAtlas");
	print("|caa2788e3KMI|r: Temporarily Disabling Keyboard's Minimap Icons")
end