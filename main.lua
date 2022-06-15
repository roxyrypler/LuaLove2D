debugger = require("src/modules/debugger")
bg = require("src/modules/background")


function love.load()
    bg.Load(0, 0)
end

function love.update(dt)
    bg.Update(dt)
end

function love.draw()
    
    bg.Draw()
    debugger.ShowFPS()
end