data modify storage gun offhand.Slot set value 0b
data modify block 0 -64 0 Items append from storage gun offhand
item replace entity @s weapon.offhand with air
loot give @s mine 0 -64 0 air{drop_contents:true}