local function eventHandler(self,event,...)
	Minimap:SetBlipTexture("Interface\\AddOns\\KeyboardsMinimapIcons\\KeyboardsMinimapIcons");
end

local frame=CreateFrame("Frame","KeyboardsMinimapIconsFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:SetScript("OnEvent",eventHandler);