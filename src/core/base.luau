--!nocheck

--// Services
local insertService = game:GetService("InsertService")

--// Imports
local regui = require("@packages/ReGui.luau")
local esp = require("@modules/esp.luau")

--// Initialize
regui:Init({
	Prefabs = insertService:LoadLocalAsset(`rbxassetid://{regui.PrefabsId}`),
})

local window = regui:TabsWindow({
	Title = "Atom",
	Size = UDim2.fromOffset(300, 500),
})

return {
	interface = regui,
	window = window,

	tabs = {
		home = function(gameName)
			local tab = window:CreateTab({
				Name = "Home",
			})

            tab:Separator({
                Text = "Build Information",
            })

			tab:Label({
				Text = `Build Config: <b>{_P.cfg}</b>`,
                RichText = true,
			})
            tab:Label({
				Text = `Build Version: <b>{_P.vers}</b>`,
                RichText = true,
			})
            tab:Label({
				Text = `Build Generated: <b>{_P.genDate}</b>`,
                RichText = true,
			})
			
			return tab
		end,
		visuals = function()
			local tab = window:CreateTab({
				Name = "Visuals",
			})
			return tab
		end,
		settings = function()
			local tab = window:CreateTab({
				Name = "Settings",
			})
			return tab
		end,
	},
}
