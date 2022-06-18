Player = {}
MetaPlayer = {}
MetaPlayer.__index = Player

function Player.new(x, y)
    local instance = setmetatable({}, MetaPlayer)
    instance.x = x
    instance.y = y
    instance.image = love.graphics.newImage( "src/assets/player.png" )
    instance.body = world:newRectangleCollider(x, y, 80, 120)
    instance.px = x
    instance.py = y
    instance.movementSpeed = 50000
    instance.maxMoveSpeed = 200

    instance.body:setLinearDamping(5)
    instance.body:setFixedRotation(true)
    return instance
end

function Player:update(dt)
    local dx, dy = self.body:getLinearVelocity()
    local px, py = self.body:getPosition()
    self.px = px
    self.py = py


    if (love.keyboard.isDown("w") and dy > -self.maxMoveSpeed) then
        self.body:applyForce(0, -self.movementSpeed)
    end

    if (love.keyboard.isDown("s") and dy < self.maxMoveSpeed) then
        self.body:applyForce(0, self.movementSpeed)
    end

    if (love.keyboard.isDown("a") and dx > -self.maxMoveSpeed) then
        self.body:applyForce(-self.movementSpeed, 0)
    end

    if (love.keyboard.isDown("d") and dx < self.maxMoveSpeed) then
        self.body:applyForce(self.movementSpeed, 0)
    end

end

function Player:draw()
    love.graphics.draw(self.image, self.px - 40, self.py - 60, 0, 0.1, 0.1)
end


return Player