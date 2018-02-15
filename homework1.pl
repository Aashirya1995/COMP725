#!/usr/bin/perl

#use strict;
#use warnings;

my %phonebook = (
      "Aashirya" => "603-233-3356",
      "Ritika" => "603-566-8782",
      "Lamia" => "603-233-4432",
);
#print $phonebook;

print "What is your name?";
my $name = <STDIN>;
my @nums = values %phonebook;
#print "@nums\n";
for my $names (keys %phonebook) {
      if (@name == @names) {
        print "$phonebook{$names}\n";
      }
}
