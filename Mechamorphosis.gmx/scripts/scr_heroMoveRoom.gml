///scr_heroMoveRoom()
switch(room)
{
    case (rm_lv1):
    {
        if (y < 960)
        {
            if (x < 5824) //intro long room
            {
                view_object[0] = self;
                shiftRoom = false;
                view_x = view_xview;
                view_y = view_yview;
                view_x1 = view_x;
                view_y1 = view_y;
            }
        }
        else
        {
            if (y > 1920) && (y < 2880) 
            {
                if (x > 2496) && (x < 7488) //second long room
                {
                    view_object[0] = self;
                    shiftRoom = false;
                    view_x = view_xview;
                    view_y = view_yview;
                    view_x1 = view_x;
                    view_y1 = view_y;
                }
            }
            else
            {
                if (y > 3840) && (y < 4800)
                {
                    if (x > -832)&&(x < 7488)
                    {
                        shiftRoom = false;
                        if (x < 832)
                        {
                            view_xview = x - view_wview/2
                        }
                        else
                        {
                            view_object[0] = self;
                        }
                        view_x = view_xview;
                        view_y = view_yview;
                        view_x1 = view_x;
                        view_y1 = view_y;
                    }
                }
            }
        }   

        if (y > 832) && (y<1920) 
        {
            if ((x > 6656)&&(x < 8320)) //first pit room
            {
                view_object[0] = noone;
                shiftRoom = false;
            }
        }
        else
        {
            if (y > 2752) && (y < 3840)
            {
                if ((x > 1664) && (x < 8320)) || ((x > 9984) && (x < 13312)) //Second and fourth pit rooms
                {
                    view_object[0] = noone;
                    shiftRoom = false;
                }
            }
            else
            {
                if (y > 4672) //3rd pit room
                {
                    view_object[0] = noone;
                    shiftRoom = false;
                }
            }
        }
        break;
    }
    case (rm_lv2):
    {
        view_object[0] = self;
        shiftRoom = false;
        view_x = view_xview;
        view_y = view_yview;
        view_x1 = view_x;
        view_y1 = view_y;
        break;
    }
}
