local updates = 0

function playdate.update()
    updates = updates + 1

    playdate.graphics.clear()
    playdate.graphics.drawText("Hello, Playdate!", 40, 40)
    playdate.graphics.drawText("Updates: " .. updates, 40, 60)
end
