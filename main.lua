wf = require("src/libs/windfield")

Debugger = require("src/classes/debugger")
Background = require("src/classes/background")
Player = require("src/classes/player")
PlayerBullet = require("src/classes/playerBullet")

windowW = 1125 / 2
windowH = 2436 / 2

function love.load()
    world = wf.newWorld(0, 0)
    simpleDebugger = Debugger.new()
    mainPlayer = Player.new(windowW / 2 - 45, windowH / 1.5)

    bg1 = Background.new(0, 500)
    bg2 = Background.new(0, -460)
    bg3 = Background.new(0, -1200)

    ground1 = world:newRectangleCollider(-5, 0, 10, windowH)
    ground1:setType("static")
    ground2 = world:newRectangleCollider(windowW - 5, 0, 10, windowH)
    ground2:setType("static")
    ground3 = world:newRectangleCollider(0, 0, windowW, 10)
    ground3:setType("static")
    ground4 = world:newRectangleCollider(0, windowH, windowW, 10)
    ground4:setType("static")
end

function love.update(dt)
    bg1:update(dt)
    bg2:update(dt)
    bg3:update(dt)

    mainPlayer:update(dt)
    
    world:update(dt)
end

function love.draw()
    
    bg1:draw()
    bg2:draw()
    bg3:draw()
    
    mainPlayer:draw()
    
    world:draw()
    simpleDebugger:ShowFPS()
end

function love.keypressed(key)
    -- Shoot
    if (key == "space") then
        local lbullet = PlayerBullet.new(mainPlayer.px, mainPlayer.py - 80)
    end
end
