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
        print(information)
    end
end

-- main method

function Mineturtle:dig()
    -- 1) see what block type it is
    -- 2) dig when block required
    -- 3) do this for up and down forward
    -- // see shape of digging //
    -- keep tracker to know how far you got to be able to return back
    self:get_block_type()
end

local mine_turtle = Mineturtle:new(turtle.getFuelLevel())
mine_turtle:dig()
