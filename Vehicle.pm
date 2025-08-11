use strict;
use warnings;
use 5.010;
package Vehicle;

#constructor  
# sub new{
#     my $class=shift;
#     my $self={};
#     bless $self,$class;
#     return $self;
# }


# constructor with Argument intialization
sub new{
    my ($class,%args)=@_;
    my $self={
        year=>$args{year}||'unknown',
        make=>$args{make} || 'unknown',
    };
    bless $self,$class;
    return $self;
 }

sub get_year{
    my $self=shift;
    return $self->{year};
}

sub get_make{
    my $self=shift;
    return $self->{make};
}

sub honk{
    my $self=shift;
    say "$self->{make} says: Beep beep";
}
1;
