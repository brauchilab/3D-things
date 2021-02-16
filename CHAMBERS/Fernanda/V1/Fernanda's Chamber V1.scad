include <roundedcube.scad>
$fn=200;   

// Estructura principal
ep_largo=80;
ep_ancho=60;
ep_alto=5;

// Orificio central
h_hole=5;
d_hole_ext1=8;
d_hole_ext2=30;
d_hole_center=40;

// Piscina central
pc_largo=38;
pc_ancho=20;
pc_alto=5;

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


difference()
{
    cube([ep_largo,ep_ancho,ep_alto],center=true);
    hull()
    {
        translate([d_hole_center/2+10,0,1.5])
        {
            cylinder(h=h_hole,r=d_hole_ext2/2, center = true);
        }
        translate([-d_hole_center/2-10,0,1.5])
        {
            cylinder(h=h_hole,r=d_hole_ext1/2, center = true);
        }
        translate([0,0,1.5])
        {
            cylinder(h=h_hole,r=d_hole_center/2, center = true);
        }
    }
    cube([pc_largo,pc_ancho,pc_alto],center=true);
}




//Pilar 1
difference(){
    translate([0,ep_ancho/2-p_ancho/2,ep_alto]){
        roundedcube([p_largo,p_ancho,p_alto], true, 0.2, "zmax");
        //cube([p_largo,p_ancho,p_alto],center=true); 
    }
        
    // Orificio perfusión 1
    translate([0,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 2
    translate([5,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 3
    translate([10,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 4
    translate([-5,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 5
    translate([-10,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 6
    translate([-15,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 7
    translate([+15,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
}

// Pilar 2
difference(){
    union()
    {
        translate([ep_largo/2-p2_largo/2-dp2,0,ep_alto])
        {
            rotate([90, 0, 0])
            {
                cylinder(h=p2_ancho,r=p2_alto/2, center=true); 
            }
        }
        translate([ep_largo/2-d_feed-dp2,0, ep_alto+p2_alto/2]) 
        {
            cylinder(h=h_feed, r=d_feed/2, center=true);
        }
    }
    translate([ep_largo/2-d_feed-dp2,0, ep_alto+p2_alto/2]) 
    {
        cylinder(h=h_feed+5, r=d_feed/2-1, center=true);
    }
    translate([ep_largo/2-p2_largo/2-dp2,0,ep_alto])
    {
        rotate([90, 0, 0])
        {
            cylinder(h=p2_ancho-3,r=p2_alto/2-2, center=true); 
        }
    }

            
    // Orificio perfusión 1
    translate([ep_largo/2-p2_largo/2-dopx,0,ep_alto+p_alto/4-dopz]){
        rotate([0, 70, 0]){
            cylinder(h=pt2_largo,r=pt2_diametro/2, center = true);
        }
    }
    // Orificio perfusión 2
    translate([ep_largo/2-p2_largo/2-dopx,3,ep_alto+p_alto/4-dopz]){
        rotate([0, 70, 0]){
            cylinder(h=pt2_largo,r=pt2_diametro/2, center = true);
        }
    }
    // Orificio perfusión 3
    translate([ep_largo/2-p2_largo/2-dopx,6,ep_alto+p_alto/4-dopz]){
        rotate([0, 70, 0]){
            cylinder(h=pt2_largo,r=pt2_diametro/2, center = true);
        }
    }
    // Orificio perfusión 4
    translate([ep_largo/2-p2_largo/2-dopx,-3,ep_alto+p_alto/4-dopz]){
        rotate([0, 70, 0]){
            cylinder(h=pt2_largo,r=pt2_diametro/2, center = true);
        }
    }
    // Orificio perfusión 5
    translate([ep_largo/2-p2_largo/2-dopx,-6,ep_alto+p_alto/4-dopz]){
        rotate([0, 70, 0]){
            cylinder(h=pt2_largo,r=pt2_diametro/2, center = true);
        }
    }
}

translate([ep_largo/2-6,0,0]) cube([12,ep_ancho,ep_alto],center=true);

