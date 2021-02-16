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
pc_largo=34;
pc_ancho=16;
pc_alto=5;

// Muezca inferior_a
ma_largo=40;
ma_ancho=20;
ma_alto=1;

// Muezca inferior_b
mb_largo=38;
mb_ancho=18;
mb_alto=1;

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
    //cube([ep_largo,ep_ancho,ep_alto],center=true);
    hull()
    {

        translate([d_hole_center/2-5,0,0])
        {
            cylinder(h=h_hole,r=d_hole_ext2/2-3, center = true);
        }
        translate([-d_hole_center/2-19,0,0])
        {
            cylinder(h=h_hole,r=d_hole_ext1/2-2, center = true);
        }
        translate([0,0,0])
        {
            cylinder(h=h_hole,r=d_hole_center/2+4, center = true);
        }
    }
    
    hull()
    {
        translate([d_hole_center/2-15,0,1.5])
        {
            cylinder(h=h_hole,r=d_hole_ext2/2+2, center = true);
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
    translate([0,0,-2.5])
    {
        difference()
        {        
            cube([ma_largo,ma_ancho,ma_alto],center=true);
            cube([mb_largo,mb_ancho,mb_alto],center=true);
        }
    }
}
for(a = [1 : 1 : pc_largo+1])
   {
    
   if ((a>12 && a%10==1)||(a<12 && a%11==0))
        {
    translate([pc_largo/2+1-a,pc_ancho/2+1,-0.5]){
    cube([0.4,2,1],center=true);
        }
    }
        else
        {
    translate([pc_largo/2+1-a,pc_ancho/2+0.5,-0.5]){
    cube([0.4,1,2],center=true);       
        }
    }
}

for(a = [1 : 1 : pc_largo+1])
   {
    
   if ((a>12 && a%10==1)||(a<12 && a%11==0))
        {
    translate([pc_largo/2+1-a,-pc_ancho/2-1,-0.5]){
    cube([0.4,2,2],center=true);
        }
    }
        else
        {
    translate([pc_largo/2+1-a,-pc_ancho/2-0.5,-0.5]){
    cube([0.4,1,2],center=true);       
        }
    }
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

rotate([0, 90, 0]){
    
    translate([0,0,30])
            {
                cylinder(h=10,r1=1.5,r2=2, center = true);
            }
    }


