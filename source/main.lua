local updates = 0
local x = 40
local y = 40
local playerSpeed = 4

playdate = playdate or {} -- Ensure playdate is defined

function playdate.update()
    updates = updates + 1

    if playdate.buttonIsPressed(playdate.kButtonUp) then
        y = y - playerSpeed
    end
    if playdate.buttonIsPressed(playdate.kButtonDown) then
        y = y + playerSpeed
    end
    if playdate.buttonIsPressed(playdate.kButtonLeft) then
        x = x - playerSpeed
    end
    if playdate.buttonIsPressed(playdate.kButtonRight) then
        x = x + playerSpeed
    end

    playdate.graphics.clear()
    playdate.graphics.drawText("Hello, Playdate!", x, y)
    playdate.graphics.drawText("Updates: " .. updates, 40, 60)
end
