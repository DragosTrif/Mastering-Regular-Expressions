#!/usr/bin/perl
use strict;
use warnings;


print "Enter a tempearture in celsius:\n";
my $celsius =  <>;
chop $celsius;

if( $celsius =~ m/^[+-]?[0-9]+(\.[0-9]*)?$/ ){
	my $farenheit = ($celsius * 9 / 5) + 32;
	#print "$celsius C = $farenheit F\n";
	printf "%.2f c = %.2f F\n",$celsius, $farenheit; 
}else{
	print "Expecting a number, so don't understand
\"$celsius\".\n";
}