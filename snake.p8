pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- draw
function _draw()
  cls()
  avance_serpent(x,y)
  dessine_serpent()
end
-->8
--
function _init()
  cls()
  v=2.5
  col=10
  len=5
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
end
-->8
-- update
function _update()
  if (btnp(⬆️)and s!='b')s='h'
  if (btnp(⬇️)and s!='h')s='b'
  if (btnp(⬅️)and s!='d')s='g'
  if (btnp(➡️)and s!='g')s='d'
  if (s=='g') x-=v
  if (s=='d') x+=v
  if (s=='h') y-=v
  if (s=='b') y+=v
  x%=128
  y%=128
end
-->8
-- todo
-- 1 test vitesse pas entiere
-- redessinmer tout le serpent
-- pour voir

-->8
-- redessine serpent
-- a partir tableau chemin
function dessine_serpent()

local c=9
local l=len
for i=#chemin,1,-1 do
 -- print(i)
  
  p=chemin[i]
  if (l>0) 
  then
    cercle(p.x,p.y,c)
    c+=1
    if (c>12) c=9
  else 
    del(chemin,p)
  end
  
  l-=1
end

end

function avance_serpent(x,y)
  local p={}
  p.x=x
  p.y=y
 -- p.c=c
  add(chemin,p)
end
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
