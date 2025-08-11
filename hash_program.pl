use strict;
use warnings;
#!/usr/bin/perl

my %hash;
my $n_count;
print "Enter n values : \n";
$n_count=<STDIN>;
chomp $n_count;
my $key;
my $value;
for(my $i=1;$i<=$n_count;$i++){
    print "Enter name : \n";
    $key=<STDIN>;
    chomp $key;
    print "Enter mark : \n";
    $value = <STDIN>;
    chomp $value;
    $hash{$key}=$value;
}
my $mark=0;
my $name;
# my @sort_array = sort {$hash{$b}<=> $hash{$a} } keys %hash; # using values descending
my @sort_array = sort {$b cmp $a } keys %hash; # sort using keys desc

print "Using keys sort : \n";
foreach my $keys (sort keys %hash){
   print "Key : $keys  - Value : $hash{$keys} \n";
   if($hash{$keys}>$mark){
      $mark=$hash{$keys};
      $name=$keys;
   }
}
print "After descending keys sort : @sort_array \n";
foreach my $keys (@sort_array){
   print "Key : $keys  - Value : $hash{$keys} \n";
}
print "$name has scored $mark marks \n";

# my $count=scalar(%hash);
# print "Size of Hash : $count \n";
