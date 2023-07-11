# fire warped fungus based firearms
execute as @a[nbt={SelectedItem:{tag:{gun:1b}}}] if score @s used_fungus_gun matches 1.. run function coolpack:gun/fungus_gun
# make sure normal warped fungus sticks don't add to the scoreboard
execute as @a[nbt=!{SelectedItem:{tag:{gun:1b}}}] if score @s used_fungus_gun matches 1.. run scoreboard players set @s used_fungus_gun 0

execute at @a[nbt={SelectedItem:{}}] run scoreboard players set @p guntype 0
execute at @a[nbt=!{SelectedItem:{}}] run scoreboard players set @p guntype 0


# check player's inventory for gun placeholders
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick", tag:{REPLACE_ME:1b}}]}] run function coolpack:inventory/check_inventory


# custom damage behaviour
execute as @e[type=!#minecraft:arrows, nbt={ActiveEffects:[{Id:27, Amplifier:69b}]}] at @s run function coolpack:damaged

function coolpack:gun/basic_gun/fire_tick

function coolpack:timer/reload_timer
function coolpack:ui/ammo_counter

function coolpack:gun/get_weapon_data
function coolpack:timer/run_cooldowns