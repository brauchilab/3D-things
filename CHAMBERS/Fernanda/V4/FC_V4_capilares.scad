include <roundedcube.scad>
$fn=200;   

// Estructura principal
ep_largo=60;
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


disy=25;
pt_largo=200;
angle=78;


//Pilar capilares
difference(){
    translate([0,ep_ancho/2-p_ancho/2+disy,ep_alto-1]){
        roundedcube([ep_largo,p_ancho,p_alto], true, 0.2, "zmax");
        //cube([p_largo,p_ancho,p_alto],center=true); 
    }
    // Orificio perfusión 1
    translate([0,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 2
    translate([5,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 3
    translate([10,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 4
    translate([-5,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 5
    translate([-10,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 6
    translate([-15,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 7
    translate([+15,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 8
    translate([-20,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 9
    translate([+20,ep_ancho/2-p_ancho/2+disy,ep_alto+p_alto/4]){
        rotate([-angle, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    translate([0,d_hole_center/2+5,0]) cube([5,80,4], center=true);
}
