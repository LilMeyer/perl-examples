#!/usr/bin/perl -w
use strict;
use warnings;

# This script sort words by occurence

my %occurrences;
my @words;

# Read the standard input
while (<STDIN>) {
  @words = split /\s+/, $_;
  # Count occurrence for each word
  foreach (@words) {
    $occurrences{$_}++;
  }
}

# Sort by occurence
foreach my $word (reverse sort {$occurrences{$a} <=> $occurrences{$b}} keys %occurrences) {
  printf "%s %s\n", $occurrences{$word}, $word;
}
