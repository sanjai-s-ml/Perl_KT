use strict;
use warnings;
use Data::Dumper;
#!/usr/bin/perl

print "Enter your Email : \n";
my $email=<STDIN>;
chomp $email;

my $dumper = Data::Dumper->new([$email]);
$dumper->Terse(1);  

if($email=~ /^[a-zA-Z\.]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/){
 print "Email is valid \n";
 print "Dumper : ",$dumper->Dump."\n";
}
else{
    print "Email is not Valid \n";
    print "Dumper : ",$dumper->Dump."\n";
}
