
function love.load()
	image=love.graphics.newImage("8bat.png")
	enemy=love.graphics.newImage("8joker.png")


	x = 100
	y = 200
	r = 0
	sx = 1/5
	sy = 1/5
	ox = 316/2
	oy = 361/2

	ex=50
	ey=150
	er=0
	esx=1/4
	esy=1/4
	eox=enemy:getWidth()/2
	eoy=enemy:getHeight()/2
end







function love.update(dt)
	if love.keyboard.isDown("w") then
		y = y-100*dt
	end
	if love.keyboard.isDown("s") then
		y=y+100*dt
	end
	if love.keyboard.isDown("a") then
		x=x-100*dt
	end
	if love.keyboard.isDown("d") then
		x=x+100*dt
	end
	if love.keyboard.isDown("q") then
		r=r-1*dt
	end
	if love.keyboard.isDown("e") then
		r=r+1*dt
	end
	nx=x-ex
	ny=y-ey

	ex=ex+0.5*nx*dt
	ey=ey+0.5*ny*dt
end



function love.draw()
    love.graphics.draw(image, x, y, r, sx, sy, ox, oy)
    love.graphics.draw(enemy,ex,ey,er,esx*(1/math.log(math.abs(nx+math.exp(1)))*2),esy*(1/math.log(math.abs(ny+math.exp(1)))*2),eox,eoy)
    love.graphics.line(ex,ey,x,y)
end