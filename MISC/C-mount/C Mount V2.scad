include <threads.scad>
//alto_total=30mm
//ancho_tota=70mm
//largo_total=67mm

$fn=200;
r_ancho=70;
r_largo=67;
r_alto=9;

c1_alto=10;
c1_radio=39/2;

c2_alto=7;
c2_radio=30/2;

d_thread=25.4;
p_thread=0.978;
l_thread=4;

pos_screw=6;
d1_screw=6;
d2_screw=4;

difference(){
    cube([r_ancho,r_largo,r_alto],center=true);
    translate([r_ancho/2-pos_screw,r_largo/2-pos_screw,r_alto/2]){
        cylinder(h=r_alto,r=d1_screw/2, center = true);
        cylinder(h=r_alto*2,r=d2_screw/2, center = true);  
    }
    translate([r_ancho/2-pos_screw,r_largo/2-pos_screw,r_alto/2]){
        cylinder(h=r_alto,r=d1_screw/2, center = true);
        cylinder(h=r_alto*2,r=d2_screw/2, center = true);  
    }
    translate([-r_ancho/2+pos_screw,-r_largo/2+pos_screw,r_alto/2]){
        cylinder(h=r_alto,r=d1_screw/2, center = true);
        cylinder(h=r_alto*2,r=d2_screw/2, center = true);  
    }
    translate([-r_ancho/2+pos_screw,r_largo/2-pos_screw,r_alto/2]){
        cylinder(h=r_alto,r=d1_screw/2, center = true);
        cylinder(h=r_alto*2,r=d2_screw/2, center = true);  
    }
    translate([r_ancho/2-pos_screw,-r_largo/2+pos_screw,r_alto/2]){
        cylinder(h=r_alto,r=d1_screw/2, center = true);
        cylinder(h=r_alto*2,r=d2_screw/2, center = true);  
    }
    
}

translate([0,0,r_alto/2]){
    cylinder(h=c1_alto,r=c1_radio, center = false); 
    }
translate([0,0,r_alto/2+c1_alto]){
    cylinder(h=c2_alto,r=c2_radio, center = false); 
    }
translate([0,0,r_alto/2+c1_alto+c2_alto]){
    metric_thread (d_thread, p_thread, l_thread); 
    }