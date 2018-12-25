
ai=Class{}

function ai:init(x,y,width,height)
self.x=x
self.y=y
self.width=width
self.height=height
self.dy=0
end
error=0.9
function ai:update(dt)

  if self.dy < 0 then
      self.y = math.max(0, self.y + self.dy * dt)
      self.y=self.y*error
  else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
        self.y=self.y*error
    end
end



function ai:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
