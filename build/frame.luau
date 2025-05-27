--!nolint
--!nocheck
--!native
--!optimize 2

--[[
    @author Proton-Utilities
    @name atom

    This file was automatically generated with darklua, it is not intended for manual editing.
--]]

if not atomicsec then
    atomicsec = {
        username = "DEBUG",
        userid = "DEBUG",
        note = "DEBUG",
        hwid = "DEBUG",
        script_name = "DEBUG",
        expiry = 0,
        is_premium = true
    }
end

_P = {
    genDate = __COMPOSER.Insert(__COMPOSER.genDate),
    cfg = __COMPOSER.Insert(__COMPOSER.cfg),
    vers = __COMPOSER.Insert(__COMPOSER.vers)
}

if not hookfunction or not getrenv or not request then
	game.Player.LocalPlayer:Kick("Your executor is not supported.")
	return
end

__COMPOSER.Insert(__COMPOSER.build)