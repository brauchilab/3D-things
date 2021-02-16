include <threads.scad>
$fn=50;
w=5;
d=5;
R=11;
r1=8.5;
r2=8;
r_valve=19.5/2;
r_support=5;
h_support=60;
gap=4;
width=6*gap+8*r_valve+2*r_support;
depth=2*gap+2*r_valve;
height=20;
d_tornillo=6;
p_tornillo=1;
l_tornillo=25;
difference()
{
        translate([4*r_valve+gap,0,0]) cylinder(h=height,r=depth/2,center=false);
    // Válvula 1
    translate([4*r_valve+gap,0,0]) cylinder(h=height,r=r_valve,center=false);
}
difference()
{
        translate([2*r_valve,0,0]) cylinder(h=height,r=depth/2,center=false);
    
    // Válvula 2
    translate([2*r_valve,0,0])cylinder(h=height,r=r_valve,center=false);
}
difference()
{
        translate([-(2*r_valve),0,0]) cylinder(h=height,r=depth/2 ,center=false);
     // Válvula 3
    translate([-(2*r_valve),0,0]) cylinder(h=height,r=r_valve,center=false);
}
difference()
{
        translate([-(4*r_valve+gap),0,0]) cylinder(h=height,r=depth/2,center=false);
       // Válvula 4
    translate([-(4*r_valve+gap),0,0])cylinder(h=height,r=r_valve,center=false);
}      
difference(){
    cylinder(h=height,r=depth/2-5,center=false);
    // Soporte
    metric_thread (d_tornillo, p_tornillo, l_tornillo);
    // Tornillo
    translate([0,20,height/2]){
        rotate([90,0,0]) cylinder(h=h_support,r=r_support,center=false);    
    }
}
