use strict;
use warnings;
#!/usr/bin/perl

open(my $fh , '<', "sample.txt") or die "Error : $!";

#reading line by line
while (my $line = <$fh>){
    print $line."\n";
}

#Reading all at once
 my @arr=<$fh>;
 print @arr;

#Read entire file into scalar(Slurp mode)
my $context=do{
    local $/;
    <$fh>;
};
print $context;

#common write
print $fh "This is for append ";

#File Test
if(-e $fh){
    print "File in exists \n ";
}
if(-r $fh){
    print "File in read mode.\n";
}
if(-w $fh){
    print "File in write mode.\n";
}
if(-x $fh){
    print "File in Executable  mode.\n";
}
if(-s $fh){
    print "File is not empty \n";
}
if(-z $fh){
    print "File is Empty.\n";
}
if(-T $fh){
    print "File is a Text File \n";
}
if(-f $fh){
    print "File is a Regular File \n";
}
if(-d $fh){
    print "It is a directory \n";
}
