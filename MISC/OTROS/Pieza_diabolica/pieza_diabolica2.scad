$fn=200;

// Estructura principal
ep_largo=92.5; // (90.5 total - 7 parte final + 10.5 parte final)
ep_ancho=72;
ep_alto=16;

// Muesca inferior
mi_largo=94; // (90.5 total - 7 parte final + 10.5 parte final)
mi_ancho=45;
mi_alto=0; //1.5

// Rebaje superior
rs_largo=94;
rs_ancho=34;
rs_alto=3.5;

// Canal superior
cs_largo=94;
cs_ancho=6;
cs_alto=8+3.4;

// Ángulo superior
as_largo=94;
as_ancho=11.3;
as_alto=11.3;

// Base Cubo principal
bcp_largo=38;
bcp_ancho=28;
bcp_alto=1.5;

// Cuerpo Cubo principal
ccp_largo=33;
ccp_ancho=34;
ccp_alto=11;

// Pilar 1 base
p1_largo_b=8;

// Pilar 1 superior
p1_largo_s=10.5;

// Pilar 2 base
p2_largo_b=2;

// Pilar 2 superior
p2_largo_s=7;

// sacados circulares
sc_diametro=12.5;
sc_alto=11;


// Sacado angular
sa_ancho=28;
sa_largo=5;
sa_alto=3;

// Orificios cubos
oc_diametro=25;
oc_alto=20;


difference(){
    // Estructura principal
    cube([ep_ancho,ep_largo,ep_alto],center=true);
    
    // Muesca inferior
//    translate([(ep_ancho-mi_ancho)/2,0,(-ep_alto+mi_alto)/2]){
//        color([1,0,0])cube([mi_ancho,mi_largo,mi_alto],center=true);
//    }
    
    // Rebaje superior
    translate([(ep_ancho-rs_ancho)/2,0,ep_alto/2-rs_alto/2]){
        color([0,1,0])cube([rs_ancho,rs_largo,rs_alto],center=true);
    }
    // Canal superior
    translate([(ep_ancho-cs_ancho)/2-28,0,(-ep_alto+cs_alto)/2+mi_alto+3]){
        color([0,0,1])cube([cs_ancho,cs_largo,cs_alto],center=true);
    }
    // Ángulo superior
    translate([(ep_ancho)/2-28-cs_ancho,0,ep_alto-8]){
        rotate([0,45,0]) color([0,1,1])cube([as_ancho,as_largo,as_alto],center=true);
    }
    // Base Cubo principal 1
    translate([(ep_ancho-bcp_ancho)/2,(-ep_largo+bcp_largo)/2+p1_largo_b,(-ep_alto+bcp_alto)/2+mi_alto+1.5]){
        color([1,0,1])cube([bcp_ancho,bcp_largo,bcp_alto],center=true);
    }
    
    // Cuerpo Cubo principal 1
    translate([(ep_ancho-ccp_ancho)/2,(-ep_largo+ccp_largo)/2+p1_largo_s,(-ep_alto+ccp_alto)/2+mi_alto+1.5]){
        color([1,0,1])cube([ccp_ancho,ccp_largo,ccp_alto],center=true);
    }

    // Base Cubo principal 2
    translate([(ep_ancho-bcp_ancho)/2,(-ep_largo+bcp_largo)/2+p1_largo_b+p2_largo_b+bcp_largo,(-ep_alto+bcp_alto)/2+mi_alto+1.5]){
        color([1,0,1])cube([bcp_ancho,bcp_largo,bcp_alto],center=true);
    }
    
    // Cuerpo Cubo principal 2
    translate([(ep_ancho-ccp_ancho)/2,(-ep_largo+ccp_largo)/2+p1_largo_s+p2_largo_s+ccp_largo,(-ep_alto+ccp_alto)/2+mi_alto+1.5]){
        color([1,0,1])cube([ccp_ancho,ccp_largo,ccp_alto],center=true);
    }
    
    //Sacados circulares  1
    
    hull(){
        translate([(ep_ancho-sc_diametro)/2-bcp_ancho-6+sc_diametro,(-ep_largo)/2+p1_largo_b+sc_diametro/2,(-ep_alto+sc_alto)/2+mi_alto+1.5]){
            cylinder(h=sc_alto,r=sc_diametro/2, center = true);
        }
        
        translate([(ep_ancho-sc_diametro)/2-bcp_ancho-6+sc_diametro,(-ep_largo)/2+p1_largo_b-sc_diametro/2+bcp_largo,(-ep_alto+sc_alto)/2+mi_alto+1.5]){
            cylinder(h=sc_alto,r=sc_diametro/2, center = true);
        }
    }
    
    //Sacados circulares 2
    
    hull(){
        translate([(ep_ancho-sc_diametro)/2-bcp_ancho-6+sc_diametro,(-ep_largo)/2+p1_largo_b+sc_diametro/2+p2_largo_b+bcp_largo,(-ep_alto+sc_alto)/2+mi_alto+1.5]){
            cylinder(h=sc_alto,r=sc_diametro/2, center = true);
        }
        
        translate([(ep_ancho-sc_diametro)/2-bcp_ancho-6+sc_diametro,(-ep_largo)/2+p1_largo_b-sc_diametro/2+bcp_largo+p2_largo_b+bcp_largo,(-ep_alto+sc_alto)/2+mi_alto+1.5]){
            cylinder(h=sc_alto,r=sc_diametro/2, center = true);
        }
    }
    
    // Sacado angular 1
    translate([(ep_ancho-sa_ancho)/2,(-ep_largo+sa_largo)/2+8,(-ep_alto+sa_alto)/2+mi_alto+3]){
    color([1,1,1]) rotate([60,0,0]) cube([sa_ancho,sa_largo,sa_alto],center=true);
    }
    // Sacado angular 2
    translate([(ep_ancho-sa_ancho)/2,(-ep_largo+sa_largo)/2+8+p2_largo_b+bcp_largo,(-ep_alto+sa_alto)/2+mi_alto+3]){
    color([1,1,1]) rotate([60,0,0]) cube([sa_ancho,sa_largo,sa_alto],center=true);
    }
    // Sacado angular 3
    translate([(ep_ancho-sa_ancho)/2,(-ep_largo+sa_largo)/2+bcp_largo+3,(-ep_alto+sa_alto)/2+mi_alto+3]){
    color([1,1,1]) rotate([-60,0,0]) cube([sa_ancho,sa_largo,sa_alto],center=true);
    }
    
    // Sacado angular 4
    translate([(ep_ancho-sa_ancho)/2,(-ep_largo+sa_largo)/2+bcp_largo+3+p2_largo_b+bcp_largo,(-ep_alto+sa_alto)/2+mi_alto+3]){
    color([1,1,1]) rotate([-60,0,0]) cube([sa_ancho,sa_largo,sa_alto],center=true);
    }     
    
    
    //Orificio circular 1
    translate([(ep_ancho-oc_diametro)/2-4,(-ep_largo+bcp_largo)/2+p1_largo_b,0]){
        cylinder(h=ep_alto,r=oc_diametro/2, center = true);  
    }
    
    //Orificio circular 2
    translate([(ep_ancho-oc_diametro)/2-4,(-ep_largo+bcp_largo)/2+p1_largo_b+p2_largo_b+bcp_largo,0]){
        cylinder(h=ep_alto,r=oc_diametro/2, center = true);  
    }
}











