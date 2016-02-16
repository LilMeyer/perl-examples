#!/usr/bin/perl -w
use strict;
use warnings;

my $path = shift || '.';

# Remove last / character if any
if (substr($path, -1) eq '/') {
  chop($path);
}

traverse($path);

sub traverse {
  my ($thing) = @_;

  printf "%s\n", $thing;

  return if not -d $thing;
  opendir my $dh, $thing or die;
  while (my $sub = readdir $dh) {
    next if $sub eq '.' or $sub eq '..';

    traverse("$thing/$sub");
  }
  close $dh;
  return;
}
