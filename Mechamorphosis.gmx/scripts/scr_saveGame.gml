///saveGame()
ini_open("config.ini");

//Speedrun
if(global.bestTime > 0) //this keeps being set to 0 for some reason, da heck bro!!
{
    ini_write_real("speedrun","frames",global.frames);
    ini_write_real("speedrun","seconds",global.seconds);
    ini_write_real("speedrun","mins",global.mins);
    ini_write_real("speedrun","bestTime",global.bestTime);
}
    
//Controls
ini_write_real("controls","boost",global.key_boost);
ini_write_real("controls","attack",global.key_attack);
ini_write_real("controls","jump",global.key_jump);
ini_write_real("controls","right",global.key_right);
ini_write_real("controls","left",global.key_left);
ini_write_real("controls","down",global.key_down);
ini_write_real("controls","up",global.key_up);

ini_close();
