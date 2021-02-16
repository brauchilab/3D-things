
$fn=200;

difference(){
    cube([40,30,30],center=true);
    translate([0,0,5])cube([40-5,30-5,30],center=true);
    hull()
    {
         translate([0,1,0])rotate([0,90,0])cylinder(h=50,r=2, center = true);
         translate([0,-1,0])rotate([0,90,0])cylinder(h=50,r=2, center = true);
        }
}

difference(){
    translate([0,0,30/2+1])cube([40-2.5,30-2.5,2],center=true);
    translate([0,0,30/2+1])cube([40-5,30-5,2],center=true);
}
