advancement revoke @s only coolpack:fire_events/fire_eye

# first time firing a slow weapon or trying to fire 5 ticks after last firing/spinning up
execute as @s at @s[nbt={SelectedItem:{tag:{gun:1b, slow:1b}}}] if score @s shots_attempted matches -1 run function coolpack:gun/basic_gun/check_and_shoot

# fast guns immediately fire (needs to be add to prevent semi autos from working)
execute as @s at @s[nbt={SelectedItem:{tag:{gun:1b, slow:0b}}}] run scoreboard players add @s shots_attempted 6

# slow guns only add 1 at a time
execute as @s at @s[nbt={SelectedItem:{tag:{gun:1b, slow:1b}}}] run scoreboard players add @s shots_attempted 1

execute as @s at @s if score @s shots_attempted matches 5.. run function coolpack:gun/basic_gun/check_and_shoot
schedule function coolpack:gun/base/reset_shots 5t