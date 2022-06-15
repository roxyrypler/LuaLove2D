local BackGround = {}

local x;
local y;

BackGround.Load = function(xStart, yStart)
    image = love.graphics.newImage( "src/assets/bg/bg_0001.png" )
    x = xStart
    y = yStart
end

BackGround.Update = function(dt)
     y = y + 1
end
    
BackGround.Draw = function()
    love.graphics.draw(image, x, y, 0, 0.1, 0.1)
end

return BackGround