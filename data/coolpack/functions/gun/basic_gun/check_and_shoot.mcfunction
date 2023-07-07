scoreboard players add @s shots_fired 1
# firing logic for non burst
execute as @s[scores={fire_timer=0, current_ammo_type=1, current_burst_size=0}] run function coolpack:gun/basic_gun/shoot_smg
execute as @s[scores={fire_timer=0, current_ammo_type=2, current_burst_size=0}] run function coolpack:gun/basic_gun/shoot_rifle


# make sure we dont go over burst count
# if shots fired = burst size then do not fire
execute as @s[scores={fire_timer=0, current_burst_size=1..}] run function coolpack:gun/basic_gun/fired_burst


execute as @s[scores={fire_timer=0}] run scoreboard players set @s shots_attempted 0
execute as @s[scores={fire_timer=0}] run scoreboard players operation @s fire_timer = @s current_fire_delay

schedule function coolpack:gun/base/reset_shots_fired 10t
function coolpack:gun/base/update_ammo