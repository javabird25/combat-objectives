local function findTeam(name)
    local teams = team.GetAll()

    for _, team in pairs(teams) do
        if team.Name == name then
            return team
        end
    end
end

local function editTeam(panel, team)
    panel
end

hook.Add("PopulateToolMenu", "Populate team manager menu", function()
    spawnmenu.AddToolMenuOption("Utilites", "Team manager", "teamManager", "Teams", nil, nil, function(panel)
        local teamList = vgui.Create("DListView", panel)
        teamList:SetMultiSelect(false)
        teamList:AddColumn("Team")

        for _, team in pairs(team.GetAllTeams()) do
            teamList:AddLine(team.Name)
        end

        AppList.OnRowSelected = function(index, row)
	        local selectedTeamName = row:GetColumnText(1)
            editTeam(panel, findTeam(selectedTeamName))
        end
        -- panel:AddItem()
    end)
end)
