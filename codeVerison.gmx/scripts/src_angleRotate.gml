/// src_angleRotate
angle = argument0;
baseDiff = argument1;
rotateSpeed = argument2;

calc = angle + median(-rotateSpeed, rotateSpeed, angle_difference(baseDiff, angle));
return calc;
