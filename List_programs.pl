use strict;
use warnings;
#!/usr/bin/perl

# reverse
my @arr=("apple","orange");
my @new= reverse @arr;
print @new."\n";

#split
my $word="15-07-2004";
my @arr_split=split /-/, $word;
print "Array after split : @arr_split \n"; 

#range
my @arr_num=(1,2,3,@arr_split);
print "After adding arr_split in this array : @arr_num \n";
print "Range of operator from 1 to 4 : @arr_num[1..4] \n";
@arr_num[2,3]=(20,30);
print "After changing the array value of index 2 and 3 : @arr_num \n";

# return list from subroutine

sub sub_get{ return ("A","B");}

my @arr_get = sub_get();
my $count=scalar(() = sub_get());
print "Subroutine List context : @arr_get \n";
print "Subroutine Scalar Context : $count \n";
