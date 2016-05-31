#!/usr/bin/perl
use strict;
use warnings;

print "Enter a temperature (i.e. 32F, 100C):\n";
my $input =  <STDIN>;
chop $input;
#new regex concepts :
# () used for capturing
# and $1 $2 for retrevening the captured values 

if( $input =~ /^([-+]?[0-9]+)([CF])$/) # capturing values with ()
{
	my $input_number = $1; #retreving values 
	my $input_type   = $2;

	if( $input_type eq "C"){
		# The input was Celsius, so calculate Fahrenheit
		my $celsius = $input_number;
		my $fahrenheit = ($celsius * 9 / 5) + 32;
		print " The temp of  $celsius  degres in Celsius equals  $fahrenheit in Fahrenheit\n ";

	}else{
		my $fahrenheit = $input_number;
		my $celsius = ($fahrenheit - 32) * 5 / 9;
		print " The temp of $fahrenheit  degres in Fahrenheit equals  $celsius in Celsius\n ";
	}
}else{
	print "Expecting a number, so don't understand $input\n";
}