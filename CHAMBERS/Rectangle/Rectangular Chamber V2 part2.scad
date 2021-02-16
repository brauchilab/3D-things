//CAPA2
$fn=200;
largo=41;
ancho=25;
alto=1;
d_cir=12;
ancho_c1=2;
largo_c1=11;

ancho_c2=3;
largo_c2=8;

difference(){
    cube([ancho,largo,alto],center=true);
    cylinder(h=alto,r=d_cir/2, center = true);
    rotate([90,0,0]){
        translate([0,0.5,d_cir+2])
        {
            cylinder(h=20,r=0.5, center = true);
        }
    }

}
