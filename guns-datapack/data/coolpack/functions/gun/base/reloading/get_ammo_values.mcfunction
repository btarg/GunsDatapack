# store the amount of ammo in a temp scoreboard
execute as @a[nbt={SelectedItem:{tag:{gun:1b}}}] store result score @s smg_ammo_in_inventory run clear @s minecraft:arrow{refill_type:refill_smg} 0
execute as @a[nbt={SelectedItem:{tag:{gun:1b}}}] store result score @s rifle_ammo_in_inventory run clear @s minecraft:arrow{refill_type:refill_rifle} 0