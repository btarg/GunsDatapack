# (c) 2023 B Targ: https://curseforge.com/members/btarg1/projects
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add guntype dummy
scoreboard objectives add shots_fired dummy
scoreboard objectives add shots_attempted dummy

scoreboard objectives add current_ammo_type dummy
scoreboard objectives add current_rifle_ammo dummy
scoreboard objectives add current_smg_ammo dummy

scoreboard objectives add current_mag_max_ammo dummy

scoreboard objectives add smg_ammo_in_inventory dummy
scoreboard objectives add rifle_ammo_in_inventory dummy

scoreboard objectives add smg_ammo_temp dummy
scoreboard objectives add smg_ammo_temp_compare dummy
scoreboard objectives add rifle_ammo_temp dummy
scoreboard objectives add rifle_ammo_temp_compare dummy

clear @a
execute as @a run function coolpack:give_guns