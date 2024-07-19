
$fa=32;
$fn = $preview ? 32 : 64;

rand=3;
k_global=[
    46.6,
    22,
    3
    ];
k_loch=[
    5.35/2,
    37.5+2.675,
    3.3+2.675,
    ];
k_schaft=[
    27.4,
    10,
    2.5
    ];
k_schaft_offset=[
    0,
    4.5
    ];
zugabe=3;
            

rotate([90,0,0]){
 translate([-(46+2*rand)/2,0,0]){      
        difference(){
            union(){
                cube([
                    46+2*rand,
                    23+2*rand,
                    3+2*rand
                    ],false);
                
                translate([rand+41,rand+6,14]){
                    rotate([180,0,0]){
                    cylinder(
                        5,
                        r1=2,
                        r2=6,
                        false);
                    }
                    }
                translate([rand+41,rand+6,-5]){
                    cylinder(
                        5,
                        r1=8,
                        r2=6,
                        false);
                    }
                }
            union(){
                translate([rand+41,rand+6,-5]){
                   # cylinder(
                    20,
                    r=3.5,
                    true);
                    }
                translate([rand,rand+3,rand]){
                    cube(
                    [26,12,3],
                    false);
                    }
                translate([rand+25,rand,-1+rand]){
                    cube([
                    19+rand+zugabe,
                    22,
                    5
                    ],false);
                    }
                
               }
           }
       }
}