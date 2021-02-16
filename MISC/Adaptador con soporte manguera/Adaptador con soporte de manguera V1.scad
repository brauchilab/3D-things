include<MCAD/2Dshapes.scad>
$fn=200;
d_cil_o=23.8;
h_cil_o=5;

d_cil_i=22.3;
h_cil_i=5;

wallthick=0.9;
d_cil_2=19;
h_cil_2=0.9;

d_cil_main=34;
h_cil_main=5;
l_main=38;


difference()
{
    cylinder(h=h_cil_o,d=d_cil_o, center=false);
    cylinder(h=h_cil_i,d=d_cil_i, center=false);
}


difference()
{
    cylinder(h=h_cil_2+1,d=d_cil_o, center=false);
    cylinder(h=h_cil_2+1,d=d_cil_2, center=false);
    linear_extrude(wallthick+4) pieSlice(size=22/2, start_angle=0, end_angle=50);
    linear_extrude(wallthick+4) pieSlice(size=22/2, start_angle=180, end_angle=230);
}

difference()
{
    linear_extrude(wallthick+3) pieSlice(size=22/2, start_angle=180, end_angle=185);
    cylinder(h=wallthick+3,d=d_cil_2, center=false);
}
difference()
{
    linear_extrude(wallthick+3) pieSlice(size=22/2, start_angle=0, end_angle=5);
    cylinder(h=wallthick+3,d=d_cil_2, center=false);
}
difference()
{
hull()
{
    difference()
    {
        translate([0,0,h_cil_o])cylinder(h=h_cil_main,d=d_cil_main, center=false);
        translate([0,0,h_cil_o+1])cylinder(h=h_cil_main,d=d_cil_main-2*wallthick, center=false);
        translate([0,0,h_cil_o])cylinder(h=h_cil_o+1,d=d_cil_i, center=false);
    }
    difference()
    {
        translate([39/4,0,h_cil_o+5/2]) cube([39/2,22,5],center=true);
        translate([0,0,h_cil_o+1])cylinder(h=h_cil_main,d=d_cil_main-2*wallthick, center=false);
    }
}
translate([0,0,h_cil_o])cylinder(h=10,d=3,center=true);
}

////// ENTRADA MANGUERA

d_big=6;
d_small=4;
thick=1.3;
l_hor=20;
//vertical
difference()
{
    translate([0,0,h_cil_o+5+5/2])cylinder(h=15,d=d_big,center=true);
    translate([0,0,h_cil_o+5+5/2])cylinder(h=15,d=d_big-thick*2,center=true);
    translate([4,0,h_cil_o+10+5])rotate([0,90,0])cylinder(h=10,d=d_big-thick*2,center=true);
}

//horizontal
difference()
{
    translate([l_hor/2,0,h_cil_o+10+5])rotate([0,90,0])cylinder(h=l_hor,d1=d_big,d2=d_small,center=true);
    translate([l_hor/2,0,h_cil_o+10+5])rotate([0,90,0])cylinder(h=l_hor,d1=d_big-2*thick,d2=d_small-2*thick,center=true);
    translate([0,0,h_cil_o+5+5/2])cylinder(h=10,d=3,center=true);
}
//esfera
difference()
{
    translate([0,0,h_cil_o+10+5])sphere(d=d_big+0.1);
    translate([0,0,h_cil_o+6+5])cylinder(h=10,d=d_big-2*thick,center=true);
    translate([4,0,h_cil_o+10+5])rotate([0,90,0])cylinder(h=10,d=d_big-2*thick,center=true);
}




