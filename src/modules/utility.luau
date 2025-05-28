local utility = {}

utility.getService = function(service: string): ServiceProvider
	local _game = cloneref and cloneref(game) or game
	local success, result = pcall(function()
		return cloneref and cloneref(_game:GetService(service)) or _game:GetService(service)
	end)
	return success and result or nil
end
utility.getService = newcclosure and newcclosure(utility.getService) or utility.getService

function utility.getPlayer(): Player?
	local success, result = pcall(function()
		return utility.getService("Players") :: ServiceProvider
	end)
	return success and (result :: Players).LocalPlayer or nil
end

function utility.getCharacter(player: Player?): Model?
	local success, result = pcall(function()
		return player and player.Character or nil
	end)
	return success and result or nil
end

function utility.getHumanoid(player: Player?): Humanoid?
	local success, result = pcall(function()
		local character = utility.getCharacter(player)
		return character and character:FindFirstChildOfClass("Humanoid") or nil
	end)
	return success and result or nil
end

return utility
