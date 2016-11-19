#!/usr/bin/perl
open (my $file,"<","sample.txt") or die "this file doesn't exsist!:\!";
my @line=<$file>;
my $sample= @line;
my $sum=0;
foreach my $m(@line){
  $sum= $sum+$m;
}
my $ave= $sum/$sample; 
my $dispersion=0;
foreach my $l(@line){
  $dispersion= $dispersion+100*($l-$ave)*($l-$ave)/$sample;
}
my $deviation=sqrt($dispersion)/10;
print "人数:$sample\n";
print "平均点:$ave\n";
print "標準偏差:$deviation\n"
