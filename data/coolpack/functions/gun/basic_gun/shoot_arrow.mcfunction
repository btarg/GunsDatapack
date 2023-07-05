summon minecraft:area_effect_cloud ^ ^ ^20 {Duration:0,Tags:["ShootDirection"]}
execute store result score @s pos_x run data get entity @s Pos[0] 10
execute store result score @s pos_y run data get entity @s Pos[1] 10
execute store result score @s pos_z run data get entity @s Pos[2] 10
execute store result score @e[type=area_effect_cloud,tag=ShootDirection,distance=19.8..20.2] pos_x run data get entity @e[type=minecraft:area_effect_cloud,tag=ShootDirection,limit=1,distance=19.8..20.2] Pos[0] 10
execute store result score @e[type=area_effect_cloud,tag=ShootDirection,distance=19.8..20.2] pos_y run data get entity @e[type=minecraft:area_effect_cloud,tag=ShootDirection,limit=1,distance=19.8..20.2] Pos[1] 10
execute store result score @e[type=area_effect_cloud,tag=ShootDirection,distance=19.8..20.2] pos_z run data get entity @e[type=minecraft:area_effect_cloud,tag=ShootDirection,limit=1,distance=19.8..20.2] Pos[2] 10
tp @e[type=minecraft:area_effect_cloud,tag=ShootDirection,distance=19.8..20.2] @s
scoreboard players operation @s pos_x -= @e[type=area_effect_cloud,tag=ShootDirection,limit=1,sort=nearest] pos_x
scoreboard players operation @s pos_y -= @e[type=area_effect_cloud,tag=ShootDirection,limit=1,sort=nearest] pos_y
scoreboard players operation @s pos_z -= @e[type=area_effect_cloud,tag=ShootDirection,limit=1,sort=nearest] pos_z

# fast, accurate and low damage
execute anchored eyes positioned ^ ^ ^ if score @s guntype matches 1 run summon minecraft:arrow ~ ~ ~ {damage:1d,life:1199s,Color:-1,Tags:["ammo", "fast_ammo"],Silent:1}
# slow and droopy but high damage
execute anchored eyes positioned ^ ^ ^ if score @s guntype matches 2 run summon minecraft:arrow ~ ~ ~ {damage:6d,life:1199s,Color:-1,Tags:["ammo", "slow_ammo"],Silent:1}
# DMR semi auto rounds
execute anchored eyes positioned ^ ^ ^ if score @s guntype matches 3 run summon minecraft:arrow ~ ~ ~ {damage:3d,life:1199s,Color:-1,Tags:["ammo", "fast_ammo"],Silent:1}


playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 1 1

execute as @e[type=minecraft:arrow,tag=fast_ammo] at @s run execute store result entity @s Motion[0] double -0.025 run scoreboard players get @p pos_x
execute as @e[type=minecraft:arrow,tag=fast_ammo] at @s run execute store result entity @s Motion[1] double -0.025 run scoreboard players get @p pos_y
execute as @e[type=minecraft:arrow,tag=fast_ammo] at @s run execute store result entity @s Motion[2] double -0.025 run scoreboard players get @p pos_z

execute as @e[type=minecraft:arrow,tag=slow_ammo] at @s run execute store result entity @s Motion[0] double -0.0075 run scoreboard players get @p pos_x
execute as @e[type=minecraft:arrow,tag=slow_ammo] at @s run execute store result entity @s Motion[1] double -0.0075 run scoreboard players get @p pos_y
execute as @e[type=minecraft:arrow,tag=slow_ammo] at @s run execute store result entity @s Motion[2] double -0.0075 run scoreboard players get @p pos_z

execute anchored eyes run particle minecraft:flame ^-0.4 ^ ^0.7 0 0 0 0 1 normal

# check what kind of ammo
execute as @s at @s if score @s current_ammo_type matches 1 run scoreboard players remove @s current_smg_ammo 1
execute as @s at @s if score @s current_ammo_type matches 2 run scoreboard players remove @s current_rifle_ammo 1

function coolpack:gun/basic_gun/recoil