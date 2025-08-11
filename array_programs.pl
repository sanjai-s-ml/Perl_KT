use strict;
use warnings;
#!/usr/bin/perl

my @arr=(1,2,3,4,5);
my @num=(9,7,3,8);
my @new_arr=splice @arr,3,2,@num; # replacing
# @arr[1..10]=(20,30,40,50,60); 

my $size=@arr;
print "Array : ";
for(my $i=0;$i<$size;$i++){
    print $arr[$i]." " ;
}
print "\n";

print "New Array  : ";
$size=@new_arr;
for(my $i=0;$i<$size;$i++){
    print $new_arr[$i]." " ;
}
print "\n";

print "After replacing with range operator ";
@arr[1..4]=@num;
$size=@arr;
for(my $i=0;$i<$size;$i++){
    print $arr[$i]." " ;
}
print "\n";
