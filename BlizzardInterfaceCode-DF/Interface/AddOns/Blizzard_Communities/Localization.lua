-- This file is executed at the end of addon load

-- Guild Member Detail Window Custom Sizing
COMMUNITIES_GUILD_DETAIL_NORM_HEIGHT = 206;
COMMUNITIES_GUILD_DETAIL_OFFICER_HEIGHT = 264;

-- smaller icon for rewards list because of larger font
COMMUNITIES_GUILD_REWARDS_ACHIEVEMENT_ICON = " |TInterface\\AchievementFrame\\UI-Achievement-Guild:12:11:0:1:512:512:324:344:67:85|t ";

-- more room for rewards
COMMUNITIES_GUILD_REWARDS_BUTTON_HEIGHT = 57;
for _, button in pairs(CommunitiesFrame.GuildBenefitsFrame.Rewards.RewardsContainer.buttons) do
	button:SetHeight(COMMUNITIES_GUILD_REWARDS_BUTTON_HEIGHT);
end
CommunitiesFrame.GuildBenefitsFrame.Rewards.RewardsContainer.buttonHeight = COMMUNITIES_GUILD_REWARDS_BUTTON_HEIGHT;

CommunitiesFrame.GuildBenefitsFrame.FactionFrame.Label:SetPoint("BOTTOMLEFT", 0, 1);
