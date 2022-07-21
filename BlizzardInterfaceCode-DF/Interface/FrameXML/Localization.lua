
-- This is a symbol available for people who need to know the locale (separate from GetLocale())
LOCALE_zhCN = true;
USE_IME = true;
STATFRAME_STATTEXT_FONT_OVERRIDE = TextStatusBarText;
CLOCK_TICKER_Y_OVERRIDE = 3;
GUILD_APPLICANT_LEVEL_TEXT_Y_OVERRIDE = 1
FIRST_NUMBER_CAP_VALUE = 10000;
COLLAPSE_ORDER_HALL_FOLLOWER_ITEM_LEVEL_DISPLAY = true;

function Localize()
	-- Put all locale specific string adjustments here
end

function GarrisonBuildingAlertFrame_AdjustTextPositions(frame)
	frame.Title:SetPoint("TOP", 18, -16);
	frame.Name:SetPoint("TOP", frame.Title, "BOTTOM", 0, -7);
end

function GarrisonFollowerAlertFrame_AdjustTextPositions(frame)
	frame.Title:SetPoint("TOP", 20, -15);
	frame.Name:SetPoint("TOP", frame.Title, "BOTTOM", 0, -8);
end

function GarrisonShipFollowerAlertFrame_AdjustTextPositions(frame)
	frame.Title:SetPoint("TOP", 45, -13);
	frame.Name:SetPoint("TOP", frame.Title, "BOTTOM", 0, -6);
	frame.Class:SetPoint("TOP", frame.Name, "BOTTOM", 0, -1);
end

function GarrisonTalentAlertFrame_AdjustTextPositions(frame)
	frame.Name:SetPoint("TOP", frame.Title, "BOTTOM", 0, -5);
end

function LocalizeFrames()
	-- Put all locale specific UI adjustments here

	-- Hide profanity checkbox
	-- UIOptionsFrameCheckButton5:Hide();

	-- Adjust text in character and friends frame tabs
	for i=1, (CharacterFrame.numTabs or 0) do
		local tabName = "CharacterFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
		tabName = "FriendsFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
	end

	--Fix the positioning of the dropdown list
	WhoFrameDropDown:SetPoint("TOPLEFT", WhoFrameColumnHeader2, "TOPLEFT", -15, 1);

	-- Guild Member Detail Window Custom Sizing
	GUILD_DETAIL_NORM_HEIGHT = 222
	GUILD_DETAIL_OFFICER_HEIGHT = 285

	-- Mailframe tabs
	for i=1, (MailFrame.numTabs or 0) do
		local tabName = "MailFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
	end

	-- Mailbox Send Inputs
	SendMailNameEditBox:SetPoint("TOPLEFT", SendMailFrame, "TOPLEFT", 125, -30);
	SendMailNameEditBox:SetWidth(185);
	SendMailSubjectEditBoxMiddle:SetWidth(186);

	-- Chat Editbox
	ChatEdit_LanguageShow();

	local point, relativeTo, relativePoint, xOfs, yOfs;

	-- Player Frame
	point, relativeTo, relativePoint, xOfs, yOfs = PlayerFrameHealthBarText:GetPoint();
	PlayerFrameHealthBarText:SetPoint(point, relativeTo, relativePoint, 50, 3);

	-- Pet Frame
	PetFrameHealthBarText:SetPoint("CENTER", PetFrameHealthBarText:GetParent(), "TOPLEFT", 82, -26);
	PetFrameManaBarText:SetPoint("CENTER", PetFrameManaBarText:GetParent(), "TOPLEFT", 82, -34);

	-- Party Frame
	for i=1, MAX_PARTY_MEMBERS do
		local currPartyMemberBarText;

		-- adjust health bar text
		currPartyMemberBarText = _G["PartyMemberFrame"..i.."HealthBarText"];
		point, relativeTo, relativePoint, xOfs, yOfs = currPartyMemberBarText:GetPoint();
		currPartyMemberBarText:SetPoint(point, relativeTo, relativePoint, 20, 11);

		-- adjust mana bar text
		currPartyMemberBarText = _G["PartyMemberFrame"..i.."ManaBarText"];
		point, relativeTo, relativePoint, xOfs, yOfs = currPartyMemberBarText:GetPoint();
		currPartyMemberBarText:SetPoint(point, relativeTo, relativePoint, 20, 2);
	end

	-- Set range indicator for ActionBar. The text on action buttons is switched as needed so changing it here is enough.
	RANGE_INDICATOR = "•";

	-- Equipment Manager
	GearManagerDialogPopup.BorderBox.NameText:SetPoint("TOPLEFT", 24, -18);
	GearManagerDialogPopup.BorderBox.ChooseIconText:SetPoint("TOPLEFT", 24, -66);

	-- Fix money display everywhere
	MONEY_TEXT_VADJUST = 2;

	-- Combat log config
	CombatConfigColorsExampleTitle:Hide();
	CombatConfigColorsExampleString1:SetPoint("TOPLEFT", 25, -16);
	CombatConfigFormattingExampleTitle:Hide();
	CombatConfigFormattingExampleString1:SetPoint("TOPLEFT", 15, -16);

	-- Friends
	FRIENDS_BUTTON_NORMAL_HEIGHT = 38;
	FRIENDS_BUTTON_LARGE_HEIGHT = 52;
	-- add friend
	ADDFRIENDFRAME_WOWHEIGHT = 232;
	ADDFRIENDFRAME_BNETHEIGHT = 310;
	AddFriendNameEditBox:SetPoint("TOP", 0, -144);

	MIN_CHARACTER_SEARCH = 1;

	--TradeFrame
	TradeFramePlayerEnchantText:SetPoint("TOPLEFT", TradeFrame, 15, -357);

	-- GuildInviterFrame
	GuildInviteFrameInviterName:SetPoint("TOP", GuildInviteFrame, 0, -22);
	GuildInviteFrameInviteText:SetPoint("TOP", GuildInviteFrameInviterName, 0, -16);
	GuildInviteFrameGuildName:SetPoint("TOP", GuildInviteFrameInviteText, 0, -10);

	-- Garrison Alerts
	GarrisonBuildingAlertSystem:AddLocalizationHook(GarrisonBuildingAlertFrame_AdjustTextPositions);
	GarrisonFollowerAlertSystem:AddLocalizationHook(GarrisonFollowerAlertFrame_AdjustTextPositions);
	GarrisonShipFollowerAlertSystem:AddLocalizationHook(GarrisonShipFollowerAlertFrame_AdjustTextPositions);
	GarrisonTalentAlertSystem:AddLocalizationHook(GarrisonTalentAlertFrame_AdjustTextPositions);
end


