pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function ii()
 dx=5
 dy=5
 w=100
 h=80
 c=0
 xs=w/2
 ys=h/2
 r=8
 c=0
end
function aaold()
   while not btnp(4)
   do
   end
   while btnp(4)
   do
   end
end
function aa()
   while not btnp(0) 
   and not btnp(1)
   and not btnp(2)
   and not btnp(3)
   do
   end
   if (btnp(0)) xs-=1
   if (btnp(1)) xs+=1
   if (btnp(2)) ys-=1
   if (btnp(3)) ys+=1
   while btnp(0)
   or btnp(1)
   or btnp(2)
   or btnp(3)
   do
   end
end

function bordetclip()
 rect(dx,dy,dx+w-1,dy+h-1,9)
 clip(dx,dy,w,h)
end

function cercle2(x,y,r,c)
 circfill(x,y,r,c)
 pset(x-r,y-r,c-1)
 pset(x+r,y-r,c-1)
 pset(x-r,y+r,c-1)
 pset(x+r,y+r,c-1)
end

function cercle()
	circ(xs+dx,ys+dy,r,c%16)
 c+=1
end
function toto()
 cls()
 print("debut")
 ii()
 cls()
 bordetclip()
 cc=0
 while true
 do
   cc+=1
   cc=cc%8
   cercle2(45+dx,45+dy,r,cc+5)
   r+=1
   aa()
 end
 bordetclip()
 c+=1
 c=c%3
 circfill(xs+dx,ys+dy,3,10+c)
 c+=1
 c=c%3
 pset(xs+dx-3,ys+dy-3,7)
 pset(xs+dx+3,ys+dy-3,7)
 pset(xs+dx-3,ys+dy+3,7)
 pset(xs+dx+3,ys+dy+3,7)
 aa()
 circfill(xs+dx,ys+dy+h,3,10+c)
 aa()
 cls()
 print("suite")
end

function cercle3(x,y,r,c)
-- clip()
 circfill(x,y,r,c)
 pset(x-r,y-r,c-1)
 pset(x+r,y-r,c-1)
 pset(x-r,y+r,c-1)
 pset(x+r,y+r,c-1)
 
 if (x-r<dx)
 then
  -- print("oui")
   x+=w
   circfill(x,y,r,c)
   pset(x-r,y-r,c-1)
   pset(x-r,y+r,c-1)
   
 end  
 
end

function cercle4(r,c)
-- clip()

 while (xs+r) < 0
 do
 	xs+=w
 end
 while (xs-r) >= w
 do
 	xs-=w
 end
 while (ys+r) < 0
 do
 	ys+=h
 end
 while (ys-r) >= w
 do
 	ys-=h
 end

 circfill(xs+dx,ys+dy,r,c)
 pset(xs+dx-r,ys+dy-r,7)
 pset(xs+dx+r,ys+dy-r,7)
 pset(xs+dx-r,ys+dy+r,7)
 pset(xs+dx+r,ys+dy+r,7)

	local ddx=0
	local ddy=0
	local ddrx=0
 
 if (xs-r<dx)
 then
   ddx=w
   ddrx=-r
 end  
 if (xs+r>=w)
 then
   ddx=-w
   ddrx=r
 end

 if (ys-r<dy)
 then
   ddy=h
   ddry=-r
 end  
 if (ys+r>=h)
 then
   ddy=-h
   ddry=r
 end


 if ddx != 0
 then
   circfill(xs+dx+ddx,ys+dy,r,c)
   pset(xs+dx+ddrx+ddx,ys+dy-r,7)
   pset(xs+dx+ddrx+ddx,ys+dy+r,7)   
 end

 if ddy != 0
 then
   circfill(xs+dx,ys+dy+ddy,r,c)
 --  pset(xs+dx+ddrx+ddx,ys+dy-r,7)
 --  pset(xs+dx+ddrx+ddx,ys+dy+r,7)   
 end
 
 if ddy != 0 and ddx != 0
 then
   circfill(xs+dx+ddx,ys+dy+ddy,r,c)
 end

end

function titi()
 cls()
 ii()
 bordetclip()
 cc=0
 r=1
 while true
 do
   cc+=1
   cc=cc%8
   cercle4(r,cc+5)
--   xs+=1
   --ys+=1
   aa()
 end

end
titi()
-->8
--

-->8
--

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
