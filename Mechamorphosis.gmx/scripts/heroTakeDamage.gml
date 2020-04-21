///heroTakeDamage(dmg)
obj_hero.hp -= argument0;
audio_play_sound(snd_hit,5,false);
checkHpHero();
obj_hero.boostState = "charged";
obj_hero.spriteObj.image_blend = c_blue;
obj_hero.spriteObj.alarm[0] = 5;
obj_hero.spriteObj.image_alpha = 0.65;
obj_hero.invincible = "true";
obj_hero.alarm[0] = 60;

