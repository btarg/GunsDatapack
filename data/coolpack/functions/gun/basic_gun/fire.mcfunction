advancement revoke @s only coolpack:fire_events/fire_eye

execute as @s if score @s current_ammo_type matches 1 run scoreboard players operation @s current_smg_ammo = @s nbt_smg_ammo
execute as @s if score @s current_ammo_type matches 2 run scoreboard players operation @s current_rifle_ammo = @s nbt_rifle_ammo

# first time firing a slow weapon or trying to fire X ticks after last firing/spinning up
execute as @s at @s[nbt={SelectedItem:{tag:{gun:1b, slow:1b}}}] if score @s shots_attempted matches -1 run function coolpack:gun/basic_gun/check_and_shoot

# fast guns immediately fire (needs to be add to prevent semi autos from working)
execute as @s at @s[nbt={SelectedItem:{tag:{gun:1b, slow:0b}}}] run scoreboard players add @s shots_attempted 4

# slow guns only add 1 at a time
execute as @s at @s[nbt={SelectedItem:{tag:{gun:1b, slow:1b}}}] run scoreboard players add @s shots_attempted 1

execute as @s at @s if score @s shots_attempted matches 3.. run function coolpack:gun/basic_gun/check_and_shoot
schedule function coolpack:gun/base/reset_shots 10t