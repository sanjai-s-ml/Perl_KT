use strict;
use warnings;
use 5.010; # Enables say() function
# --- Car.pm (Our Class Definition) ---
# This is our class (the blueprint)
package Car;
# The new() subroutine is our constructor
sub new {
   # The first argument to a class method is the class name, 'Car'
   my $class = shift;# @_
   # An anonymous hash reference is created. This will hold our data (attributes).
   my $self = {};
   # We can set default attributes here
   $self->{color} = "blue";
   $self->{doors} = 4;
   $self->{speed} = 10;
   #  bless the hash reference, turning it into an object
   bless $self, $class;
   # return  new object
   return $self;
}

sub start_engine{
    my $self=shift;
    if($self->{speed}==0){
        say "Engine rumbles to Life . your speed is 0 km\h";
    }
    else{
        say "The engine is already running";
    }
}

1;
