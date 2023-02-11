execute as @a[scores={RIGHTCLICK=1..500},nbt={SelectedItem:{tag:{FIREWAND:1}}}] at @s run summon fireball ^ ^1 ^2 {ExplosionPower:3}
scoreboard players reset @a RIGHTCLICK
execute at @a[nbt={SelectedItem:{tag:{Custom:11}}},scores={hit=1..}] run effect give @e[distance=..7,nbt={HurtTime:10s}] minecraft:poison 10 4
execute at @a[nbt={SelectedItem:{tag:{Custom:12}}},scores={hit=1..}] run effect give @e[distance=..7,nbt={HurtTime:10s}] minecraft:nausea 30 4
execute at @a[nbt={SelectedItem:{tag:{Custom:13}}},scores={hit=1..}] run effect give @e[distance=..7,nbt={HurtTime:10s}] minecraft:weakness 10 4
execute at @a[nbt={SelectedItem:{tag:{Custom:14}}},scores={hit=1..}] run effect give @e[distance=..7,nbt={HurtTime:10s}] minecraft:slowness 10 4
execute at @a[nbt={SelectedItem:{tag:{Custom:15}}}] run effect give @a[nbt={SelectedItem:{tag:{Custom:15}}}] minecraft:haste 3 4
execute at @a[nbt={SelectedItem:{tag:{Custom:11}}}] run effect clear @a[nbt={SelectedItem:{tag:{Custom:11}}}] minecraft:poison
execute at @a[nbt={SelectedItem:{tag:{Custom:12}}}] run effect clear @a[nbt={SelectedItem:{tag:{Custom:12}}}] minecraft:nausea
execute at @a[nbt={SelectedItem:{tag:{Custom:13}}}] run effect clear @a[nbt={SelectedItem:{tag:{Custom:13}}}] minecraft:weakness
execute at @a[nbt={SelectedItem:{tag:{Custom:14}}}] run effect clear @a[nbt={SelectedItem:{tag:{Custom:14}}}] minecraft:slowness
effect give @a[nbt={Inventory:[{Slot:100b,tag:{Custom:16}}]}] minecraft:jump_boost 3 3
execute at @a[nbt={Inventory:[{Slot:100b,tag:{Custom:17}}]}] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 minecraft:cobblestone replace lava
execute at @a[nbt={SelectedItem:{tag:{Custom:18}}}] run summon minecraft:experience_bottle
execute if score @a[limit=1] useNetheriteAxe matches 1 if entity @a[nbt={SelectedItem:{tag:{Custom:19}}}] at @a[nbt={SelectedItem:{tag:{Custom:19}}}] run summon minecraft:lightning_bolt ^ ^ ^6
scoreboard players set @a useNetheriteAxe 0
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] at @s if entity @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run kill @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}]
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] at @s if entity @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run kill @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}]
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] at @s if entity @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b}}
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run kill @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}]
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] at @s if entity @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_ingot",Count:1b}}
execute if entity @a[nbt={SelectedItem:{tag:{Custom:20}}}] run kill @e[type=item,nbt={Item:{id:"minecraft:raw_cooper"}}]
execute at @a[scores={mining=1..},nbt={SelectedItem:{tag:{Custom:21}}}] at @e[tag=!used,type=item,distance=..5] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy
execute at @a[nbt={SelectedItem:{tag:{Custom:21}}}] run tag @e[type=minecraft:item,distance=..5] add used
scoreboard players set @a mining 0
effect give @a minecraft:night_vision 60 1 true
execute at @a[nbt={SelectedItem:{tag:{Custom:22}}}] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:barrier replace stone
execute at @a[nbt={SelectedItem:{tag:{Custom:22}}}] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:barrier replace deepslate
execute at @a[nbt={SelectedItem:{tag:{Custom:22}}}] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:barrier replace tuff
execute at @a[nbt=!{SelectedItem:{tag:{Custom:22}}}] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 stone replace barrier
execute at @a[nbt={SelectedItem:{tag:{Custom:23}}}] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:glass replace netherrack
execute at @a[nbt=!{SelectedItem:{tag:{Custom:23}}}] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 netherrack replace glass
execute at @a[nbt={SelectedItem:{tag:{Custom:23}}}] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:glass replace basalt