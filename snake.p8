pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- draw
function _draw()
 -- cls()
--  spr(0,0,0)
--  x=3 y=3
 -- cls()
  cercle(x,y,col)
  col+=1
  if (col>12) col=9
--  circfill(125,3,3,9)
--  circfill(x,y,3,cs)
  local position={}
  position.x=x
  position.y=y
  add(chemin,position)
  local l=#chemin
  if l>len then
   -- print(l)
    local a=chemin[1]
    -- print(a.x)
    -- print(a.y)
  --  circfill(a.x,a.y,3,0)
    cercle(a.x,a.y,0)
    del(chemin,a)
  end
 -- print(s)
end
-->8
--
function _init()
  cls()
  col=10
  len=50
 -- cercle(2,3)
  xx=2
  yy=3
--  cercle(128-6,0)
-- couleur serpent
  cs=9
  x=57
  y=57
-- s : sens d g h b
  s='g'
  chemin={}
  for i=1,10
  do
	 cercle(x-i,y,10)
	 local position={}
  position.x=x-i
  position.y=y
  add(chemin,position)
	 end
	 cercle(x+1,y,0)
	 x-=10
end
-->8
function _update()
  if (btnp(⬆️)and s!='b')s='h'
  if (btnp(⬇️)and s!='h')s='b'
  if (btnp(⬅️)and s!='d')s='g'
  if (btnp(➡️)and s!='g')s='d'
  if (s=='g') x-=1
  if (s=='d') x+=1
  if (s=='h') y-=1
  if (s=='b') y+=1
  x%=128
  y%=128
end
-->8

-->8

-->8
function 
cercleourectangle(x,y,c)
if c==42
then
		rectfill(x,y,x+6,y+6,c)
else
	circfill(x+3,y+3,3,c)
end


end

-- dessine du cercle sur les 
-- bords
-- x y centre du cercle
function cercle(x,y,c)
-- print(" ")
-- print(x)
 x%=128
	y%=128
--	circfill(x+3,y+3,3,c)
cercleourectangle(x,y,c)
	local xa=false
	local xx=0
	local ya=false
	local yy=0
	if x >= 122
	then
	  xa=true
	  xx=x-128
	 -- circfill(xx+3,y+3,3,c)
	 cercleourectangle(xx,y,c)
	end
	if y >= 122
	then
	  ya=true
	  yy=y-128
--	  circfill(x+3,yy+3,3,c)
	  cercleourectangle(x,yy,c)
	end
	if xa and ya
	then
	  --circfill(xx+3,yy+3,3,c)
	  cercleourectangle(xx,yy,c)
	end
	
end
__gfx__
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
