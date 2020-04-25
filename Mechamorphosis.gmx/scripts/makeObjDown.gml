///makeObjDown(cx,cy,obj,number)
cx = argument0;
cy = argument1;
obj = argument2;
num = argument3;
for (i = 0; i<num; i++)
{
    instance_create(cx, cy+ 64*i, obj_wall);
}
