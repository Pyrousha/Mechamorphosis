///calculateDirection()
switch(boostState)
{
    default:
    {
        if(keyboardBoost == false)
        {
            dir = point_direction(x, y, mouse_x, mouse_y);
            dir /= 45;
            dir = round(dir);
            dir = dir*45;
        }
        else
        {
    
    
            if (keyboard_check(global.key_up)) //90
            {
                if (keyboard_check(global.key_down)) //Up and Down
                {
                    break;
                }
                if ((keyboard_check(global.key_left))&&(!keyboard_check(global.key_right))) //135
                {
                    dir = 135;
                    break;
                }
                if ((keyboard_check(global.key_right))&&(!keyboard_check(global.key_left))) //45
                {
                    dir = 45;
                    break;
                }
                dir = 90;
                break;
            }
            if (keyboard_check(global.key_left))
            {
                if (keyboard_check(global.key_right)) //Left and Right
                {
                    boostState = "charged";
                    break;
                }
                if (keyboard_check(global.key_down)) //225
                {
                    dir = 225;
                    break;
                }
                boostTimer = round(boostDuration*hBoostMult);
                dir = 180; //180
                break;
            }
            if (keyboard_check(global.key_right))
            {
                if (keyboard_check(global.key_down)) //315
                {
                    dir = 315;
                    break;
                }
                boostTimer = round(boostDuration*hBoostMult);
                dir = 0  //0
                break;
            }
            if (keyboard_check(global.key_down)) //270
            {
                dir = 270;
                break;
            }
            
            //not pressing anything
            if (obj_hero_sprite.image_xscale = 1)
            {
                dir = 0;
            }
            else
            {
                dir = 180;
            }
        }
    }
}
