# (c) 2023 B Targ: https://curseforge.com/members/btarg1/projects

scoreboard objectives add auto_shots_attempted dummy
scoreboard objectives add burst_shots_success dummy
scoreboard objectives add burst_timer dummy
scoreboard objectives add check_gun_id dummy
scoreboard objectives add current_ammo_type dummy
scoreboard objectives add current_ammo_type_offhand dummy
scoreboard objectives add current_attempts_needed dummy
scoreboard objectives add current_burst_delay dummy
scoreboard objectives add current_burst_size dummy
scoreboard objectives add current_damage dummy
scoreboard objectives add current_fire_delay dummy
scoreboard objectives add current_is_auto dummy
scoreboard objectives add current_mag_max_ammo dummy
scoreboard objectives add current_rifle_ammo dummy
scoreboard objectives add current_smg_ammo dummy
scoreboard objectives add fire_timer dummy
scoreboard objectives add global dummy
scoreboard objectives add guntype dummy
scoreboard objectives add nbt_rifle_ammo dummy
scoreboard objectives add nbt_smg_ammo dummy
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add reload_timer dummy
scoreboard objectives add rifle_ammo_in_inventory dummy
scoreboard objectives add rifle_ammo_needed dummy
scoreboard objectives add semi_shots_fired dummy
scoreboard objectives add shots_fired dummy
scoreboard objectives add slots_checked dummy
scoreboard objectives add smg_ammo_in_inventory dummy
scoreboard objectives add smg_ammo_needed dummy
scoreboard objectives add storage_has_gun_0 dummy
scoreboard objectives add used_fungus_gun minecraft.used:minecraft.warped_fungus_on_a_stick

# initialise variables
scoreboard players set @a shots_fired 0
scoreboard players set @a current_smg_ammo 0
scoreboard players set @a current_rifle_ammo 0

execute as @a run function coolpack:give_guns
execute as @a run function coolpack:inventory/weapon_definitions