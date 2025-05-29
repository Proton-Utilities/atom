--// Variables
local files = {
	{
		name = "Freedom War",
		load = require("@games/Freedom War/init.luau"),
		universeId = 4096039463,
	},
}

--// Services
local CoreGui = game:GetService("CoreGui")

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
	--[[ -- Anti reversal
	pcall(function()
		local DTC_A_RT = false

		local function Check()
			local Count = 0

			for _, Object in pairs(gethui():GetChildren()) do
				if Object:IsA("ScreenGui") then
					Count += 1
					if Count > 1 then
						return "illegal object 1", Object
					end
				end
			end

			for _, Object in pairs(CoreGui:GetChildren()) do
				if Object:IsA("ScreenGui") and (Object.Name == "Window" or Object.Name == "Intro") then
					return "illegal object 2", Object
				end
			end

			return false
		end

		local DTC_GH_CLD_A_RT = gethui().ChildAdded:Connect(function()
			local Result, Object = Check()
			if Result and not DTC_A_RT then
				DTC_A_RT = true
				JmpFck(Result)
				Object:Destroy()
			end
		end)
		local DTC_CGUI_CLD_A_RT = CoreGui.ChildAdded:Connect(function()
			local Result, Object = Check()
			if Result and not DTC_A_RT then
				DTC_A_RT = true
				JmpFck(Result)
				Object:Destroy()
			end
		end)

		task.spawn(function()
			while true do
				if not (DTC_GH_CLD_A_RT.Connected and DTC_CGUI_CLD_A_RT.Connected) then
					JmpFck("bypass 1")
				end

				local Result, Object = Check()
				if Result and not DTC_A_RT then
					JmpFck("bypass 2", Result)
					Object:Destroy()
				end

				task.wait(0.5)
			end
		end)
	end) ]]

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
						end
					end

					scan(".")

					task.wait(1)
				end
			end
		end)
	end

	--[[ -- Hooks
	do
		local OriginalLoadstring = loadstring
		hookfunction(loadstring, function(...)
			if checkcaller() then
				JmpFck("illegal chunk 1")
				return
			end
			return OriginalLoadstring(...)
		end)
	end ]]

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
	print("[DEBUG]", `Loading - Atom {_P.vers} | {_P.cfg}`)

	local function load(game)
		print("[DEBUG]", `Atom - Found: {game.name}`)
		game:load()
		getgenv().__Atom_Loaded = true
	end

	for _, _game in pairs(files) do
		if _game.places then
			for _, placeId in ipairs(_game.places) do
				if placeId == _game.PlaceId then
					load(_game)
					return
				end
			end
		end

		if _game.universeId and _game.universeId == game.GameId then
			load(_game)
			return
		end
	end
end
