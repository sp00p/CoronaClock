-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local currentTime = os.date("*t")

display.setDefault("background", 1, 1, 1)

--[[local center = display.newCircle(display.contentCenterX, display.contentCenterY, 20)
center:setFillColor(0,0,0)
--]]

local hourHand = display.newRect(display.contentCenterX, display.contentCenterY, 5, 70)
hourHand.anchorY = 1
hourHand:setFillColor(0,0,0)

local minuteHand = display.newRect(display.contentCenterX, display.contentCenterY, 5, 110)
minuteHand.anchorY = 1
minuteHand:setFillColor(0,0,0)

local secondHand = display.newRect(display.contentCenterX, display.contentCenterY, 5, 120)
secondHand.anchorY = 1
secondHand:setFillColor(1,0,0)



local function moveHands(e)
    local currentTime = os.date("*t")
    hourHand.rotation = currentTime.hour * 30 + (currentTime.min * 0.5)
    minuteHand.rotation = currentTime.min * 6
    secondHand.rotation = currentTime.sec * 6
end

timer.performWithDelay(1000, moveHands, 0)
