///saveGame()
if (file_exists("config.ini"))
{
    file_delete("config.ini");
}
ini_open("config.ini");
ini_write_real("controls","up",global.key_up);
ini_write_real("controls","down",global.key_down);
ini_write_real("controls","left",global.key_left);
ini_write_real("controls","right",global.key_right);
ini_write_real("controls","jump",global.key_jump);
ini_write_real("controls","attack",global.key_attack);
ini_write_real("controls","boost",global.key_boost);
ini_close();
