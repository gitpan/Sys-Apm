#!/usr/bin/perl

use Sys::Apm;

my $a = Sys::Apm->new or die "no apm support in kernel\n";

printf("bios: %s, driver: %s, ac_status: %d, charge: %s, remaining: %s %s\n",
        $a->bios_version,
        $a->driver_version,
        $a->ac_status,
        $a->charge,
        $a->remaining,
        $a->units,
      );
