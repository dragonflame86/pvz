execute as @e[type=armor_stand,tag=Pea] at @s run tp @s ~ ~ ~-0.2
execute at @e[type=armor_stand,tag=Pea] run scoreboard players add @e[tag=Zombie,tag=!weatherman_boss,limit=1,distance=..1] ZombieHealth 1
execute at @e[type=armor_stand,tag=Pea] run scoreboard players remove @e[tag=weatherman_boss,limit=1,distance=..1] ZombieHealth 1
execute at @e[tag=Zombie] as @e[type=armor_stand,tag=Pea,distance=..1] run particle block lime_concrete ~ ~0.6 ~ 0.1 0.1 0.1 0.1 10 force @a
execute at @e[tag=Zombie] as @s run kill @e[type=armor_stand,tag=Pea,distance=..1]