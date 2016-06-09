#!/usr/bin/perl

use strict;
use warnings;
use  File::Slurp;



#my $text = read_file( 'text.txt' ); 
#sprint "Give me a text: ";

my $file = 'text.txt';
open my $fh, '<', $file or die;

$/ =  undef ;
my $text = <$fh>;
#close $fh;
print $text;

$text =~ s/&/&amp;/g; # Make the basic HTML . . .
$text =~ s/</&lt;/g;  # . . . characters &, <, and > . . .		
$text =~ s/>/&gt;/g;  # . . . HTML safe.

$text =~ s/ˆ'\s*$/<p>/mg; # Separate paragraphs.

# Turn email addresses into links . . .
$text =~ s{\b(\w[-.\w]*\@[-a-z0-9]+(\.[-a-z0-9]+)*\.(com|edu|info))\b}{<a href="mailto:$1">$1</a>}gix;

print $text;
