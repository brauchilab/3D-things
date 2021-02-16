include <roundedcube.scad>
$fn=200;   

// Estructura principal
ep_largo=80;
ep_ancho=60;
ep_alto=7;

// Orificio central
h_hole=4;
d_hole_ext1=12;
d_hole_ext2=35;
d_hole_center=50;

// Piscina central inf
pc_largo=48;
pc_ancho=22;
pc_alto=5;

// Piscina central sup
pc2_largo=50.5;
pc2_ancho=24.5;
pc2_alto=4;


// Pilar 1
p_largo=40;
p_ancho=10;
p_alto=15;

// Puntas
pt_diametro=1;
pt_largo=50;

// Pilar 2
p2_largo=10;
p2_ancho=35;
p2_alto=15;
dp2=10;

// Puntas 2
pt2_diametro=1;
pt2_largo=20;
dopz=8;
dopx=15;

// Cilindro alimentación
h_feed=10;
d_feed=5;




translate([0,d_hole_center/2-5,0]) cylinder(h=5,d=8,center=true);
translate([0,d_hole_center/2+15,0]) cube([5,40,4], center=true);
translate([0,d_hole_center/2+2,0]) cube([10,3.5,4], center=true);

