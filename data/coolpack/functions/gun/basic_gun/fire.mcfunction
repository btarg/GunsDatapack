execute as @s if score @s current_ammo_type matches 1 run scoreboard players operation @s current_smg_ammo = @s nbt_smg_ammo
execute as @s if score @s current_ammo_type matches 2 run scoreboard players operation @s current_rifle_ammo = @s nbt_rifle_ammo

# first time firing a slow weapon or trying to fire X ticks after last firing/spinning up
execute as @a[nbt={SelectedItem:{tag:{gun:1b, slow:1b, auto:1b}}}] if score @s shots_attempted matches -1 run function coolpack:gun/basic_gun/check_and_shoot

# semi auto
execute as @a[nbt={SelectedItem:{tag:{gun:1b, slow:1b, auto:0b}}}] if score @s semi_shots_fired matches 0 run function coolpack:gun/basic_gun/check_and_shoot

# slow guns only add 1 at a time
execute as @a[nbt={SelectedItem:{tag:{gun:1b, slow:1b}}}] run scoreboard players add @s shots_attempted 1

# shots tracker
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:0b}}}] run scoreboard players add @s semi_shots_fired 1
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:1b}}}] run scoreboard players add @s auto_shots_attempted 1

# fire slow gun
execute as @a[nbt={SelectedItem:{tag:{gun:1b, slow:1b}}}] if score @s shots_attempted = @s current_attempts_needed run function coolpack:gun/basic_gun/check_and_shoot

# fire fast gun
execute as @a[nbt={SelectedItem:{tag:{gun:1b, slow:0b}}}] run function coolpack:gun/basic_gun/check_and_shoot


schedule function coolpack:gun/base/reset_shots_slow 10t
schedule function coolpack:gun/base/reset_shots_semi 5t
schedule function coolpack:gun/base/reset_shots_auto 5t
schedule function coolpack:gun/base/reset_shots_burst 5t
