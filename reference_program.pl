use strict;
use warnings;
# This subroutine now expects to receive two references
sub process_data {
    # The @_ array contains our two scalar references: one to the array, one to the hash
    my ($array_ref, $hash_ref) = @_;
    print "--- Inside the Subroutine ---\n";
    print "The first argument is a reference to an array: $array_ref\n";
    print "The second argument is a reference to a hash: $hash_ref\n\n";
    # We can now dereference them to get the original data back
    print "The items in the array are: @{$array_ref}\n";
    print "The name in the hash is: $hash_ref->{name}\n";
}

my @items = qw(itemA itemB itemC);
my %info = ( name => "Bob", age => 25 );
print "--- In the Main Program ---\n";
print "Passing data structures by reference.\n\n";
# We pass a reference to the array and a reference to the hash
process_data(\@items, \%info);
print "\nBack in the main program.\n";
