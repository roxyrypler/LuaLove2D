wf = require("src/libs/windfield")

Debugger = require("src/classes/debugger")
Background = require("src/classes/background")
--Player = require("src/classes/player")

function love.load()
    simpleDebugger = Debugger.new()
   -- mainPlayer = Player.new(100, 100)
    --bg1 = Background.new(0, 500)
    --bg2 = Background.new(0, -460)
    --bg3 = Background.new(0, -1200)

    world = wf.newWorld(0, 0)

    player = world:newRectangleCollider(350, 100, 80, 80)
    ground = world:newRectangleCollider(100, 400, 600, 100)
    ground:setType("static")
end

function love.update(dt)
    --bg1:update(dt)
    --bg2:update(dt)
    --bg3:update(dt)

    if (love.keyboard.isDown("w")) then
        player:applyForce(0, -2500)
    end

    if (love.keyboard.isDown("s")) then
        player:applyForce(0, 2500)
    end

    if (love.keyboard.isDown("a")) then
        player:applyForce(-2500, 0)
    end

    if (love.keyboard.isDown("d")) then
        player:applyForce(2500, 0)
    end

    world:update(dt)
end

function love.draw()
    world:draw()
    --bg1:draw()
    --bg2:draw()
    --bg3:draw()
    --mainPlayer:draw()
    simpleDebugger:ShowFPS()
end
