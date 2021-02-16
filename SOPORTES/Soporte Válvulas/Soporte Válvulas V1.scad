include <threads.scad>
$fn=200;
w=5;
d=5;
R=11;
r1=8.5;
r2=8;
r_valve=11;
r_support=6.5;
gap=5;
width=6*gap+8*r_valve+2*r_support;
depth=2*gap+2*r_valve;
height=15;
difference(){
    hull() 
    {
        translate([-width/2+2*r_valve-gap,0,0]) cylinder(h=height,r=depth/2,center=false);
        translate([width/2-2*r_valve+gap,0,0]) cylinder(h=height,r=depth/2,center=false);
        }
    // Soporte
    cylinder(h=height,r=r_support,center=false);
    // Tornillo
    translate([0,20,height/2]){
        rotate([90,0,0]) metric_thread (8,1,15);      
    }
    // Reservorio 1
    translate([4*r_valve+gap,0,0]) cylinder(h=height,r=r_valve,center=false);
    // Reservorio 2
    translate([2*r_valve,0,0])cylinder(h=height,r=r_valve,center=false);
    // Reservorio 3
    translate([-(2*r_valve),0,0]) cylinder(h=height,r=r_valve,center=false);
    // Reservorio 4
    translate([-(4*r_valve+gap),0,0])cylinder(h=height,r=r_valve,center=false);
}
