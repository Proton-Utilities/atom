return function(self) 
    --// Imports
    local base = require("@core/base.luau")

    --// References
    local interface = base.interface
    local window = base.window
    local baseTabs = base.tabs

    --// Tabs
    do -- Home
        baseTabs.home(self.Name)
    end

    do -- Combat
        
    end

    do -- Visuals
        baseTabs.visuals()
    end

    do -- Settings
        baseTabs.settings()
    end

    --// Initialize
    window.Title = `Atom - {self.name}`
end
