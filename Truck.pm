package Truck;
use strict;
use warnings;
use 5.010;
use parent 'Vehicle';

sub new{
    my ($class,%args)=@_;
    my $capacity=delete $args{cargo_capacity}; # delete the unwanted argument before passing it to parent class

    my $self=$class->SUPER::new(%args);
    $self->{cargo_capacity}=$capacity || 'not specified';
    return $self;

}

sub get_capacity{
    my $self=shift;
    return $self->{cargo_capacity};
}

# method overriding
sub honk{
    my $self=shift;
    $self->SUPER::honk(); #Method overriding by calling parent class same method
    say "$self->{make} truck says: Honk Honk";
}
# destructor 
sub DESTROY{
    my $self=shift;
    my $make=$self->{make}|| 'Unnamed';
    my $year=$self->{year} || 'Unknown';

    print "Destroy called : The $year $make is being scraped \n";

}
1;
