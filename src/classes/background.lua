Background = {}
MetaBackground = {}
MetaBackground.__index = Background

function Background.new(xStart, yStart, w, h) -- constructor
    local instance = setmetatable({}, MetaBackground)
    instance.movementSpeed = 100
    instance.x = xStart
    instance.y = yStart
    instance.xStart = xStart
    instance.yStart = yStart
    instance.image = love.graphics.newImage( "src/assets/bg/bg_0001.png" )

    return instance
end

function Background:update(dt)
    if (self.y > 1300)
    then
        self.y = -1200
    else
        self.y = self.y + (self.movementSpeed * dt)
    end
end

function Background:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, 0.3, 0.3)
end


return Background