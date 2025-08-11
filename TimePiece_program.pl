use strict;
use warnings;
use Time::Piece;
use Time::Duration;
my $today = localtime; # Our current date: Sun Aug 03 11:08:02 2025
my $anniversary = Time::Piece->strptime('2025-10-15', '%Y-%m-%d'); # Wed Oct 15, 2025

print "Today: ", $today->ymd, "\n";
print "Anniversary: ", $anniversary->ymd, "\n";

# -----------------
# Direct Comparison
# -----------------
if ($anniversary > $today) {
    print "\n1. The anniversary is in the future.\n";
} else {
    print "\n1. The anniversary has already passed.\n";
}

# -----------------
# Finding the Difference
# -----------------
# Subtracting returns a Time::Seconds object
my $time_difference = $anniversary - $today;

# We can then get the difference in specific units
# my $days_to_go = $time_difference->days;
# my $months_to_go = int($days_to_go/30);

my $days_to_go = $time_difference->delta_days;
my $months_to_go = $time_difference->delta_months;

print "\n2. Time difference in seconds: $time_difference\n";
print "   Days until anniversary: $days_to_go\n";
print "   Months until anniversary: $months_to_go\n";
