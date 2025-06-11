--!nocheck
--!nolint

--[[
    @author Proton-Utilities
    @name atom

    This file was automatically generated with darklua, it is not intended for manual editing.
--]]

if not hookfunction or not getrenv or not request then
	game.Player.LocalPlayer:Kick("Your executor is not supported.")
	return
end

local Players = game:GetService("Players")
repeat task.wait() until Players.LocalPlayer and game:IsLoaded()

local LocalPlayer = Players.LocalPlayer

local function WaitForChildOfPlayer(name)
    while not LocalPlayer:FindFirstChild(name) do
        LocalPlayer.ChildAdded:Wait()
    end
    return LocalPlayer[name]
end

local function WaitForPlayerLoad()
    LocalPlayer.Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    WaitForChildOfPlayer("Backpack")
    WaitForChildOfPlayer("PlayerGui")
    WaitForChildOfPlayer("PlayerScripts")
end

WaitForPlayerLoad()

atomicsec = atomicsec or {}

_P = {
    genDate = __COMPOSER.Insert(__COMPOSER.genDate),
    cfg = __COMPOSER.Insert(__COMPOSER.cfg),
    vers = __COMPOSER.Insert(__COMPOSER.vers)
}

__COMPOSER.Insert(__COMPOSER.build)