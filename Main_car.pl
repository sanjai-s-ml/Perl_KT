use strict;
use warnings;
use 5.010;
use lib '.';
use Car;
package main;
# This is where we create a new object from our Car class
say "Creating a new car object...";
my $my_car = Car->new(); #Car my_car=new Car();
# Now we can interact with our object's attributes
say "My car's color is: " . $my_car->{color};
say "My car has " . $my_car->{doors} . " doors.";
# We can also modify the object's attributes
say "Changing my car's color to red...";
$my_car->{color} = "red";
say "My car's new color is: " . $my_car->{color};
$my_car->start_engine();
