#!/usr/bin/perl
use strict;
use warnings;

# this is a heredoc
my $text =<<'END_TEXT';  

Dear <FIRST>,
You have been chosen to win a brand new <TRINKET>! Free!
Could you use another <TRINKET> in the <FAMILY> household?
Yes <SUCKER>, I bet you could! Just respond by

END_TEXT

print $text;

my $given = 'Tom';
my $family = 'Cruise';
my $wunderprize = '100% genuine faux diamond';
my $sucker = 'Tom Cruise';

#new regex concepts :
# s/ used for substitutions it has the folowing sintax:
# $var =~ s/regex/replacement/
# /g "global match" modifier instructs to
#continue trying to find more matches 
#(and make more replacements) after (and where) the
#first substitution completes

$text =~ s/<FIRST>/$given/g;
$text =~ s/<TRINKET>/$wunderprize/g;
$text =~ s/<FAMILY>/$family/g;
$text =~ s/<SUCKER>/$sucker/g;

print $text;



