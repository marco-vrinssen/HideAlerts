-- Blocks achievement alerts and talking head frames

local function blockAlertFrames()
    MuteSoundFile(569143)

    AlertFrame:UnregisterAllEvents()
    AlertFrame:Hide()
    AlertFrame:SetAlpha(0)

    TalkingHeadFrame:UnregisterAllEvents()
    TalkingHeadFrame:Hide()
    TalkingHeadFrame:SetAlpha(0)
end

local alertBlockerFrame = CreateFrame("Frame")
alertBlockerFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
alertBlockerFrame:SetScript("OnEvent", blockAlertFrames)
