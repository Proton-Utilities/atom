--!nocheck

--// Services
local insertService = game:GetService("InsertService")

--// Imports
local regui = require("@packages/ReGui")
local esp = require("@modules/esp")

--// Initialize
regui:Init({
	Prefabs = insertService:LoadLocalAsset("rbxassetid://" .. regui.PrefabsId),
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

			do -- Build information
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
			end

			do -- User information
				tab:Separator({
					Text = "User Information",
				})

				tab:Label({
					Text = `Username: <b>{atomicsec.username}</b>`,
					RichText = true,
				})
				tab:Label({
					Text = `User Id: <b>{atomicsec.userid}</b>`,
					RichText = true,
				})
				tab:Label({
					Text = `Note: <b>{atomicsec.note}</b>`,
					RichText = true,
				})
				tab:Label({
					Text = `Key expires: <b>{tostring(atomicsec.expiry)}</b>`,
					RichText = true,
				})
				tab:Label({
					Text = `Premium: <b>{tostring(atomicsec.is_premium)}</b>`,
					RichText = true,
				})
			end
			
			return tab
		end,
		visuals = function()
			local tab = window:CreateTab({
				Name = "Visuals",
			})

			if _P.cfg == "Debug" then
				esp.Shared.IncludeLocalPlayer = true
			end

			local function doTeam(team, name)
				local header = tab:CollapsingHeader({
					Title = name,
				})

				header:Checkbox({
					Value = false,
					Label = "Enabled",
					Callback = function(self, value)
						team.Enabled = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Cham",
					Callback = function(self, value)
						team.Chams = value
					end,
				})

				--[[ header:Checkbox({
					Value = false,
					Label = "Skeleton",
					Callback = function(self, value)
						team.Skeleton = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Box",
					Callback = function(self, value)
						team.Box = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Box Fill",
					Callback = function(self, value)
						team.BoxFill = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Health Bar",
					Callback = function(self, value)
						team.HealthBar = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Corner Box",
					Callback = function(self, value)
						team.CornerBox = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Skeleton",
					Callback = function(self, value)
						team.Skeleton = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Tracer",
					Callback = function(self, value)
						team.Tracer = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Health Text",
					Callback = function(self, value)
						team.HealthText = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Name Text",
					Callback = function(self, value)
						team.Name = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Distance Text",
					Callback = function(self, value)
						team.Distance = value
					end,
				})

				header:Checkbox({
					Value = false,
					Label = "Weapon Text",
					Callback = function(self, value)
						team.Weapon = value
					end,
				}) ]]
			end

			doTeam(esp.Team.Enemy, "Enemy")
			doTeam(esp.Team.Friendly, "Friendly")

			esp.Load()

			return tab
		end,
		settings = function()
			local tab = window:CreateTab({
				Name = "Settings",
			})

			tab:Keybind({
				Label = "UI keybind",
				Value = Enum.KeyCode.RightControl,
				Callback = function()
					window:ToggleVisibility()
				end,
			})

			return tab
		end,
	},
}
