use strict;
use warnings;
use DateTime;
#!/usr/bin/perl

print "Enter DOB in (YYYY-MM-DD) : \n";
my $dob=<STDIN>;
chomp $dob;
# print $dob."\n";
my ($year, $month , $day)=split /-/,$dob;
my $dob_org=DateTime->new(
    year   => $year,
    month  => $month,
    day    => $day,
);
print $dob_org."\n";
my $now=DateTime->today;
my $result=$now->subtract_datetime($dob_org);
print "Now : $now \n";
print $result->years()."\n";
print $result->months()."\n";
print $result->days()."\n";
