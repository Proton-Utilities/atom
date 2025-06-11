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

atomicsec = atomicsec or {}

_P = {
    genDate = __COMPOSER.Insert(__COMPOSER.genDate),
    cfg = __COMPOSER.Insert(__COMPOSER.cfg),
    vers = __COMPOSER.Insert(__COMPOSER.vers)
}

__COMPOSER.Insert(__COMPOSER.build)