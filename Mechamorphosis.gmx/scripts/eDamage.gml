///eDamage(enemy, dmg)
enemy = argument0;
enemy.hp -= argument1;
if (enemy.hp <= 0) && (enemy.dead ==false)
{
    audio_play_sound(snd_enemyDeath,5,false);
    randomize();
    lootIndex = floor(random(ds_list_size(enemy.lootList)));
    show_debug_message("lootIndex: " + string(lootIndex));
    dropRoll = random(1);
    show_debug_message("dropRoll: " + string(dropRoll));
    if (dropRoll <= enemy.dropRate)
    {
        instance_create(enemy.x,enemy.y,ds_list_find_value(enemy.lootList, lootIndex));
    }
    enemy.visible = false;
    enemy.spriteObj.visible = false;
    enemy.dead = true;
}
else
{
    enemy.spriteObj.image_blend = c_white;
    enemy.spriteObj.alarm[0] = 5;
}

