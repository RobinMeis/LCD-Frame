module dummy() {
    translate([0,-3,0]) union() { //LCD Dummy
        color("silver") cube([43,62,6], true);
        translate([0,3,0.1]) color("black") cube([40,52,6], true);

        translate([0,30,0]) cube([10,2,10], true);
        translate([20.75,0,0]) cube([1.5,10,10], true);
        translate([0,-25.5,0]) cube([10,5,10], true);
    }
}

wall = 2;

module frame() {
    difference() {
        color("red") cube([55,67,4], center=true); //Outer frame
        cube([40,52,10], center=true); //LCD
        translate([0,-2.5,-1]) cube([43.5,62,4], center=true); //Display
        
        translate([0,31.5,-1]) cube([100,5,4], center=true);
        translate([-25,0,-1]) cube([5,100,4], center=true);
        translate([25,0,-1]) cube([5,100,4], center=true);
        
        translate([0,-31,-1]) cube([100,10,4], center=true);
    }
}

rotate([180,0,0]) frame();

//dummy();