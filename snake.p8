pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- draw
function _draw()
 cls()
--  print(t())
  dessine_serpent()
  dessinepomme()
end
-->8
-- initialisation
function _init()
  cls()
  initpomme()
  v=2.5
  l=0
  col=10
  len=33
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
  init_collision()
end
-->8
-- update
function _update()
  if btnp(⬆️)
     and 
     s!='b'
     and 
     l>5
  then
    s='h'
    l=0
  end
  if btnp(⬇️)
     and 
     s!='h'
     and
     l>5
  then     
     s='b'
     l=0
  end
  if btnp(⬅️)
     and 
     s!='d'
     and
     l>5
  then     
     s='g'
     l=0
  end
  if btnp(➡️)
     and 
     s!='g'
     and
     l>5
  then          
     s='d'
     l=0
  end
  if (s=='g') x-=v
  if (s=='d') x+=v
  if (s=='h') y-=v
  if (s=='b') y+=v
  l+=v
  x%=128
  y%=128
  avance_serpent(x,y)
  if collioupas()
  then
    if cop
    then
      len+=5
    else
       v=0  print("boom")
    end
  end
  updatepomme()
end
-->8
-- todo
-- 1 test vitesse pas entiere
-- redessinmer tout le serpent
-- pour voir
-- vitesse a 2.5 ca passe
-- redessiner serpent 
-- ca va ramer quand serpent
-- grand, peut etre passer em
-- mono couleur sans redessiner
-- au dessus d'un seuil
-- la longueur du serpent est
-- aussi proportionnel a la 
-- vitesse
-- 
-- collision en testant couleur
-- avec pget rappel x y => coin
-- sup gauche de la tete du ser
-- pent
-- premier approche tester 3
-- point a la nouvelle position
-- au milieu a droite et a gauche
-- devant ca depent de la direction
-- actuelle

-->8
-- redessine serpent
-- a partir tableau chemin
function dessine_serpent()

if v==0 then
 print("game over")
end

local c=9
local l=len
for i=#chemin,1,-1 do
 -- print(i)
  
  p=chemin[i]
  if (l>0) 
  then
    if v==0
    then
      c=7
    end  
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
  if v==0
  then
    return
  end
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
-->8
-- collision
-- utilise globales x y s
function collioupas()
local pp=d[s]
local xx=0
local yy=0
local cp
for p in all(pp) do
  xx=x+p.dx
  yy=y+p.dy
  cp=pget(xx%128,yy%128)
  if cp>=9 and cp<=12
  then
    cop=false
    return true
  elseif cp==8 or cp==3
  then
    cop=true
    pv=false
    return true
  end
end
  return false
end
-- on va predefinir une table
-- avec les deltas des points
-- a tester en fct de la direction
-- tables d={}
function init_collision()
d={}
-- direction droite
local points={}
local delta={}
delta.dx=5
delta.dy=0
add(points,delta)
delta={}
delta.dx=5
delta.dy=2
add(points,delta)
delta={}
delta.dx=5
delta.dy=5
add(points,delta)
d["d"]=points

-- direction gauche
points={}
delta={}
delta.dx=0
delta.dy=0
add(points,delta)
delta={}
delta.dx=0
delta.dy=2
add(points,delta)
delta={}
delta.dx=0
delta.dy=5
add(points,delta)
d["g"]=points

-- haut
points={}
delta={}
delta.dx=0
delta.dy=0
add(points,delta)
delta={}
delta.dx=2
delta.dy=0
add(points,delta)
delta={}
delta.dx=5
delta.dy=0
add(points,delta)
d["h"]=points

-- bas
points={}
delta={}
delta.dx=0
delta.dy=5
add(points,delta)
delta={}
delta.dx=2
delta.dy=5
add(points,delta)
delta={}
delta.dx=5
delta.dy=5
add(points,delta)
d["b"]=points


toto=d["b"]
for p in all(toto) do
print( p.dx)
print( p.dy)
end




end

-->8
-- la pomme
-- pv : pomme visible
-- xp , yp : position pomme
-- tp : prochaine apparition
-- cop : collision pomme
function initpomme()
  pv=false
  tp=t()+3
  cop=false
end

function updatepomme()
  if not pv and t()>tp
  then
    pv=true
    xp=60
    yp=60
    tp=t()+5
  end
end

function dessinepomme()
   if pv
   then
    spr(0,xp,yp)
   end
end
__gfx__
03300033000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03338333003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00338330033000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08883888037333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888888633333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888888033333030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888880003003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00088800030003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
010280000e050100501005010050100501005010050100500e0500e0500e0500e0500c0500c0500e0500c0500e0500c0500e0500c0500e0500e05010050100501005010050100500e0500e0500c0500c0500e050
001000000c5500e55010550115501355015550155501355011550105500e5500c5500c5500e55010550115501355015550155501555015550135501355011550115501055010550105500e5500e5500c55000000
__music__
07 01024344

