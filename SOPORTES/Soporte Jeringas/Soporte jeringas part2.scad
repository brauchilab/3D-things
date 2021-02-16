$fn=200;
w=5;
d=5;
R=11;
r1=8.5;
r2=8;
width=8*w+4*R+10*r1;
depth=3*d+2*R+2*r2;
height=15;

difference(){
    hull() 
    {
        translate([3*R+7*w+10*r1,d+R,0]) cylinder(h=height,r=w+R,center=false);
        translate([w+R,d+R,0]) cylinder(h=height,r=w+R,center=false);
        translate([2*R+4*w+5*r1,2*R+2*d+r2,0]) cylinder(h=height,r=r1+w, center = false); 
        }
    // Jeringa grande 1
    translate([R+w,R+d,0]){
        cylinder(h=height+1,r=R, center = false); 
    }
    // Jeringa chica 1
    translate([2*R+2*w+r1,R+d,0]){
        cylinder(h=height+1,r=r1, center = false); 
    }
    // Jeringa chica 2
    translate([2*R+3*w+3*r1,R+d,0]){
        cylinder(h=height+1,r=r1, center = false); 
    }    
    // Jeringa chica 3
    translate([2*R+4*w+5*r1,R+d,0]){
        cylinder(h=height+1,r=r1, center = false); 
    }
    // Jeringa chica 4
    translate([2*R+5*w+7*r1,R+d,0]){
        cylinder(h=height+1,r=r1, center = false);
    }
    // Jeringa chica 5
    translate([2*R+6*w+9*r1,R+d,0]){
        cylinder(h=height+1,r=r1, center = false); 
    }
    // Jeringa grande 6
    translate([3*R+7*w+10*r1,R+d,0]){
        cylinder(h=height+1,r=R, center = false); 
    }
    
    // Soporte
    translate([2*R+4*w+5*r1,2*R+2*d+r2,0]){
        cylinder(h=height+1,r=r1, center = false); 
    }
    // Rectangulos
    translate([0,2*d+2*R,0]){
        cube([3*w+2*R+4*r1,d+2*r2,height+1]);
    }
    translate([5*w+2*R+6*r1,2*d+2*R,0]){
        cube([3*w+2*R+4*r1,d+2*r2,height+1]);
    }
    
    // Juntura
    translate([0,0,0])cube([4.5*w+2*R+6*r1,80,height+1]);
    translate([0,0,0])cube([7.5*w+2*R+7*r1,80,height/2]);
    translate([0,2*d+2*R,0])cube([180,80,height+1]);
}