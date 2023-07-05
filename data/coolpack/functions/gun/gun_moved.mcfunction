advancement revoke @s only coolpack:gun_moved
execute if data entity @s Inventory[{Slot:-106b}].tag.gun run execute if score @s reload_timer matches 0 run function coolpack:gun/base/reload_weapon