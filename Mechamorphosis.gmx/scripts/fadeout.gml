//fadeout(room, time)
if (instance_exists(obj_fadeOut))
{
    exit;
}
with (instance_create(view_xview,view_yview,obj_fadeOut))
{
    targRoom = argument0;
    timerMax = argument1;
}
