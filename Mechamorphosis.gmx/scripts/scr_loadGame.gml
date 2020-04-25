///loadGame()
if (!file_exists("config.ini"))
{
    show_debug_message("ERROR READING CONFIG FILE, SWAPPING TO DEFAULT CONTROLS");
    global.key_jump = vk_space;
    global.key_attack = ord('J');
    global.key_boost = ord('K');
    global.key_up = ord('W');
    global.key_left = ord('A');
    global.key_down = ord('S');
    global.key_right = ord('D');
    
    ini_open("config.ini");
    ini_write_real("controls","up",global.key_up);
    ini_write_real("controls","down",global.key_down);
    ini_write_real("controls","left",global.key_left);
    ini_write_real("controls","right",global.key_right);
    ini_write_real("controls","jump",global.key_jump);
    ini_write_real("controls","attack",global.key_attack);
    ini_write_real("controls","boost",global.key_boost);
    ini_close();
}
else
{
    ini_open("config.ini");
    global.key_up = ini_read_real("controls","up",ord('W'));
    global.key_down = ini_read_real("controls","down",ord('S'));
    global.key_left = ini_read_real("controls","left",ord('A'));
    global.key_right = ini_read_real("controls","right",ord('D'));
    global.key_jump = ini_read_real("controls","jump",vk_space);
    global.key_attack = ini_read_real("controls","attack",ord('J'));
    global.key_boost = ini_read_real("controls","boost",ord('K'));
    ini_close();
}

