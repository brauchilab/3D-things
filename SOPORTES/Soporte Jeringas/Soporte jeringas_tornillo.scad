include <threads.scad>


difference()
{
    union()
    {
        metric_thread (8,1,18);
        translate([0,0,19])cylinder(h=2,r=8, center = true); 
    }
    translate([0,0,19])
    {
        cube([7,1,2],center=true);
        cube([1,7,2],center=true);
    }
}
