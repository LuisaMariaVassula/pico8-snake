pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- lecture doc
--[[
ce ci est un commentaire
multi ligne
]]
-- types nombres chaine
-- booleen et tableau
num = 12/100
s   = "cette chaine"
b   = false
t   = {1,2,3}
v = 3.14
print("les nombre sont des 'fixed points'")
print( v )

-->8
-- tests
if not b then
	print("b est faux")
else
	print("b vrai")
end
x=1
if x == 0 then
	print("x est 0")
elseif x < 0 then
	print("x est negatif")
else
	print("positif")
end
if (4==4) then print("=") end
if (4~=3) then print("pas egal") end
if (4<=4) then print("inf egal") end
if (4 > 3) then print("sup") end
-->8
-- boucles
for x=1,5 do
	print(x)
end
x=1
while (x<=5) do
	print(x)
	x=x+1
end
for x=1,10,3 do print(x)end
for x=5,1,-2 do print(x)end
print(x)

-->8
-- fonctions et var locales
y=0
function plusun(x)
	local y=x+1
	return y
end
print( plusun(2) )
print(y)


-->8
-- tableaux
a={}
a[1]= "fred"
a[2]=42
a["foo"]={1,2,3}
-- indice commence a 1
a={11,12,13,14}
print(a[2]) -- 12
-- force zero
a={[0]=10,11,12,13,14}
print(a[0]) -- 10
print(#a)
add(a, 15)
print(#a)
player={}
player.x=2
player.y=3

-->8
-- racourcis
if (not b) i=1 j=2
print(i) print(j)
a=0
a+=2
print(a)
print(1!=2)
print("faux" == "faux")

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
