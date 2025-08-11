use strict;
use warnings;
use Data::Dumper;
#!/usr/bin/perl

#dump Scalar
my $num=10;
print "Scalar Variable : ",Dumper($num);

#Dump Array
my @arr=(1,2,3);
my @arr_1=(4,5,6);
print "Arrays : ",Dumper(\@arr);
print "Arrays : ",Dumper(\@arr_1);

#Dump Hashes
my %hash=(name=>"Sanjai",Age=>21);
print "Hashes : ",Dumper(\%hash);

print "Multi Variables : ", Dumper($num,\@arr,\%hash);

#Changing variable name for array

my $dump=Data::Dumper->new([\@arr],['*arrays']);
print "After Changing Variable name for Aeeay : ",$dump->Dump;

#Changing variable name for hashes

$dump=Data::Dumper->new([\%hash],['%hash']);
print "After Changing Variable name for Hash: ",$dump->Useqq(0)->Dump;
print("-----------------------------------------------\n");

#Changing variable name for Scalar

$dump=Data::Dumper->new([\$num],['$numbers']);
print "After Changing Variable name for Scalar: ",$dump->Dump;

print Dumper({foo=>'bar',list=>[1,2,3]});

# #using Subroutine
# sub sub_dump{
#      my %hash=(name=>"Sanjai",Age=>21);
#      print "Hashes : ",Dumper(\%hash);
#      return \%hash;
# }

# my $u=sub_dump;
# print "Subroutine dump : ",Dumper($u) ."\n";

#Debugging Methods

$dump=Data::Dumper->new([\%hash],['%hash']);
print "Debugging Methods : ",$dump->Names(["array_hash"])->Dump;
