$fn=200;
d_externo=32.8;
d_interno_center=14;
d_interno_ext=3;
d_ring=26;
d_punta=2.8;
h_hole=5;
h_pilar=7;
difference()
{
    // Exterior
    cylinder(h=h_hole,r=d_externo/2, center = true);
    // Orificio interno
    hull(){
        translate([d_interno_center/2+1.5,0,0]){
            cylinder(h=h_hole,r=d_interno_ext/2, center = true);
        }
        translate([-d_interno_center/2-1.5,0,0]){
            cylinder(h=h_hole,r=d_interno_ext/2, center = true);
        }
        translate([0,0,0]){
            cylinder(h=h_hole,r=d_interno_center/2, center = true);
        }
    }
    //Ring
    translate([0,0,-2.5]){
        difference(){ 
            cylinder(h=2,r=d_ring/2, center = true); 
            cylinder(h=2,r=d_ring/2-2, center = true);   
        }
    }
    
    translate([d_externo/2,0,h_hole+2]){
        rotate([0, 60, 0]){
            cylinder(h=20,r=d_punta/2, center = true);
        }
    }
    translate([-d_externo/2,0,h_hole+2]){
        rotate([0, -60, 0]){
            cylinder(h=20,r=d_punta/2, center = true);
        }
    }
}


// Pilares
difference(){
    // Estructura
    translate([0,0,h_hole]){
        difference(){
            cylinder(h=h_pilar,r=d_externo/2, center = true);
            cylinder(h=h_pilar,r=d_externo/2-4, center = true);
        }
    }
    translate([0,0,h_hole]){
        cube([d_externo-10,d_externo,h_pilar], center=true);
    }
    
    // Orificio perfusión 1
    translate([-d_externo/2,0,h_hole+2]){
        rotate([0, -60, 0]){
            cylinder(h=20,r=d_punta/2, center = true);
        }
    }
        // Orificio perfusión 2
    translate([d_externo/2,0,h_hole+2]){
        rotate([0, 60, 0]){
            cylinder(h=20,r=d_punta/2, center = true);
        }
    }
}
