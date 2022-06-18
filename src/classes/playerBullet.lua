Bullet = {}
MetaBullet = {}
MetaBullet.__index = Bullet

function Bullet.new(x, y)
    local instance = setmetatable({}, MetaBullet)
    instance.x = x
    instance.y = y
    instance.body = world:newRectangleCollider(x, y, 10, 10)

    instance.body:applyLinearImpulse(0, -100)
    return instance
end

return Bullet