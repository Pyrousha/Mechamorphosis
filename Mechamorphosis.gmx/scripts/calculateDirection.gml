///calculateDirection()
switch(boostState)
{
    default:
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
            
    }
}
