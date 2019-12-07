$fn = 128;

module ring(inner_d, outer_d, h) {
    difference() {
        cylinder(d=outer_d, h=h);
        translate([0,0,-0.1]) cylinder(d=inner_d, h=h+0.2);
    }
}

module rail() {
    difference() {
        import("/home/john/Downloads/2019_02_20 ADIMLab Filament Spool Holder fits 2020 Rail.stl");
        translate([-100, 70, -0.1]) cube([200, 40, 30]);
    }
    outer_d = 20 - 0.1;
    translate([9+.15,77,outer_d/2+3]) rotate([0, 90, 0]) ring(12, outer_d, 20-0.3);
    translate([9+.15,58-0.2,3]) cube([20-0.3, 20, 3]);
    translate([9+.15,58-0.2,20-0.1]) cube([20-0.3, 20, 3]);
    
    
}

rail();
