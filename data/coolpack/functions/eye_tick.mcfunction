# eye of ender into storage
execute as @e[limit=1, type=minecraft:eye_of_ender,nbt={Item:{tag:{gun:1b}}}] at @s run data modify storage main ender_eye set from entity @e[limit=1, type=minecraft:eye_of_ender,nbt={Item:{tag:{gun:1b}}}] Item.tag

# give to player
execute at @e[limit=1, type=minecraft:eye_of_ender,nbt={Item:{tag:{gun:1b}}}] at @p run item replace entity @p weapon.mainhand with ender_eye
execute at @e[limit=1, type=minecraft:eye_of_ender,nbt={Item:{tag:{gun:1b}}}] at @p run item modify entity @p weapon.mainhand coolpack:copy_gun_nbt


# kill eye of ender
kill @e[type=minecraft:eye_of_ender,nbt={Item:{tag:{gun:1b}}}]

