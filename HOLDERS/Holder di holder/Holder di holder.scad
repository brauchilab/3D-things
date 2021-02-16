// Holder di holder
$fn=200;

d_holderdiholder=108;
h_holder=5;

d_holder=79;
h_holder=5;
d_camera=39.2; //

difference(){
    // Holder di holder
    cylinder(h=h_holder,r=d_holderdiholder/2, center = true);
    // "Hole para holder
    cylinder(h=h_holder,r=d_holder/2, center = true);
}
