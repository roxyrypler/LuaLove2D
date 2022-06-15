local module = {}

module.ShowFPS = function()
    love.graphics.print("FPS"..tostring(love.timer.getFPS()), 10, 10)
end

return module