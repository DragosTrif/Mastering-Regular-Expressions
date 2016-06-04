#!/usr/bin/perl
use strict;
use warnings;


my $line;
my $subject;
my  $date;
my $reply_address;
my $replyaddress;
my $from_name; 

# if you run this script with this comannd:
# perl -w mkreply.pl king.in > king.out
# it will create a new file with the folowing lines 
# writen insde it:
# To: elvis@hh.tabloid.org (The King)
# From: Jeffrey Friedl <jfriedl@ora.com>
# Subject: Re: Be seein' ya around
 


while ($line = <>) {
if ($line =~ m/^\s*$/ ) { # if we have an empty line . . .
last; # this immediately ends the 'while' loop.
}
if ($line =~ m/^Subject: (.*)/) {
 $subject = $1;
}
if ($line =~ m/^Date: (.*)/) {
 $date = $1;
}
if ($line =~ m/^Reply-To: (\S+)/) {
 $reply_address = $1;
}
if ($line =~ m/^From: (\S+) \(([^()]*)\)/) {
 	$replyaddress = $1;
	$from_name = $2;
}
}

print "To: $reply_address ($from_name)\n";
print "From: Jeffrey Friedl <jfriedl\@ora.com>\n";
print "Subject: Re: $subject\n";
print " \n";
