use DBI;
use strict;
use warnings;
use 5.010;
#!/usr/bin/perl

my $dsn="dbi:SQLite:dbname=user.db";
my $dbh=DBI->connect($dsn,"","",{
    AutoCommit=> 1,
    RaiseError=> 1, 
})or die "Could not connect to DataBase : $DBI::errstr";

say "Connected to DataBase successfully";

# $dbh->do("CREATE TABLE IF NOT EXISTS users (id INTEGER, name VARCHAR(255))");
# say "Database Created ";

# my $insert_stm=$dbh->prepare("insert into users (id,name) values(?,?)");
# $insert_stm->execute(1,'sanjai');
# $insert_stm->execute(2,'satvik');


eval{
    my $update_stm=$dbh->prepare("update users set name='SANJAI' where id =1");
    $update_stm->execute();
    
    die "Exception Raised";
    $dbh->commit;
};
if($@){
    warn "Some Error : $@";
    $dbh->rollback;
}
my $print=$dbh->prepare("select * from users");
$print->execute();

while(my @row=$print->fetchrow_array()){
    say "User ID : $row[0] , User Name : $row[1]";
}

$dbh->disconnect;
