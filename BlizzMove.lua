-- BlizzMmove, move the blizzard frames by yess
--if not _G.BlizzMove then BlizzMove = {} end
local BlizzMove = _G.BlizzMove

movableFrames = { GameMenuFrame, QuestFrame, FriendsFrame, GossipFrame, DressUpFrame, 
	MerchantFrame, HelpFrame, MailFrame, BankFrame, VideoOptionsFrame, InterfaceOptionsFrame, PVEFrame,
	LootFrame, RaidBrowserFrame, TradeFrame, TradeFrame, RaidBrowserFrame, QuestLogPopupDetailFrame, SUFWrapperFrame, TalkingHeadFramem, WorldMapFrame,
	ExtraActionBarFrame, TabardFrame, DestinyFrame, SplashFrame, LevelUpDisplay, ItemTextFrame,
	ContainerFrame1, ContainerFrame2, ContainerFrame3, ContainerFrame4, ContainerFrame5, ContainerFrame6, ContainerFrame7, ContainerFrame8, ContainerFrame9, ContainerFrame10, ContainerFrame11, ContainerFrame12, ContainerFrame13
}

movableFramesWithhandle = { ["CharacterFrame"] =  { PaperDollFrame, fff, ReputationFrame, TokenFrame, PetPaperDollFrameCompanionFrame, ReputationFrame } ,
	["WorldMapFrame"] = { WorldMapTitleButton }, ["MailFrame"] = { SendMailFrame },
	["ColorPickerFrame"] = { BlizzMove:CreateOwnHandleFrame(ColorPickerFrame, 132, 32, 117, 8, "ColorPickerFrame") },
	["SpellBookFrame"] = { BlizzMove:CreateOwnHandleFrame(SpellBookFrame, 445, 32, 85, 0, "SpellBookFrame") },
	--["ObjectiveTrackerFrame"] = { createQuestTrackerHandle() , ObjectiveTrackerFrame.BlocksFrame.QuestHeader, ObjectiveTrackerFrame.BlocksFrame.AchievementHeader, ObjectiveTrackerFrame.BlocksFrame.ScenarioHeader},
}

movableFramesLoD = {
	["Blizzard_AchievementUI"] = function() BlizzMove:SetMoveHandle(AchievementFrame, AchievementFrameHeader) end,
	["Blizzard_ArchaeologyUI"] = function() BlizzMove:SetMoveHandle(ArchaeologyFrame) end,
	["Blizzard_ArtifactUI"] = function() BlizzMove:SetMoveHandle(ArtifactRelicForgeFrame); BlizzMove:SetMoveHandle(ArtifactFrame) end,
	["Blizzard_AuctionUI"] = function() BlizzMove:SetMoveHandle(AuctionFrame) end,
	["Blizzard_AzeriteEssenceUI"] = function() BlizzMove:SetMoveHandle(AzeriteEssenceUI) end,
	["Blizzard_AzeriteRespecUI"] = function() BlizzMove:SetMoveHandle(AzeriteRespecFrame) end,
	["Blizzard_AzeriteUI"] = function() BlizzMove:SetMoveHandle(AzeriteEmpoweredItemUI) end,
	["Blizzard_BarbershopUI"] = function() BlizzMove:SetMoveHandle(BarberShopFrame) end,
	["Blizzard_BindingUI"] = function() BlizzMove:SetMoveHandle(KeyBindingFrame) end,
	["Blizzard_BlackMarketUI"] = function() BlizzMove:SetMoveHandle(BlackMarketFrame) end,
	["Blizzard_Calendar"] = function() BlizzMove:SetMoveHandle(CalendarFrame) end,
	["Blizzard_Collections"] = function() BlizzMove:SetMoveHandle(CollectionsJournal); BlizzMove:SetMoveHandle(WardrobeFrame) end,
	["Blizzard_Communities"] = function() BlizzMove:SetMoveHandle(CommunitiesFrame) end,
	["Blizzard_DeathRecap"] = function() BlizzMove:SetMoveHandle(DeathRecapFrame) end,
	["Blizzard_EncounterJournal"] = function() BlizzMove:SetMoveHandle(EncounterJournal, BlizzMove:CreateOwnHandleFrame(EncounterJournal, 775, 20, 0, 0, "EncounterJournal")) end,
	["Blizzard_FlightMap"] = function() BlizzMove:SetMoveHandle(FlightMapFrame) end,
	["Blizzard_GarrisonUI"] = function() BlizzMove:SetMoveHandle(GarrisonMissionFrame); BlizzMove:SetMoveHandle(GarrisonCapacitiveDisplayFrame); BlizzMove:SetMoveHandle(GarrisonLandingPage) end, --GarrisonBuildingFrame
	["Blizzard_GuildBankUI"] = function() BlizzMove:SetMoveHandle(GuildBankFrame) end,
	["Blizzard_GuildUI"] = function() BlizzMove:SetMoveHandle(GuildFrame); BlizzMove:SetMoveHandle(GuildInfoFrame); BlizzMove:SetMoveHandle(GuildLogFrame); BlizzMove:SetMoveHandle(GuildNewsFrame); BlizzMove:SetMoveHandle(GuildRewardsFrame); BlizzMove:SetMoveHandle(GuildRosterFrame) end, --acting weird, can't do guild title
	["Blizzard_InspectUI"] = function() BlizzMove:SetMoveHandle(InspectFrame) end,
	["Blizzard_IslandsQueueUI"] = function() BlizzMove:SetMoveHandle(IslandsQueueFrame) end,
	["Blizzard_ItemAlterationUI"] = function() BlizzMove:SetMoveHandle(TransmogrifyFrame) end,
	["Blizzard_ItemSocketingUI"] = function() BlizzMove:SetMoveHandle(ItemSocketingFrame) end,
	["Blizzard_LookingForGuildUI"] = function() BlizzMove:SetMoveHandle(LookingForGuildFrame) end,
	["Blizzard_MacroUI"] = function() BlizzMove:SetMoveHandle(MacroFrame) end,
	["Blizzard_ObliterumUI"] = function() BlizzMove:SetMoveHandle(ObliterumForgeFrame) end,
	["Blizzard_OrderHallUI"] = function() BlizzMove:SetMoveHandle(OrderHallMissionFrame) end,
	["Blizzard_PartyPoseUI"] = function() BlizzMove:SetMoveHandle(PartyPoseFrame) end,
	["Blizzard_ReforgingUI"] = function() BlizzMove:SetMoveHandle(ReforgingFrame, ReforgingFrameInvisibleButton) end,
	["Blizzard_ScrappingMachineUI"] = function() BlizzMove:SetMoveHandle(ScrappingMachineFrame) end,
	["Blizzard_TalentUI"] = function() 	BlizzMove:SetMoveHandle(PlayerTalentFrame) end,
	["Blizzard_TalkingHeadUI"] = function() BlizzMove:SetMoveHandle(TalkingHeadFrame) end,
	["Blizzard_TradeSkillUI"] = function() BlizzMove:SetMoveHandle(TradeSkillFrame) end,
	["Blizzard_TrainerUI"] = function() BlizzMove:SetMoveHandle(ClassTrainerFrame) end,
	["Blizzard_VoidStorageUI"] = function() BlizzMove:SetMoveHandle(VoidStorageFrame) end,
	["Blizzard_WarboardUI"] = function() BlizzMove:SetMoveHandle(WarboardQuestChoiceFrame) end,
	["Blizzard_WarfrontsPartyPoseUI"] = function() BlizzMove:SetMoveHandle(WarfrontsPartyPoseFrame) end,
}

function movableFramesLoD:BlizzMove()
	for _, frame in pairs(movableFrames) do
			BlizzMove:SetMoveHandle(frame)
	end

	for frame, handles in pairs(movableFramesWithhandle) do
			for index, handle in pairs(handles) do
					BlizzMove:SetMoveHandle(_G[frame],handle)
			end
	end
end

local function ADDON_LOADED(self, event, addonName)
	--@debug@
 	--print(addonName)
  	--@end-debug@
	if movableFramesLoD[addonName] then movableFramesLoD[addonName]() end
end

local frame = CreateFrame("Frame")
frame:SetScript("OnEvent", ADDON_LOADED)
frame:RegisterEvent("ADDON_LOADED")
