use strict;
use warnings;
use autodie;
use Try::Tiny;  
use Carp qw(cluck confess);
#!/usr/bin/perl

print "Error Handling \n";
#die - Fatal Error
open(my $fh,'<',"file.txt") or die "couldn't open file : $! \n";
close($fh);
#warn 
warn "Missing file , continue \n" unless -e "file.txt";

# #redirect to warnings to a file 

open(my $fh, '>', "log.txt") or die "Couldn't open file: $!\n";

# # Redirect STDERR to the file
open(STDERR, '>&', $fh) or die "Can't dup STDERR: $!";

# # Redirect STDOUT to the file (optional, if you also want normal prints)
open(STDOUT, '>&', $fh) or die "Can't dup STDOUT: $!";

# # Now both warn and print go to log.txt
warn "something minor happened\n";
print "This is a normal print statement\n";

eval
eval{
    open(my $fh , "<","missing.txt") or die "Couldn't open file : $!";
};
if($@){
    print "Error : $@ \n"; #$@+2 => 0+2 = 2
}

#autodie

open(my $fh , "<","missing.txt");

#Try::Tiny

try{
    die "Try::Tinny Error";
}
catch{
    warn "Error : $_";
};

#Crap

sub dangerous{
    # carp "Like Warn, to caller";
    # croak "Like die, to caller";
    # cluck "Warn , Stack trace";
    confess "die + Stack Trace";
}

# dangerous();

#System call and $?

system("ls /nonexistence");
print "System failed with code : $? \n" if $?!=0;

my $code = $? >>8;
print "Exit Code : $code \n";
