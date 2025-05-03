local updates = 0
local x = 40
local y = 40

function playdate.update()
    updates = updates + 1

    if playdate.buttonJustPressed(playdate.kButtonUp) then
        y -= 2
    end
    if playdate.buttonJustPressed(playdate.kButtonDown) then
        y += 2
    end
    if playdate.buttonJustPressed(playdate.kButtonLeft) then
        x -= 2
    end
    if playdate.buttonJustPressed(playdate.kButtonRight) then
        x += 2
    end

    playdate.graphics.clear()
    playdate.graphics.drawText("Hello, Playdate!", 40, 40)
    playdate.graphics.drawText("Updates: " .. updates, 40, 60)
end
