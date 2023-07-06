# set gun's own ammo tag to whatever we just set the ammo to before
data modify storage main gun set from entity @s SelectedItem
execute as @s at @s if score @s current_ammo_type matches 1 run execute store result storage main gun.tag.ammo int 1 run scoreboard players get @s current_smg_ammo
execute as @s at @s if score @s current_ammo_type matches 2 run execute store result storage main gun.tag.ammo int 1 run scoreboard players get @s current_rifle_ammo

# give the player back their gun with the new tag
item modify entity @s weapon.mainhand coolpack:ammo_from_storage