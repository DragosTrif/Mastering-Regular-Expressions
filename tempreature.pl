#!/usr/bin/perl
use strict;
use warnings;


print "Enter a tempearture in celsius:\n";
my $celsius =  <>;# this will read one line from the user
chop $celsius;# this removes the ending new line from $celsius
#elements of the regex:
# =~  should be read as "matches"
# ^$ start and end of the line metacharacters
#[] charcter class
#? one elemnt allowed; none required
#+ one element required; more allowed
#* unlimited elements allowed; none required
# \. escape sequnce for dot metacharacter 
if( $celsius =~ m/^[+-]?[0-9]+(\.[0-9]*)?$/ ){
	my $farenheit = ($celsius * 9 / 5) + 32;
	#print "$celsius C = $farenheit F\n";
	printf "%.2f c = %.2f F\n",$celsius, $farenheit; 
}else{
	print "Expecting a number, so don't understand
\"$celsius\".\n";
}
