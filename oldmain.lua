fuel = turtle.getFuelLevel()

steps = 0

print(fuel)
print(steps)

while(((fuel / 2) > (steps + 3))) do
    turtle.digUp()
    turtle.digDown()
    turtle.turnLeft()
    turtle.dig()
    turtle.turnRight()
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    steps = steps + 1
    print(steps)
end

print(fuel)

turtle.turnLeft()
turtle.dig()
turtle.digUp()
turtle.digDown()
turtle.forward()
turtle.dig()
turtle.digUp()
turtle.digDown()
turtle.forward()
turtle.dig()
turtle.digUp()
turtle.digDown()
turtle.turnLeft()

while(fuel > 0) do
    turtle.digUp()
    turtle.digDown()
    turtle.turnLeft()
    turtle.dig()
    turtle.turnRight()
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
end

