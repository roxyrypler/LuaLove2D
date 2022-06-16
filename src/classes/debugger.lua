Debugger = {}
MetaDebugger = {}
MetaDebugger.__index = Debugger

function Debugger.new()
    local instance = setmetatable({}, MetaDebugger)
    return instance
end

function Debugger:ShowFPS()
    love.graphics.print("FPS"..tostring(love.timer.getFPS()), 10, 10)
end

return Debugger