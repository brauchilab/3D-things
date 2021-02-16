$fn=200;

difference(){
    cube([40,30,4],center=true);
    cube([20,12.5,4],center=true);
    translate([0,0,-1])cube([40-2.5,30-2.5,2],center=true);
    translate([-2,10,1.5])linear_extrude(height=5)text("BRAÜSWITCH",size=2);
}

