fuel = turtle.getFuelLevel()

steps = 0

print(fuel)
print(steps)

while((fuel > ((steps + 3) / 2))) do
    turtle.digUp()
    turtle.digDown()
    turtle.turnLeft()
    turtle.dig()
    turtle.turnRight()
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft()
    turtle.dig()
    steps = steps + 1
    print(steps)
end

print(fuel)

turtle.turnLeft()
turtle.dig()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.digUp()
turtle.digDown()
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
end

