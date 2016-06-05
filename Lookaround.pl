#!/usr/bin/perl
use strict;
use warnings;

my $text =<<'END_TEXT';

This book is by Jeffrey Friedl.
This painting is by Thomas Jefferson.

END_TEXT

print $text;
 
 $text =~ s/\bJeffrey\b/Jeff's /g;
 
 	print $text;

 $text =~ s/\bJeff(?='s\b)/drd/g; #notice that the lookaheah anchor dosent consume the text
                                  # it just replaces the leters before 's;

 print $text;	
 






