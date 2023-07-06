# fire warped fungus based firearms
execute as @a[nbt={SelectedItem:{tag:{gun:1b}}}] if score @s used_fungus_gun matches 1.. run function coolpack:gun/fungus_gun


kill @e[type=minecraft:eye_of_ender,nbt={Item:{tag:{gun:1b}}}]

execute at @a[nbt={SelectedItem:{}}] run scoreboard players set @p guntype 0
execute at @a[nbt=!{SelectedItem:{}}] run scoreboard players set @p guntype 0

# semi auto gun behaviour: only allow 1 shot
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:0b}}}] run execute at @s if score @s shots_attempted matches 0.. run execute at @s run scoreboard players remove @s shots_attempted 1

# reset shots to -1 when switching weapons
execute at @a[nbt=!{SelectedItem:{tag:{gun:1b, slow:1b}}}] run scoreboard players set @p shots_attempted -1

# remove ground arrows
kill @e[type=arrow, tag=ammo, nbt={inGround:1b}]

function coolpack:ui/ammo_counter
function coolpack:gun/guntypes
function coolpack:timer/run_cooldowns