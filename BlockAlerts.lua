-- Blocks achievement alerts and talking head frames

local function blockAchievementAlertsAndTalkingHeads()
    MuteSoundFile(569143)

    AlertFrame:UnregisterAllEvents()
    AlertFrame:Hide()
    AlertFrame:SetAlpha(0)

    TalkingHeadFrame:UnregisterAllEvents()
    TalkingHeadFrame:Hide()
    TalkingHeadFrame:SetAlpha(0)
end

local achievementAlertBlockerFrame = CreateFrame("Frame")
achievementAlertBlockerFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
achievementAlertBlockerFrame:SetScript("OnEvent", blockAchievementAlertsAndTalkingHeads)
