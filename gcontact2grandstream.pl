#!/usr/bin/perl
use strict;
use warnings;

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

#my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
my $id = 0;

while (my $line = <$data>) {
	chomp $line;
    $id += 1;

	my @fields = split "," , $line;
    if ( $fields[2] or $fields[3] or $fields[4] ) {

        print "<Contact>\n"; 
        print "    <id>$id</id>\n"; 
        print "    <FirstName> $fields[0] </FirstName>\n"; 
        print "    <LastName> $fields[1] </LastName>\n"; 
        print "    <Frequent>1</Frequent>\n";
        if ($fields[2] ){
            print "    <Frequent>1</Frequent>\n"; 
            print "    <Phone type=\"Work\">\n"; 
            print "        <phonenumber> $fields[2] </phonenumber>\n"; 
            print "        <accountindex>1</accountindex>\n"; 
            print "    </Phone>\n"; 
        }
        if ($fields[3] ){
            print "    <Frequent>1</Frequent>\n"; 
            print "    <Phone type=\"Home\">\n"; 
            print "        <phonenumber> $fields[3] </phonenumber>\n"; 
            print "        <accountindex>1</accountindex>\n"; 
            print "    </Phone>\n"; 
        }
        if ($fields[4] ){
            print "    <Frequent>1</Frequent>\n"; 
            print "    <Phone type=\"Cell\">\n"; 
            print "        <phonenumber> $fields[4] </phonenumber>\n"; 
            print "        <accountindex>1</accountindex>\n"; 
            print "    </Phone>\n"; 
        }
        print "</Contact>\n"; 
    }

	#$sum += $fields[2];
}
#print "$sum\n";
