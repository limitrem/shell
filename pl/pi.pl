#!/usr/bin/perl
my ($k,$l);
my $m = 0;
for (my $n = 1; $n < 1000000000; $n++) {
$k = ($n-1)%2;
$l = $m+$l;
$m = 4000*(-1)**$k/(2*$n-1);
}
$l = $l/1000;
print "$l";
