--- === HyperLightDrifter ===
---
--- Execute various actions in the game Hyper Light Drifter by Heart Machine

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "HyperLightDrifter"
obj.version = "1.0"
obj.author = "Jono Warren <jono.warren@gmail.com>"
obj.homepage = "https://github.com/jonowar/HyperLightDrifter.spoon"
obj.license = "MIT - https://opensource.org/licenses/MIT"

function obj:bindHotkeys(mapping)
   if (self.hotkey) then
      self.hotkey:delete()
   end

   for fn, mod_key in pairs(mapping) do
      local mods = mod_key[1]
      local key = mod_key[2]
      hs.hotkey.bind(mods, key, function() self[fn](self) end)
   end

   return self
end

function obj:drift()
   hs.notify.new({title="HyperLightDrifter", informativeText="Drifting"}):send()
   for i = 1, 4 do
      hs.eventtap.keyStroke({}, "space", 150000)
      hs.timer.usleep(150000)
   end
   for i = 1, 796 do
      hs.eventtap.keyStroke({}, "space", 130000)
      hs.timer.usleep(130000)
   end
end

return obj
