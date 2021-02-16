$fn=200;   

// Estructura principal
ep_largo=80;
ep_ancho=60;
ep_alto=5;

// Orificio central
h_hole=5;
d_hole_ext=8;
d_hole_center=40;

// Pilar
p_largo=80;
p_ancho=10;
p_alto=15;

// Puntas
pt_diametro=1;
pt_largo=50;

difference()
{
    cube([ep_largo,ep_ancho,ep_alto],center=true);
    hull()
    {
        translate([d_hole_center/2+10,0,0])
        {
            cylinder(h=h_hole,r=d_hole_ext/2, center = true);
        }
        translate([-d_hole_center/2-10,0,0])
        {
            cylinder(h=h_hole,r=d_hole_ext/2, center = true);
        }
        translate([0,0,0])
        {
            cylinder(h=h_hole,r=d_hole_center/2, center = true);
        }
    }
}


    translate([0,ep_ancho/2-p_ancho/2,ep_alto]){
        cube([p_largo,p_ancho,p_alto],center=true); 
    }
        
    // Orificio perfusión 1
    translate([0,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 2
    translate([10,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 3
    translate([20,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 4
    translate([-10,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }
    // Orificio perfusión 5
    translate([-20,ep_ancho/2-p_ancho/2,ep_alto+p_alto/4]){
        rotate([-70, 0, 0]){
            cylinder(h=pt_largo,r=pt_diametro/2, center = true);
        }
    }

    
      





