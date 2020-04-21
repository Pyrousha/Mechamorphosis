///checkHpHero
if (obj_hero.hp <= 0)
{
    obj_hero.y-=1;
    obj_hero.intro = true;
    obj_hero.hSpd = -10;
    obj_hero.vSpd = 10;
    fadeout(rm_dead,15);
}
