
use strict;
use warnings;
use lib '.';
use Vehicle;
use 5.010;
#!/usr/bin/perl


print "Creating a new Vehicle...\n";
# my $car=Vehicle->new();# creating a constructor
# $car->honk();
# print "The object is of type : ",ref($car),"\n";

# creating a constructor by passing arguments to it

my $truck=Vehicle->new(
    year=>2024,
    make=>'Tata',
);

my $scooty=Vehicle->new(
    make=>"Honda",
);

say "Truck make : ",$truck->get_make()," , Truck Year : ",$truck->get_year();
say "Scooty make : " ,$scooty->get_make() ," , Scooty Year : ",$scooty->get_year();

