///makeObjDown(startX,startY,obj,number)
startX = argument0;
startY = argument1;
obj = argument2;
num = argument3;
for (i = 0; i<num; i++)
{
    instance_create(startX, startY+ 64*i, obj_wall);
}
