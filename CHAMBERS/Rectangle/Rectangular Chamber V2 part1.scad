//CAPA1
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
    translate([0,d_cir-2,0])
    {
        cube([ancho_c1,largo_c1,alto],center=true);
    }
    translate([0,d_cir/2+largo_c1,0])
    {
        hull()
        {
            cube([largo_c2,ancho_c2,alto],center=true);
            translate([ancho_c2+1,0,0])
            {
                cylinder(h=alto,r=1.5, center = true);
            }
            translate([-ancho_c2-1,0,0])
            {
                cylinder(h=alto,r=1.5, center = true);
            }
        }
    }
    rotate([90,0,0]){
        translate([0,0.5,d_cir+2])
        {
            cylinder(h=20,r=0.5, center = true);
        }
    }

}
