#!/usr/bin/perl
use strict; use warnings;

my $dst = shift || die("Pass destination IP");

use Net::Libdnet::Intf;

my $h = Net::Libdnet::Intf->new;
my $info = $h->getDst($dst);
print $info->print."\n";
