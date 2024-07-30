-- Mineturtle class

local Mineturtle = {}
Mineturtle.__index = Mineturtle

-- constructor

function Mineturtle:new(fuel)
    local instance = setmetatable({}, self)
    instance.fuel = fuel
    return instance
end

-- help methods 

function Mineturtle:get_block_type()
    local has_block, data = turtle.inspect()

    if has_block then
        local information = textutils.serialize(data)
        print(data.name)
    end
end

function Mineturtle:mine()
    turtle.turnLeft()
    turtle.dig()
    turtle.turnRight()
    turtle.dig()
    turtle.digUp()
    turtle.digDown()
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft()
    turtle.forward()
end

-- main method

function Mineturtle:dig()
    -- 1) see what block type it is
    -- 2) dig when block required
    -- 3) do this for up and down forward
    -- // see shape of digging //
    -- keep tracker to know how far you got to be able to return back
    local return_value = turtle.getFuelLevel()/2 + 1; 
    while(turtle.getFuelLevel() > return_value) do -- no detect bcs water or lava
        self:get_block_type()
        self:mine()
    end


    -- go back

    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.dig()
    turtle.forward()
    turtle.dig()
    turtle.forward()
    turtle.dig()
    turtle.forward()
    turtle.dig()
    turtle.forward()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()

    while(turtle.getFuelLevel() > 0) do
        self:mine()
    end
end

local mine_turtle = Mineturtle:new(turtle.getFuelLevel())
mine_turtle:dig()
