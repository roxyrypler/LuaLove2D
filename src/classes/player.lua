Player = {}
MetaPlayer = {}
MetaPlayer.__index = Player

function Player.new(x, y)
    local instance = setmetatable({}, MetaPlayer)
    instance.x = x
    instance.y = y
    instance.image = love.graphics.newImage( "src/assets/player.png" )

    return instance
end

function Player:update(dt)

end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, 0.1, 0.1)
end

function Player:Move()
end

return Player