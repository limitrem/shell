#!/usr/bin/perl
my $a= 1;
my $b= 1/sqrt(2);
my $t= 1/4;
my $p= 1;
for (1..3){
my $A= $a;
my $B= $b;
my $T= $t;
my $P= $p;
$a= ($A+$B)/2;
$b= sqrt($A*$B);
$t= $T-$P*($a-$A)*($a-$A);
$p= 2*$P 
}
my $pi= ($a+$b)*($a+$b)/(4*$t);
print "$pi";
