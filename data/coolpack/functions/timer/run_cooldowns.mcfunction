# store the amount of ammo in a temp scoreboard
execute as @a at @a[nbt={SelectedItem:{tag:{gun:1b}}}] store result score @s smg_ammo_in_inventory run clear @s minecraft:arrow{refill_type:refill_smg} 0
execute as @a at @a[nbt={SelectedItem:{tag:{gun:1b}}}] store result score @s rifle_ammo_in_inventory run clear @s minecraft:arrow{refill_type:refill_rifle} 0
# check if player should be reloading now
execute as @a at @a[scores={reload_timer=1,current_ammo_type=1}] if score @s smg_ammo_in_inventory matches 1.. run function coolpack:gun/base/try_reload_smg
execute as @a at @a[scores={reload_timer=1,current_ammo_type=2}] if score @s rifle_ammo_in_inventory matches 1.. run function coolpack:gun/base/try_reload_rifle
# count down
scoreboard players remove @e[scores={fire_timer=1..}] fire_timer 1
scoreboard players remove @e[scores={reload_timer=1..}] reload_timer 1