execute as @s if score @s current_ammo_type matches 1 run scoreboard players operation @s current_smg_ammo = @s nbt_smg_ammo
execute as @s if score @s current_ammo_type matches 2 run scoreboard players operation @s current_rifle_ammo = @s nbt_rifle_ammo

# semi auto
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:0b}}}] if score @s semi_shots_fired matches 0 run function coolpack:gun/basic_gun/check_and_shoot

# shots tracker
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:0b}}}] run scoreboard players add @s semi_shots_fired 1
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:1b}}}] run scoreboard players add @s auto_shots_attempted 1

# fire auto gun's first
execute as @a[nbt={SelectedItem:{tag:{gun:1b, auto:1b}}}] if score @s auto_shots_attempted matches 0 run function coolpack:gun/basic_gun/check_and_shoot


schedule function coolpack:gun/base/reset_shots_semi 5t
schedule function coolpack:gun/base/reset_shots_auto 5t
schedule function coolpack:gun/base/reset_shots_burst 5t