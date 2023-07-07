# full auto carrot stick
execute as @a[nbt={SelectedItem:{tag:{gun:1b, slow:0b, auto:1b}}}] if score @s auto_shots_attempted matches 1.. run function coolpack:gun/basic_gun/check_and_shoot