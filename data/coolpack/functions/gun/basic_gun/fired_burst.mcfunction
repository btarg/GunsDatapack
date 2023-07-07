# firing logic for non burst
execute as @s[scores={burst_timer=0, current_ammo_type=1}] run function coolpack:gun/basic_gun/shoot_smg
execute as @s[scores={burst_timer=0, current_ammo_type=2}] run function coolpack:gun/basic_gun/shoot_rifle

scoreboard players operation @s burst_timer += @s current_burst_delay
scoreboard players add @s burst_shots_success 1

execute if score @s current_burst_size >= @s burst_shots_success run function coolpack:gun/basic_gun/fired_burst

# reset shots fired so we can use it later
execute if score @s burst_shots_success >= @s current_burst_size run scoreboard players set @s shots_fired 0
execute if score @s burst_shots_success >= @s current_burst_size run scoreboard players set @s burst_shots_success 0
