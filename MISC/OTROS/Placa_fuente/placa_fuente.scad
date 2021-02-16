include <threads.scad>

$fn=100;
largo=110;
ancho=85;
alto=8;
d_screw=3;
p_screw=0.5;
l_screw=8;

difference(){
    cube([ancho,largo,alto],center=true);
    translate([0,0,1])
    {
        cube([ancho-10,largo-30,7],center=true);
        cube([ancho-30,largo-10,7],center=true);
    }
    translate([ancho/2-10,largo/2-10,-4])
    {
      metric_thread (d_screw, p_screw, l_screw); 
    }
    translate([-ancho/2+10,largo/2-10,-4])
    {
      metric_thread (d_screw, p_screw, l_screw);
    }
    translate([ancho/2-10,-largo/2+10,-4])
    {
      metric_thread (d_screw, p_screw, l_screw);
    }
    translate([-ancho/2+10,-largo/2+10,-4])
    {
      metric_thread (d_screw, p_screw, l_screw);
    }
}
