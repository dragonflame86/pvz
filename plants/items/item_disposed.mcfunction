tag @e[type=item,nbt={Item:{tag:{item:1b}},OnGround:0b}] add NotonGround
execute as @e[tag=NotonGround] at @s run data merge entity @e[tag=NotonGround,limit=1,distance=..1] {Health:1000000000000000,PickupDelay:32767}
execute as @e[tag=NotonGround] at @s run scoreboard players set @s counter 11
tag @e[type=item,nbt={Item:{tag:{item:1b}},OnGround:1b}] add onGround 
execute as @e[tag=NotonGround,scores={counter=1..}] at @s at @s run particle enchanted_hit ~ ~-0.1 ~ 0 0 0 0 1 force
execute as @e[tag=NotonGround] at @s run data merge entity @e[tag=onGround,limit=1,distance=..1] {Age:12}
tag @e[tag=onGround] remove NotonGround
scoreboard players remove @e[tag=onGround,scores={counter=1..}] counter 1 
execute as @e[tag=onGround,scores={counter=1..}] at @s at @s run particle enchanted_hit ~ ~0.1 ~ 0 0 0 0 1 force
execute as @e[tag=onGround,scores={counter=11}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 2
execute as @e[tag=onGround,scores={counter=10}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.9
execute as @e[tag=onGround,scores={counter=9}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.8
execute as @e[tag=onGround,scores={counter=8}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.7
execute as @e[tag=onGround,scores={counter=7}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.6
execute as @e[tag=onGround,scores={counter=6}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.5
execute as @e[tag=onGround,scores={counter=5}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.4
execute as @e[tag=onGround,scores={counter=4}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.3
execute as @e[tag=onGround,scores={counter=3}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.2
execute as @e[tag=onGround,scores={counter=2}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.1
execute as @e[tag=onGround,scores={counter=1}] at @s run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 2 1.0
execute as @e[tag=onGround,scores={counter=0}] at @s at @s run particle enchanted_hit ~ ~0.5 ~ 0 0 0 0.25 10 force
execute as @e[tag=PlantStandPeashooter] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=north]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasPeashooter,tag=Peashooter_Unlocked] minecraft:bat_spawn_egg{item:1b,Peashooter:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"Peashooter\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Peashooter\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Peashooter_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasPeashooter] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandSunflower] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=north]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasSunflower,tag=Sunflower_Unlocked] minecraft:blaze_spawn_egg{item:1b,Sunflower:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"Sunflower\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Sunflower\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Sunflower_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasSunflower] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandWallnut] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=north]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasWallnut,tag=Wallnut_Unlocked] minecraft:cave_spider_spawn_egg{item:1b,Wallnut:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"Wallnut\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Wallnut\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Wallnut_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasWallnut] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandPotato] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=east]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasPotato,tag=Potato_Unlocked] minecraft:endermite_spawn_egg{item:1b,Potato_Mine:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"potato_mine\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Potato Mine\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Potato_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasPotato] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandBrussel] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=east]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasBrussel,tag=Brussel_Unlocked] minecraft:cod_spawn_egg{item:1b,Potato_Mine:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"brussel_scout\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Brussel Scout\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Brussel_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasBrussel] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandMoonshroom] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=east]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasMoon,tag=Moon_Unlocked] minecraft:cow_spawn_egg{item:1b,moonshroom:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"moonshroom\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Moonshroom\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Moon_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasMoon] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandMuncher] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=east]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasMuncher,tag=Muncher_Unlocked] minecraft:creeper_spawn_egg{item:1b,muncher:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"muncher\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Muncher\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Muncher_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasMuncher] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandMageshroom] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=east]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasMageshroom,tag=Mageshroom_Unlocked] minecraft:dolphin_spawn_egg{item:1b,mageshroom:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"mageshroom\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Mageshroom\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Mageshroom_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasMageshroom] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandLunarLilly] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=south]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasLunarLilly,tag=LunarLilly_Unlocked] minecraft:donkey_spawn_egg{item:1b,lunar_lilly:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"lunar_lilly\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Lunar Lilly\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!LunarLilly_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasLunarLilly] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandLem-Lime] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=south]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasLem-Lime,tag=Lem-Lime_Unlocked] minecraft:drowned_spawn_egg{item:1b,lem-lime:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"lem-lime\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Lem-Lime\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Lem-Lime_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasLem-Lime] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandPome] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=west]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasPome,tag=Pome_Unlocked] minecraft:chicken_spawn_egg{item:1b,pome:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"pome\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Pomegranade\",\"color\":\"green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Pome_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasPome] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandGolden] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=west]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasGold_Pea,tag=Gold_Pea_Unlocked] minecraft:evoker_spawn_egg{item:1b,golden_pea:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"gold_peashooter\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"G-Peashooter\",\"color\":\"gold\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Gold_Pea_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasGold_Pea] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandPosionIvy] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=west]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasPosion_Ivy,tag=Posion_Ivy_Unlocked] minecraft:guardian_spawn_egg{item:1b,golden_pea:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"posion_ivy\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Posion Ivy\",\"color\":\"dark_green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!Posion_Ivy_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasPosion_Ivy] You already have this plant... \"}}"} replace
execute as @e[tag=PlantStandDandeLion] at @s run setblock ~ ~ ~ minecraft:wall_sign[facing=west]{Text1:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[tag=!hasDandeLion,tag=DandeLion_Unlocked] minecraft:husk_spawn_egg{item:1b,golden_pea:1b,display:{Lore:[\\\"§fYou can put this in any slot of your §bhotbar§f.\\\",\\\"\\\",\\\"§fDrop to get rid of §7Seed Packet§f.\\\",\\\"\\\",\\\"§fDo §4NOT §fput this in any other part of your inventory.\\\"]},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:[\\\"PlacePlant\\\",\\\"dandelion\\\"]}} 1\"}}",Text2:"{\"text\":\"Click to get\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"Dandelion\",\"color\":\"dark_green\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=!DandeLion_Unlocked] You don't have that plant yet... ;~;\"}}",Text4:"{\"text\":\"-------------\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/msg @p[tag=hasDandeLion] You already have this plant... \"}}"} replace

kill @e[tag=onGround,scores={counter=0}]