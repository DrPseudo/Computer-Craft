-- Simple Turtle Follow Script
local targetX, targetY, targetZ = 10, 5, 10  -- Example coordinates of the player

function moveTo(x, y, z)
    local posX, posY, posZ = gps.locate(5)  -- gets the current location of the turtle
    if not posX then
        print("GPS not available")
        return
    end

    -- Move to the correct altitude
    while posY < y do
        if turtle.up() then
            posY = posY + 1
        end
    end
    while posY > y do
        if turtle.down() then
            posY = posY - 1
        end
    end

    -- Move to the X coordinate
    while posX < x do
        if turtle.forward() then
            posX = posX + 1
        end
    end
    while posX > x do
        if turtle.back() then
            posX = posX - 1
        end
    end

    -- Move to the Z coordinate
    while posZ < z do
        if turtle.forward() then
            posZ = posZ + 1
        end
    end
    while posZ > z do
        if turtle.back() then
            posZ = posZ - 1
        end
    end
end

-- Main
while true do
    moveTo(targetX, targetY, targetZ)
    sleep(1)  -- Pause before recalculating path
end