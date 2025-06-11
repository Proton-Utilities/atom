return function(self)
	--// Imports
	local base = require("@core/base")
	local utility = require("@modules/utility")

	--// Variables
	local turretWeldEvents = {}

	--// References
	local flags = base.flags
	local interface = base.interface
	local window = base.window
	local baseTabs = base.tabs

	local localPlayer = utility.getPlayer()

	local runService = utility.getService("RunService")
	local userInputService = utility.getService("UserInputService")
	local replicatedStorage = utility.getService("ReplicatedStorage")
	local workspace = utility.getService("Workspace")
	local players = utility.getService("Players")

	--// UI
	do -- Home
		baseTabs.home(self.Name)
	end

	do -- Exploits
		local tab = window:CreateTab({
			Name = "Exploits",
		})

		do -- Lightbody
			local header = tab:CollapsingHeader({
				Title = "Lightbody",
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
								if not self._active then
									return
								end

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
					flags[`FlareSpamColor{v}`] = colorsHeader:Radiobox({
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
						end,
					})
				end
			end

			flags[`FlareSpamDelay`] = header:SliderFloat({
				Label = "Flare spam delay",
				Minimum = 0.0,
				Maximum = 1.0,
				Value = 0.1,
				Format = "%.2f",
				Callback = function(self, value)
					flags["FlareSpam"]._delay = value
				end,
			})

			flags["FlareSpamHideGui"] = header:Checkbox({
				Value = false,
				Label = "Hide flare spam GUI",
			})

			local function resetFlarePosition()
				local character = utility.getCharacter(localPlayer)
				local humanoid = utility.getHumanoid(localPlayer)

				if not humanoid or not character then
					return
				end

				local flare: Tool = localPlayer.Backpack:FindFirstChild("Flare") or character:FindFirstChild("Flare")

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
					
					return true
				end

				return
			end

			flags["FlareSpamResetPosition"] = header:Button({
				Text = "Reset flare position",
				Callback = resetFlarePosition,
			})

			flags[`FlareSpamSpamReset`] = header:Checkbox({
				Value = false,
				Label = "Spam reset flare position",
				Callback = function(self, value)
					self._active = value

					task.spawn(function()
						while self._active do
							if not resetFlarePosition() then
								break
							end
						end
					end)
				end,
			})
		end

		do -- Cannon
			local header = tab:CollapsingHeader({
				Title = "Cannon",
			})

			flags["CannonInstantFire"] = header:Checkbox({
				Value = false,
				Label = "Instant fire",
				Callback = function(self, value)
					self._active = value

					if self._connections then
						for _, conn in ipairs(self._connections) do
							conn:Disconnect()
						end
					end

					self._connections = {}

					self._clear = function()
						self._currentCannon = nil
						self._fireRemote = nil
						self._reloadRemote = nil
						self._reloadedValue = nil
					end

					self._onSeated = function(isSeated, seatPart)
						if isSeated and seatPart then
							local cannon = seatPart.Parent

							if
								cannon
								and (
									cannon.Name == "WallCannon"
									or cannon.Name == "GroundCannon"
									or game:GetService("CollectionService"):HasTag(seatPart, "TurretSeat")
								)
							then
								local script = cannon:FindFirstChild("TurretControlScript")
								if script then
									local fire = script:FindFirstChild("FireEvent")
									local reload = script:FindFirstChild("ReloadEvent")
									local reloaded = script:FindFirstChild("Reloaded")

									if fire and reload and reloaded then
										self._currentCannon = cannon
										self._fireRemote = fire
										self._reloadRemote = reload
										self._reloadedValue = reloaded

										return
									end
								end
							end
						end

						self._clear()
					end

					self._onInput = function(input, gameProcessed)
						if gameProcessed or input.KeyCode ~= Enum.KeyCode.F then
							return
						end

						if not (self._currentCannon and self._fireRemote) then
							return
						end

						if self._reloadedValue and self._reloadRemote and not self._reloadedValue.Value then
							pcall(function()
								self._reloadRemote:InvokeServer("StandardShell")
							end)
						end

						pcall(function()
							self._fireRemote:InvokeServer()
						end)
					end

					if value then
						local humanoid = utility.getHumanoid(localPlayer)

						table.insert(self._connections, humanoid.Seated:Connect(self._onSeated))
						table.insert(
							self._connections,
							game:GetService("UserInputService").InputBegan:Connect(self._onInput)
						)

						self._characterAddedConn = localPlayer.CharacterAdded:Connect(function(newChar)
							local newHumanoid = newChar:WaitForChild("Humanoid")

							table.insert(self._connections, newHumanoid.Seated:Connect(self._onSeated))
						end)
					else
						if self._characterAddedConn then
							self._characterAddedConn:Disconnect()
							self._characterAddedConn = nil
						end

						self._clear()
					end
				end,
			})

			header:Separator()

			flags["CannonSpin"] = header:Checkbox({
				Disabled = true,
				Value = false,
				Label = "Cannon spin",
				Callback = function(self, value)
					self._active = value

					while self._active do
						for i = #turretWeldEvents, 1, -1 do
							local event = turretWeldEvents[i]

							if not event then
								table.remove(turretWeldEvents, i)
							else
								event:FireServer(self._amount or -0.02)
							end
						end

						task.wait()
					end
				end,
			})

			flags["CannonSpinInitialize"] = header:Button({
				Text = "Initialize (Might lag)",
				Callback = function(self)
					turretWeldEvents = {}
					for _, v in pairs(workspace:GetDescendants()) do
						if
							v:IsA("RemoteEvent")
							and v.Name == "WeldAngleEvent"
							and v.Parent:IsA("Script")
							and v.Parent.Name == "TurretControlScript"
						then
							table.insert(turretWeldEvents, v)
						end
					end

					flags["CannonSpin"]:SetDisabled(false)
				end,
			})

			interface:SetItemTooltip(flags["CannonSpin"], function(canvas)
				canvas:Label({
					Text = "ℹ️ You must have sat in a cannon to use this.\nWorks on multiple cannons (of course as long as you have sat in them).",
				})
			end)

			flags[`CannonSpinAmount`] = header:SliderFloat({
				Label = "Cannon spin amount",
				Minimum = -0.1,
				Maximum = 0.1,
				Value = -0.02,
				Format = "%.2f",
				Callback = function(self, value)
					flags["CannonSpin"]._amount = value
				end,
			})
		end

		do -- Shifter
			local header = tab:CollapsingHeader({
				Title = "Shifter",
			})

			do -- Mods
				local header2 = header:CollapsingHeader({
					Title = "Mods",
				})

				flags[`InfStamina`] = header2:Checkbox({
					Value = false,
					Label = "Infinite stamina",
					Callback = function(self, value)
						self._active = value

						if not self._active then
							return
						end

						local character = utility.getCharacter(localPlayer)

						if not character then
							return
						end

						local staminaValue

						for _, child in pairs(character:GetDescendants()) do
							if child.Name == "Stamina" and child:IsA("ValueBase") then
								staminaValue = child
								break
							end
						end

						if not staminaValue then
							return
						end

						if not self._oldStamina then
							self._oldStamina = staminaValue.Value
						end

						if not value then
							staminaValue.Value = self._oldStamina
							self._oldStamina = nil
						end

						task.spawn(function()
							while self._active do
								staminaValue.Value = 24e2

								task.wait()
							end
						end)
					end,
				})

				flags[`ShifterTitanInstantTurn`] = header2:Checkbox({
					Value = false,
					Label = "Shifter titan instant turn",
					Callback = function(self, value)
						local character = utility.getCharacter(localPlayer)

						if not character then
							return
						end

						for _, child in pairs(character:GetDescendants()) do
							if child.Name == "RotationSpeed" and child:IsA("ValueBase") then
								child.Value = 1e9
								break
							end
						end
					end,
				})

				flags[`InfShiftTimer`] = header2:Checkbox({
					Value = false,
					Label = "Infinite shift timer",
					Callback = function(self, value)
						local character = utility.getCharacter(localPlayer)

						if not character then
							return
						end

						for _, child in pairs(character:GetDescendants()) do
							if child.Name == "Time" and child:IsA("ValueBase") then
								child:Destroy()
								break
							end
						end
					end,
				})
			end

			do -- Impact spam
				local header2 = header:CollapsingHeader({
					Title = "Impact exploits (Semi patched)",
				})

				flags[`ImpactDrawEnabled`] = header2:Checkbox({
					Value = false,
					Label = "Impact draw",
					Callback = function(self, value)
						self._active = value

						local player = game.Players.LocalPlayer
						local mouse = player:GetMouse()

						if not self._connection then
							local posGroundImpact

							task.spawn(function()
								while not posGroundImpact do
									local character = player.Character or player.CharacterAdded:Wait()

									for _, child in ipairs(character:GetDescendants()) do
										if child:IsA("RemoteEvent") and child.Name == "PosGroundImpact" then
											posGroundImpact = child
											break
										end
									end

									if not self._active then
										return
									end
									task.wait()
								end
							end)

							local isDrawing = false
							local lastPos = nil

							self._inputBegan = userInputService.InputBegan:Connect(function(input, gpe)
								if input.UserInputType == Enum.UserInputType.MouseButton1 and not gpe then
									isDrawing = true
									lastPos = nil
								end
							end)

							self._inputEnded = userInputService.InputEnded:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									isDrawing = false
									lastPos = nil
								end
							end)

							self._connection = runService.RenderStepped:Connect(function()
								if not isDrawing or not posGroundImpact or not self._active then
									return
								end

								local hit = mouse.Hit

								if not hit then
									return
								end

								local pos = hit.Position

								if not lastPos or (lastPos - pos).Magnitude >= 0.5 then
									posGroundImpact:FireServer(CFrame.new(pos))
									lastPos = pos
								end
							end)
						end

						if not self._active then
							if self._connection then
								self._connection:Disconnect()
								self._connection = nil
							end

							if self._inputBegan then
								self._inputBegan:Disconnect()
								self._inputBegan = nil
							end

							if self._inputEnded then
								self._inputEnded:Disconnect()
								self._inputEnded = nil
							end
						end
					end,
				})

				header2:Separator()

				flags["ImpactSpam"] = header2:Checkbox({
					Value = false,
					Label = "Impact spam",
					Callback = function(self, value)
						self._active = value

						if self._task then
							task.cancel(self._task)
							self._task = nil
						end

						if not value then
							return
						end

						local character = utility.getCharacter(localPlayer)

						if not character then
							return
						end

						local posGroundImpact

						for _, child in pairs(character:GetDescendants()) do
							if child.Name == "PosGroundImpact" and child:IsA("RemoteEvent") then
								posGroundImpact = child
								break
							end
						end

						self._task = task.spawn(function()
							while self._active do
								if not posGroundImpact then
									break
								end

								local localCharacter = utility.getCharacter(localPlayer)

								if not localCharacter or not localCharacter.PrimaryPart then
									break
								end

								if self._followPlayers then
									for _, player in pairs(players:GetPlayers()) do
										local playerCharacter = player.Character

										if playerCharacter and playerCharacter.PrimaryPart then
											local position = playerCharacter.PrimaryPart.Position
												+ Vector3.new(
													math.random(-self._rangeX, self._rangeX),
													math.random(-self._rangeY, self._rangeY),
													math.random(-self._rangeZ, self._rangeZ)
												)

											posGroundImpact:FireServer(CFrame.new(position))
										end
									end
								else
									local primaryPosition = localCharacter.PrimaryPart.Position
									local rangeX = math.random(-(self._rangeX or 500), self._rangeX or 500)
									local rangeY = math.random(-(self._rangeY or 500), self._rangeY or 500)
									local rangeZ = math.random(-(self._rangeZ or 500), self._rangeZ or 500)

									posGroundImpact:FireServer(
										CFrame.new(primaryPosition + Vector3.new(rangeX, rangeY, rangeZ))
									)
								end

								task.wait()
							end
						end)
					end,
				})

				flags[`ImpactSpamFollowsPlayers`] = header2:Checkbox({
					Value = false,
					Label = "Impact spam follows players",
					Callback = function(self, value)
						flags["ImpactSpam"]._followPlayers = value
					end,
				})

				flags[`ImpactSpamRageX`] = header2:SliderInt({
					Label = `Impact spam range X`,
					Minimum = 0,
					Maximum = 500,
					Value = 500,
					Callback = function(self, value)
						flags["ImpactSpam"]._rangeX = value
					end,
				})

				flags[`ImpactSpamRageY`] = header2:SliderInt({
					Label = `Impact spam range Y`,
					Minimum = 0,
					Maximum = 500,
					Value = 500,
					Callback = function(self, value)
						flags["ImpactSpam"]._rangeY = value
					end,
				})

				flags[`ImpactSpamRageZ`] = header2:SliderInt({
					Label = `Impact spam range Z`,
					Minimum = 0,
					Maximum = 500,
					Value = 500,
					Callback = function(self, value)
						flags["ImpactSpam"]._rangeZ = value
					end,
				})
			end
		end
	end

	do -- Visuals
		baseTabs.visuals()
	end

	do -- Settings
		local tab = baseTabs.settings()

		flags["ShowMouseIcon"] = tab:Checkbox({
			Label = "Show mouse icon",
			Value = true,
			Callback = function(self, value)
				self._active = value

				task.spawn(function()
					while self._active do
						userInputService.MouseIconEnabled = true
						task.wait(0.1)
					end
				end)
			end,
		})
	end

	do -- Config
		baseTabs.config(self.name)
	end

	--// Initialize
	window.Title = `Atom - {self.name}`
end
