$fn=200;
d_holder=79;
h_holder=5;
d_camera=39.2; //


difference(){
    // Holder
    cylinder(h=h_holder,r=d_holder/2, center = true);
    // "Sacado"
    translate([0,0,1]){
        cylinder(h=h_holder,r=d_camera/2, center = true);
    }
    // "Camera"
    cylinder(h=h_holder,r=(d_camera-5)/2, center = true);

}

