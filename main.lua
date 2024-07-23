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

    -- 1) see what block type it is
    -- 2) dig when block required
    -- 3) do this for up and down forward
    -- // see shape of diging //
    -- keep tracker to know how far you got to be able to return back
    get_block_type()
end

local mine_turtle = Mineturtle:new(turtle.getFuelLevel())
mine_turtle:dig()

