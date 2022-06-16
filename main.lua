Debugger = require("src/classes/debugger")
Background = require("src/classes/background")
Player = require("src/classes/player")

function love.load()
    simpleDebugger = Debugger.new()
    mainPlayer = Player.new(100, 100)
    bg1 = Background.new(0, 500)
    bg2 = Background.new(0, -460)
    bg3 = Background.new(0, -1200)
end

function love.update(dt)
    bg1:update(dt)
    bg2:update(dt)
    bg3:update(dt)
end

function love.draw()
    bg1:draw()
    bg2:draw()
    bg3:draw()
    mainPlayer:draw()
    simpleDebugger:ShowFPS()
end
