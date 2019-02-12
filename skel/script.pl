#!/usr/bin/perl

=head1 NAME

script.pl

=head1 SYNOPSIS

    script.pl [--help]

=head1 DESCRIPTION

Skeleton for a perl script

=head1 LICENSE

This is released under the MIT
License. See L<https://opensource.org/licenses/MIT>.

=head1 AUTHOR

Joao Costa - L<http://zonalivre.org/>

=head1 SEE ALSO

=cut



use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;

my ($help, $man) = (0, 0);
GetOptions(
            "help"  => \$help,
            "man"   => \$man,
          ) or die("Error in command line arguments\n");

pod2usage(0)                if ($help);
pod2usage( -verbose => 2)   if ($man);
