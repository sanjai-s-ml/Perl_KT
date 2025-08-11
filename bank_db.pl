use DBI;
use strict;
use warnings;

my $dsn="dbi:SQLite:dbname=bank.db";

my $dbh=DBI->connect($dsn,"","",{ AutoCommit => 0}) or die "Could not connect to database: $DBI::errstr";
# $dbh->do("Create table if not exists account (id INTEGER,balance REAL)");
# $dbh->do("Insert into account (id,balance) values(1,1000), (2,500)");

eval{
    my $debit_sth=$dbh->prepare("Update account set balance=balance-100 where id = 1");
    $debit_sth->execute();

    die "Simulate Crash";

    my $credit_sth=$dbh->prepare("update account set balance=balance+100 where id=2");
    $credit_sth->execute();

    $dbh->commit;
};
if($@){
    warn "Transaction failed : $@";
    $dbh->rollback;
}

my $sth=$dbh->prepare("select id, balance from account");
$sth->execute();
while(my @row=$sth->fetchrow_array()){
    print "Account details , ID : $row[0] , Balance : $row[1]\n";
}

$dbh->disconnect;
