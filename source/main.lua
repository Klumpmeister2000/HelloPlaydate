local updates = 0
local x = 40
local y = 40
local playerSpeed = 4
local names = { "Playdate", "Christian", "Kyle", "Goth Gf" }
local name = names[1]


function playdate.update()
    updates = updates + 1

    -- Check for button presses
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

    if playdate.buttonJustPressed(playdate.kButtonA) then
        name = names[math.random(#names)]
    end
    if playdate.buttonJustPressed(playdate.kButtonB) then
        updates = 0
    end

    -- Drawing Text and updating the screen
    playdate.graphics.clear()
    playdate.graphics.drawText("Hello, " .. name, x, y)
    playdate.graphics.drawText("Updates: " .. updates, 40, 60)
end
