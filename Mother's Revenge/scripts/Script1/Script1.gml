// initialize global variables

global.checkpoint = 0 // can be 0, 1, 2 --> need to buy, can equip, equipped
global.first = false // part of checkpoint, if true then that is the first time reaching the checkpoint in that specific game rounnd
global.glacierGun = false // is glacier gun available for player to equip
global.greenGrenade = false  // is green grenade available for player to equip
global.lightningRod = false  // is lightning rod available for player to equip
global.lives = 1 // number of lives
global.boughtLives = 0 // number of lives player bought from shop
global.solarSniper = false  // is solar sniper available for player to equip
global.currentWeapon = 1 // what weapon is equipped: 1 is sustainable shooter, 2 is glacier gun, 3 is green grenade, 4 is solar sniper, 5 is lightning rod
global.multiplier = 1 // coin multiplier
global.shield = false // invincibility ozone protection shield
global.politicianDefeat = false // has the player defeated the politician