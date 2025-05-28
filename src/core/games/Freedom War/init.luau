return function(self)
	--// Imports
	local base = require("@core/base")
	local utility = require("@modules/utility")

	--// Variables
	local localPlayer = utility.getPlayer()
	local flags = {}

	--// References
	local interface = base.interface
	local window = base.window
	local baseTabs = base.tabs

	local userInputService = utility.getService("UserInputService")
	local replicatedStorage = utility.getService("ReplicatedStorage")

	--// UI
	do -- Home
		baseTabs.home(self.Name)
	end

	do -- Exploits
		local tab = window:CreateTab({
			Name = "Exploits",
		})

		do -- Skills
			local header = tab:CollapsingHeader({
				Title = "Skills",
			})

			flags["LightBody"] = header:Checkbox({
				Value = false,
				Label = "Lightbody",
				Callback = function(self, value)
					self._physicalProperties = self._physicalProperties or {}
					self._Active = value

					while self._Active do
						local character = utility.getCharacter(localPlayer)

						if character then
							local density = 0.7 * (1 - flags["LightBodyAmount"].Value / 100)

							for _, child in pairs(character:GetDescendants()) do
								if child:IsA("BasePart") then
									if not self._physicalProperties[child] then
										self._physicalProperties[child] = child.CustomPhysicalProperties
									end
									child.CustomPhysicalProperties = PhysicalProperties.new(density, 0.3, 0.5)
								end
							end
						end

						task.wait(0.3)
					end

					local character = utility.getCharacter(localPlayer)
					if character then
						for _, child in pairs(character:GetDescendants()) do
							if child:IsA("BasePart") and self._physicalProperties[child] then
								child.CustomPhysicalProperties = self._physicalProperties[child]
								self._physicalProperties[child] = nil
							end
						end
					end
				end,
			})

			flags["LightBodyAmount"] = header:SliderInt({
				Label = "Lightbody Amount",
				Minimum = 0,
				Maximum = 70,
				Value = 25,
			})

			interface:SetItemTooltip(flags["LightBody"], function(canvas)
				canvas:Label({
					Text = "Makes your character lighter, giving you faster impulse and doge, as well as instant hook stop.",
				})
			end)
		end

		do -- Flare spam
			local header = tab:CollapsingHeader({
				Title = "Flare spam",
			})

			flags["FlareSpam"] = header:Checkbox({
				Value = false,
				Label = "Flare spam",
				Callback = function(self, value)
					self._active = value

					local character = utility.getCharacter(localPlayer)
					local flareEvent: RemoteEvent = replicatedStorage:FindFirstChild("FlareGunEvents")
						and replicatedStorage.FlareGunEvents:FindFirstChild("FlareEvent")
					local flare: Tool = localPlayer and localPlayer.Backpack:FindFirstChild("Flare")
						or character and character:FindFirstChild("Flare")

					if not flareEvent or not flare then
						return
					end
					if not self._colors or #self._colors == 0 then
						return
					end

					task.spawn(function()
						while self._active do
							for _, color in ipairs(self._colors) do
								if not self._active then return end
								flareEvent:FireServer(color, "Fire", flare)

								if self._delay and self._delay > 0 then
									task.wait(self._delay)
								end

								task.wait()
							end
						end
					end)
				end,
			})

			do
				local colorsHeader = header:CollapsingHeader({
					Title = "Flare spam colors",
				})

				for i, v in pairs({ "Green", "Red", "Black", "Yellow", "Blue", "Purple" }) do
					colorsHeader:Radiobox({
						Value = i <= 3,
						Label = v,
						Callback = function(self, value)
							if not flags["FlareSpam"]._colors then
								flags["FlareSpam"]._colors = {}
							end

							local colorList = flags["FlareSpam"]._colors

							if value then
								if not table.find(colorList, v) then
									table.insert(colorList, v)
								end
							else
								local index = table.find(colorList, v)
								if index then
									table.remove(colorList, index)
								end
							end
						end
					})
				end
			end

			header:SliderFloat({
				Label = "Flare spam delay", 
				Minimum = 0.0, 
				Maximum = 1.0,
				Value = 0.1,
				Format = "Ratio = %.2f",
				Callback = function(self, value)
					flags["FlareSpam"]._delay = value
				end,
			})

			flags["FlareSpamHideGui"] = header:Checkbox({
				Value = false,
				Label = "Hide flare spam GUI"
			})

			local function resetFlarePosition()
				local character = utility.getCharacter(localPlayer)
				local humanoid = utility.getHumanoid(localPlayer)

				if not humanoid or not character then
					return
				end

				local flare: Tool = localPlayer.Backpack:FindFirstChild("Flare")
					or character:FindFirstChild("Flare")

				if flare and flare.Parent then
					if flare.Parent:IsA("Backpack") then
						humanoid:EquipTool(flare)
					end

					if flags["FlareSpamHideGui"] and flags["FlareSpamHideGui"].Value then
						local playerGui = localPlayer:FindFirstChild("PlayerGui")

						if playerGui then 
							local flareGui = playerGui:FindFirstChild("FlareGunGui")

							if flareGui then
								flareGui.Enabled = false
							end
						end
					end

					task.wait(0.1)
					humanoid:UnequipTools()
				end
			end

			flags["FlareSpamResetPosition"] = header:Button({
				Text = "Reset flare position",
				Callback = resetFlarePosition
			})

			header:Checkbox({
				Value = false,
				Label = "Spam reset flare position",
				Callback = function(self, value)
					self._active = value

					task.spawn(function()
						while self._active do
							resetFlarePosition()
						end
					end)
				end,
			})
		end
	end

	do -- Visuals
		baseTabs.visuals()
	end

	do -- Settings
		local tab = baseTabs.settings()

		tab:Checkbox({
			Label = "Show mouse icon",
			Value = true,
			Callback = function(self, value)
				self._active = value

				while self._active do
					userInputService.MouseIconEnabled = true
					task.wait(0.1)
				end
			end,
		})
	end

	--// Initialize
	window.Title = `Atom - {self.name}`
end
