//CAPA1
$fn=200;
largo=75;
ancho=48;
alto=5;
d_cir=16;
ancho_c1=4;
largo_c1=13;

ancho_c2=4.5;
largo_c2=8;


difference(){
    translate([0,0,1])
    {
    cube([ancho,largo,alto],center=true);
    }
    cylinder(h=alto*2,r=d_cir/2, center = true);
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
                cylinder(h=alto,r=2, center = true);
            }
            translate([-ancho_c2-1,0,0])
            {
                cylinder(h=alto,r=2, center = true);
            }
        }
    }
    
}
