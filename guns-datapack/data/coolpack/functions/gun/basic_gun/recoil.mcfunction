#TODO: make this value somehow tied to a scoreboard so it can be read from nbt
tp @s ~ ~ ~ ~ ~-1
execute as @s at @s if score @s guntype matches 3 run tp @s ~ ~ ~ ~ ~-4