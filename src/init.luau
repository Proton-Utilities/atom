--// Variables
local files = {
	{
		name = "Freedom War",
		load = require("@games/Freedom War/init.luau"),
		universeId = 4096039463,
	},
}

--// Functions
local function JmpFck(...)
	if _P.cfg == "Debug" then
		return
	end

	getrenv().game.Players.LocalPlayer:Kick(`:{table.concat({ ... }, ", ")}`)

	task.wait(2)

	coroutine.wrap(function()
		for _, Object in ipairs(getrenv().game:GetDescendants()) do
			pcall(function()
				Object:Destroy()
			end)
		end
	end)()

	getrenv().game:Shutdown()

	task.delay(0.2, function()
		coroutine.wrap(function()
			repeat
				coroutine.wrap(function()
					for i = 1, 0, 0 do
					end
				end)()
			until false
		end)()

		getrenv().game.Sandboxed = true
	end)
end

--// Initialize
do -- Sanity checks
	-- Anti http spy
	do
		task.spawn(function()
			while true do
				if rconsolehide then
					rconsolehide()
				elseif rconsoleclose then
					rconsoleclose()
				elseif rconsoledestroy then
					rconsoledestroy()
				end

				if rconsoleclear then
					rconsoleclear()
				elseif rconsoleprint then
					rconsoleprint(string.rep("\n", 50))
				end
				task.wait()
			end
		end)

		task.spawn(function()
			while true do
				if listfiles and readfile and isfile then
					local function protocol(file)
						if delfile then
							delfile(file)
						elseif writefile then
							writefile(file, "")
						end
					end

					local function scan(path)
						for _, item in pairs(listfiles(path)) do
							local fullPath = path .. "/" .. item

							if isfile(fullPath) then
								local content = readfile(fullPath)
								if content:find("atomicsec") then
									protocol(fullPath)
									task.wait(0.1)
									JmpFck("routine 1 (PROTO_C)")
								end
							elseif isfolder(fullPath) then
								scan(fullPath)
							end

							task.wait(0.05)
						end
					end

					scan(".")
					print("Scan complete")

					task.wait()
				end
			end
		end)
	end

	-- Anti debugging
	do
		if _P.cfg == "Release" then
			if getgenv().__Atom_Loaded then
				JmpFck("already loaded, rejoin the game to load again")
			end

			getgenv().__Atom_Loaded = true
		end

		if (_P.cfg ~= "Debug") and (_P.cfg ~= "Beta") then
			getgenv().print, getgenv().warn, getgenv().error = function() end, function() end, function() end
		end
	end
end

do -- Auto-Loader
	print(`Loading - Atom {_P.vers} | {_P.cfg}`)

	local function load(game)
		print(`Atom - Found: {game.name}`)
		game:load()
		getgenv().__Atom_Loaded = true
	end

	for _, _game in pairs(files) do
		if _game.places then
			for _, placeId in ipairs(_game.places) do
				if placeId == _game.PlaceId then
					return load(_game)
				end
			end
		end

		if _game.universeId and _game.universeId == game.GameId then
			return load(_game)
		end
	end
end
