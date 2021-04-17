
$fn=32;

height = 1*11.2;
diameter = 20.4;

difference(){
  union(){
  cylinder(d=10, h =height,center = true);

  difference(){
    cylinder(d=diameter, h =height,center = true);
    cylinder(d=diameter+1, h =height-2, center = true);
  }
  
  
  translate([0,0,-height/2+1])
  linear_extrude(height=5.5, scale=0.1)
  circle(d=diameter);
  
  mirror([0,0,1])
  translate([0,0,-height/2+1])
  linear_extrude(height=5.5, scale=0.1)
  circle(d=diameter);
  
  }
  cylinder(d=7.8, h =height+1, center = true,$fn = 6);
  
  translate([5.75,0,0])
  cylinder(d=2, h =height+1, center = true,$fn = 16);
  translate([-(diameter/2 -1.5),0,0])
  cylinder(d=2, h =height+1, center = true,$fn = 16);
}

//  color("blue")   cylinder(d=6.3, h =12, center = true,$fn = 64);
