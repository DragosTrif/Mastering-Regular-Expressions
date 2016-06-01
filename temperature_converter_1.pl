#!/usr/bin/perl
use strict;
use warnings;

print "Enter a temperature (i.e. 32F, 100C):\n";
my $input =  <STDIN>;
chop $input;
#new regex concepts :
# () used for capturing and  grouping
# and $1 $2 for retrevening the captured values 
#\s matches any whitespace characters
# m// followed by /i instructs the regex to be case insenstive 

if( $input =~ m/^([-+]?[0-9]+(\.[0-9]*)?)\s*([CF])$/i) 
{                                                         
	my $input_number = $1; #retreving values 
	my $input_type   = $3; #because we used () for grouping  $input_type  it's hold in $3 not $2

	if( $input_type eq "C" or $input_type eq "c"){
		# The input was Celsius, so calculate Fahrenheit
		my $celsius = $input_number;
		my $fahrenheit = ($celsius * 9 / 5) + 32;
		
		#printed with printf for precision 
		printf  " The temp of %.2f in Celsius equals %.2f in Fahrenheit\n",$celsius, $fahrenheit ; 
	}else{
		my $fahrenheit = $input_number;
		my $celsius = ($fahrenheit - 32) * 5 / 9;
		printf  " The temp of %.2f Fahrenheit equals %.2f in  Celsius\n", $fahrenheit, $celsius;
	}
}else{
	print "Expecting a number, so don't understand $input\n";
}