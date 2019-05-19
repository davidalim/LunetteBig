local obj = {}
obj.__index = obj

-- Metadata
obj.name = "LunetteBig"
obj.version = "0.1-beta"
obj.author = "David Lim <14.d.lim@gmail.com>"
obj.license = "MIT"
obj.homepage = "https://github.com/davidalim/LunetteBig"

if not pcall(hs.loadSpoon, "Lunette") then
    lunetteRepo = "https://github.com/scottwhudson/Lunette/"
    error("Looks like you need to install the Lunette Spoon first. Head over and grab it at " .. lunetteRepo)
end

function obj:bindHotkeys(userBindings)
    print("LunetteBig: Binding Hotkeys")
    spoon.Lunette:bindHotkeys()
end

return obj