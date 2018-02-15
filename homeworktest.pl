#!/usr/bin/perl

#use strict;
#use warnings;
%phonebook;
print "File name?";
my $file = <STDIN>;
open(FILE, "phonebook.txt");
while(<FILE>){
  my($key, $val) = (split/ /,$_);
  $phonebook{$key} = $val;
  #print "$key $val\n";
}

close(FILE);

#my @phonebook_keys = keys(%phonebook);
#my @phonebook_vals = values(%phonebook);
#print "@phonebook_keys\n";
while(1) {

  print "(N) for name (#) for number search and (.) to exit:\n ";
  my $user_input = <STDIN>;
  #print $user_input;
  chomp($user_input);
  if($user_input eq "N"){
    print "Name?\n";
    my $name = <STDIN>;
    chomp($name);
    if(exists($phonebook{$name})){
      print "Number of $name is : $phonebook{$name}\n";
    }
  }
    elsif($user_input eq "#"){
      print "Number?\n";
      my $number = <STDIN>;
      chomp($number);
      if(exists($phonebook{$number})){
        print "This number belongs to: $phonebook{$number}\n";
      }
    }
    else{
      print "DONE!\n";
      exit;
    }

    }
