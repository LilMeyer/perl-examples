#!/usr/bin/perl -w
use strict;
use warnings;

my $i;
my %calls;
my $line;
my $max_calls = 0;

foreach $line (<stdin>) {
	my @times = split /:/, $line;
	my $start = $times[0];
	my $end = $times[1];

	while($start <= $end) {
		$calls{$start}++;
		$start++;
	}
}

# Get the max
foreach $i (values (%calls)) {
	if($max_calls < $i) {
		$max_calls = $i;
	}
}

printf "%s\n", $max_calls;
