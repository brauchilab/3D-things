$fn=100;
h1=8;
h2=20;
h3=16;
h4=20;
h5=5;
h6=30;
d=8;



cylinder(h=h1,d=d,center=false);
rotate([0,90,0]) cylinder(h=h2,d=d,center=false);
translate([h2,0,-h3]) cylinder(h=h3,d=d,center=false);
translate([h2,0,-h3]) rotate([0,-90,0]) cylinder(h=h4,d=d,center=false);
translate([0,0,-h5-h3])cylinder(h=h5,d=d,center=false);
translate([0,0,-h5-h3]) rotate([0,-90,0]) cylinder(h=h6,d=d,center=false);