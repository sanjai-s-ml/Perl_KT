use strict;
use warnings;
use DateTime;
# use DateTime::Duration;
my $now = DateTime->now;
my $dt_ist = DateTime->new(
    year      => 2028,
    month     => 8,
    day       => 3,
    hour      => 14,
    minute    => 0,
    time_zone => 'Asia/Kolkata',
);
my $result=$dt_ist->subtract_datetime($now);
print "Now Date Time ",$now->year()."\n";
print "New Date Time ",$result->years()."\n";
print "New Date Time ",$result->months()."\n";
print "New Date Time ",$result->days()."\n";
print "New Date Time ",$result->hours()."\n";
print "New Date Time ",$result->minutes()."\n";
print "New Date Time ",$result->seconds()."\n";
print "New Date Time ",$dt_ist->in_units('days')."\n";
