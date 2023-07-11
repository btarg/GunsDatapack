# firing logic for burst
execute as @s[scores={burst_timer=0, current_ammo_type=1}] if score @s current_burst_size > @s burst_shots_success run function coolpack:gun/basic_gun/shoot_smg
execute as @s[scores={burst_timer=0, current_ammo_type=2}] if score @s current_burst_size > @s burst_shots_success run function coolpack:gun/basic_gun/shoot_rifle

scoreboard players add @s[scores={burst_timer=0}] burst_shots_success 1

# add delay between shots
execute as @s[scores={burst_timer=0}] if score @s current_burst_size > @s burst_shots_success run scoreboard players operation @s burst_timer += @s current_burst_delay


# reset shots fired so we can use it later
execute if score @s burst_shots_success > @s current_burst_size run scoreboard players operation @s fire_timer = @s current_fire_delay
execute if score @s burst_shots_success > @s current_burst_size run scoreboard players set @s burst_shots_success 0

