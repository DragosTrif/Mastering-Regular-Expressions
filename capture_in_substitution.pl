#!/usr/bin/perl
use strict;
use warnings;

my $price = 12.3750000000392;
print "$price\n";

$price =~ s/(\.\d\d[1-9]?)\d*/$1/;
#notice the () used to capture :
# \. start at decimal point 
# \d\d folowed by two digits
#[1-9]? a third optional one betwen 1 and 9 
# \d* is removed from the text 

print "$price\n";