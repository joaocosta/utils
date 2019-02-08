#!/usr/bin/perl

=head1 NAME

script.pl

=head1 SYNOPSIS

    script.pl ARG

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

GetOptions(
    "help"      => sub { Getopt::Long::HelpMessage() },
) or Getopt::Long::HelpMessage(2);
