-- Mineturtle class

local Mineturtle = {}

-- constructor

function Mineturtle:new(feul)
    local instance = setmetatable({}, Mineturtle)
    instance.feul = feul
    return instance
end

-- help methods 

function Mineturtle:get_block_type()
    local has_block, data = turtle.inspect()

    if has_block then
        local information = textutils.serialise(data)
        print(information)
    end

end

-- main method

function Mineturtle:dig()
    get_block_type()
end

local mine_turtle = Mineturtle:new(turtle.getFuelLevel())
mine_turtle:dig()

