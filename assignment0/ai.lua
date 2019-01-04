
ai=Class{}
math.randomseed(os.time())
function ai:init(x,y,width,height)
self.x=x
self.y=y
self.width=width
self.height=height
self.dy=0
end
error=0.90

function ai:update(dt)
    -- math.max here ensures that we're the greater of 0 or the player's
    -- current calculated Y position when pressing up so that we don't
    -- go into the negatives; the movement calculation is simply our
    -- previously-defined paddle speed scaled by dt
    if self.dy < 0 then
        self.y = math.max(0, self.y)
    -- similar to before, this time we use math.min to ensure we don't
    -- go any farther than the bottom of the screen minus the paddle's
    -- height (or else it will go partially below, since position is
    -- based on its top left corner)
    else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y)
    end
end



function ai:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
