///loadGame()
if (!file_exists("config.ini"))
{
    global.key_jump = vk_space;
    global.key_attack = ord('J');
    global.key_boost = ord('K');
    global.key_up = ord('W');
    global.key_left = ord('A');
    global.key_down = ord('S');
    global.key_right = ord('D');
    global.bestTime = 18000;
    
    ini_open("config.ini");
    
    //Speedrun
    ini_write_real("speedrun","frames",0);
    ini_write_real("speedrun","seconds",0);
    ini_write_real("speedrun","mins",5);
    ini_write_real("speedrun","bestTime",global.bestTime);
    
    //Controls
    ini_write_real("controls","boost",global.key_boost);
    ini_write_real("controls","attack",global.key_attack);
    ini_write_real("controls","jump",global.key_jump);
    ini_write_real("controls","right",global.key_right);
    ini_write_real("controls","left",global.key_left);
    ini_write_real("controls","down",global.key_down);
    ini_write_real("controls","up",global.key_up);
    
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
    
    global.bestTime = ini_read_real("speedrun","bestTime",18000);
    global.mins = ini_read_real("speedrun","mins",18000);
    global.seconds = ini_read_real("speedrun","seconds",0);
    global.frames = ini_read_real("speedrun","frames",0);
    
    ini_close();
}

