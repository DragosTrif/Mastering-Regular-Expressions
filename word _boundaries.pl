#!/usr/bin/perl
use strict;
use warnings;

my $text = "The population of 298444215 is growing";

# Notice the Negative Lookahead (?!) wich is succcesful 
#if can not match to the right
$text =~ s/(?<=\d)(?=(\d\d\d)+(?!\d) )/,/g;
print "$text\n";