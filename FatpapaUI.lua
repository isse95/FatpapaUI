local frame = CreateFrame("Frame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function()
--player frame--
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PlayerPortraitCornerIcon:SetAlpha(0);
    PaladinPowerBarFrame:Hide();--SetAlpha(0);

    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture:Hide();
    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture:SetAlpha(0)
    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture.Show = function() end

    PlayerFrame:UnregisterEvent('UNIT_COMBAT');
    PlayerName:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 12, "OUTLINE, MONOCHROME");
    PlayerName:SetTextColor(69, 69, 69, 1);
    PlayerFrame.PlayerFrameContainer.PlayerPortrait:SetAlpha(0);
    PlayerFrame.PlayerFrameContainer.PlayerPortraitMask:SetAlpha(0);
    PlayerFrameHealthBar:SetHeight(36);
	
    PlayerFrameHealthBarTextRight:ClearAllPoints();
    PlayerFrameHealthBarTextRight:SetPoint("TOP", PlayerFrame, "TOP", 76, -53);
    PlayerFrame.PlayerFrameContainer.FrameTexture:SetAlpha(0);
    PlayerFrameHealthBarTextLeft:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 12,
        "OUTLINE, MONOCHROME");


    PlayerFrameHealthBarTextRight:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 12,
        "OUTLINE, MONOCHROME");
    PlayerFrame:SetScale(2);
    PlayerFrameManaBar.texture:SetAlpha(0);
    PlayerFrameManaBarTextRight:SetAlpha(0);
    PlayerFrameManaBarTextLeft:SetAlpha(0);
    PlayerLevelText:SetAlpha(0);
    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture:SetAlpha(0);
    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture.SetAlpha = function() end;
    PlayerName:ClearAllPoints();
    PlayerName:SetPoint("TOP", PlayerFrame, "TOP", 20, -35);
    PlayerFrameHealthBarTextLeft:ClearAllPoints();
    PlayerFrameHealthBarTextLeft:SetPoint("TOP", PlayerFrame, "TOP", -13, -53);
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PlayerRestLoop.RestTexture:SetPoint('BOTTOMLEFT', PlayerFrame, 'BOTTOMLEFT', 200, 55);
	PlayerFrame.PlayerFrameContainer.FrameFlash:SetAlpha(0);
	TotemFrameTotem1:Hide();--SetAlpha(0);
	PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.AttackIcon:SetAlpha(0);
	PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigeBadge:SetAlpha(0);
	PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigePortrait:SetAlpha(0);
--	PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.ManaBarArea:Hide(); --not this
	--PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.HealthBarArea:Hide(); ---not this, trying to delete clickable area
	--	PlayerFrame.PlayerFrameContent.PlayerFrameContentMain:Hide();
		--PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual:Hide();
		--	PlayerFrame.PlayerFrameContainer:Hide();
		--PlayerFrame.PlayerFrameContent:Hide();
			--PlayerFrame:EnableMouse();
			--PlayerFrame:EnableMouse(true);
	--target frame--
	
	
	--TargetFrame.TargetFrameContainer:SetAlpha(0);
	TargetFrame.TargetFrameContainer:Hide();
	TargetFrame.TargetFrameContent.TargetFrameContentContextual.PvpIcon:SetAlpha(0);
	--TargetFrame.TargetFrameContent.TargetFrameContentContextual:Hide();
	TargetFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide(0);
	TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigeBadge:SetAlpha(0);
	TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigePortrait:SetAlpha(0);
	TargetFrame.TargetFrameContent.TargetFrameContentMain.Name:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 11, "OUTLINE, MONOCHROME");
	TargetFrame.TargetFrameContent.TargetFrameContentMain.Name:SetTextColor(69, 69, 69, 1);
	TargetFrame.TargetFrameContent.TargetFrameContentMain.LevelText:SetAlpha(0);
	TargetFrame.TargetFrameContent.TargetFrameContentMain.HealthBar.LeftText:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 12,
        "OUTLINE, MONOCHROME");
   	TargetFrame.TargetFrameContent.TargetFrameContentMain.HealthBar.RightText:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 12,
        "OUTLINE, MONOCHROME");
	TargetFrame.TargetFrameContent.TargetFrameContentMain.ManaBar.LeftText:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 9,
        "OUTLINE, MONOCHROME");
   	TargetFrame.TargetFrameContent.TargetFrameContentMain.ManaBar.RightText:SetFont("Interface\\AddOns\\Details\\fonts\\Oswald-Regular.ttf", 9,
        "OUTLINE, MONOCHROME");
	TargetFrame.TargetFrameContent.TargetFrameContentMain.ManaBar.RightText:SetPoint("CENTER", TargetFrame, "CENTER", 5, -16);
	TargetFrame.TargetFrameContent.TargetFrameContentMain.ManaBar.LeftText:ClearAllPoints();
	TargetFrame.TargetFrameContent.TargetFrameContentMain.ManaBar.LeftText:SetPoint("LEFT", TargetFrame, "CENTER", -90, -16);
	TargetFrame:SetScale(2);

	TargetFrame.TargetFrameContent.TargetFrameContentMain.Name:ClearAllPoints();
	TargetFrame.TargetFrameContent.TargetFrameContentMain.Name:SetPoint("TOP", TargetFrame, "TOP", -45, -25);
	--TargetFrame.TargetFrameContent.TargetFrameContentMain.HealthBar.HealthBarTexture:SetScale(1.5);
	--TargetFrame.TargetFrameContent.TargetFrameContentMain.HealthBar:SetFrameStrata(BACKGROUND)
	--TargetFrame.TargetFrameContent.TargetFrameContentContextual.HighLevelTexture:SetPoint("RIGHT", TargetFrame, "RIGHT", -5, 0);--
		--TargetFrame.TargetFrameContent.TargetFrameContentMain.HealthBar:SetHeight(56);  changes back when you select a new target--
	--TargetFrame.TargetFrameContent.TargetFrameContentMain.HealthBar.HealthBarTexture:SetTexture("Interface\\AddOns\\FatpapaUI\\textures\\FatpapaBackground.blp")--



end)
