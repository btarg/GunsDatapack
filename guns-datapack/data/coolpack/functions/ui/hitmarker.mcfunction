execute as @s[tag=hitmarker_normal] run title @s times 0 10t 10t
execute as @s[tag=hitmarker_killed] run title @s times 0 10t 10t

execute as @s[tag=hitmarker_killed] run title @s title {"text":"\uEff2","color":"#4e5c24"}
execute as @s[tag=hitmarker_killed] run playsound gunpack:hitmarker.cod player @s ~ ~ ~ 0.5 1 1


execute as @s[tag=hitmarker_normal, tag=!hitmarker_killed] run title @s title {"text":"\uEff1","color":"#4e5c24"}
execute as @s[tag=hitmarker_normal, tag=!hitmarker_killed] run playsound gunpack:hitmarker.cod player @s ~ ~ ~ 0.5 1 1

execute as @s[tag=hitmarker_normal] run tag @s remove hitmarker_normal
execute as @s[tag=hitmarker_killed] run tag @s remove hitmarker_killed
