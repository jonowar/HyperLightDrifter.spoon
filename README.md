# HyperLightDrifter.spoon
An extension (spoon) for the OSX automation program Hammerspoon (http://www.hammerspoon.org/), for unlocking the purple outfit in the indie game Hyper Light Drifter (www.heart-machine.com)

# Installation
Clone this into your `.hammerspoon/Spoons` directory

# Usage
1. In your `.hammerspoon/init.lua` add the following:
```
hld = hs.loadSpoon("HyperLightDrifter")
hld:bindHotkeys({
      unlockPurpleOutfit={{"ctrl", "cmd"}, "P"}
})
```
2. Open Hyper Light Drifter and set controls to keyboard and mouse.
3. Go to the dash shop challenge zone and move to a spot slightly left or right of a stamina recharge panel.
4. Place your mouse in the middle of the stamina recharge panels.
5. Hit `ctrl+cmd+P`.
6. The guy should start dashing back and forth 800 times and unlock the purple outfit.

# Warnings
1. This spoon uses `hs.timer.usleep`, which blocks lua execution and might have adverse affects on other spoons.
2. Once it starts, it won't stop until the spacebar has been pushed 800 times, so make sure you're in the game and comitted to unlocking this thing.
