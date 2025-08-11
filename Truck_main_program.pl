use strict;
use warnings;
use lib '.';
use Truck ;
use 5.010;
#!/usr/bin/perl

sub run_test{


my $heavy_truck=Truck->new(
    make=> 'Ashok Leyland',
    year=> 2023,
    cargo_capacity=>'20 tons',
);

say "Truck make : ",$heavy_truck->get_make(); # from vehicle
say "Truck year : " ,$heavy_truck->get_year(); # from vehicle
say "Truck cargo capacity : ", $heavy_truck->get_capacity (); # from truck

$heavy_truck->honk();
}

say "Script Starting...";
run_test();
say "End of Script";
