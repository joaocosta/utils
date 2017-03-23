#!/usr/bin/perl

=head1 NAME

wordsearch

=head1 SYNOPSIS

    wordsearch WORD

=head1 DESCRIPTION

Search for a word in a list of alphabetically ordered words

=head1 LICENSE

This is released under the Artistic 
License. See L<perlartistic>.

=head1 AUTHOR

Joao Costa - L<http://zonalivre.org/>

=head1 SEE ALSO

=cut



use strict;
use warnings;
use Pod::Usage;
use File::Slurp;

my $word = shift or pod2usage();
my @dict = read_file("/usr/share/dict/words", chomp => 1);

my $word_index = binary_search(lc($word), \@dict, 0, scalar(@dict)-1);

if (defined($word_index)) {
    print "Word '$word' occurs at index $word_index\n";
} else {
    print "Word '$word' not found\n";
}


sub binary_search {
    my ($word, $dict, $min, $max) = @_;

    my $mid = $min + (int(($max-$min)/2)+1);

    print "$min\t$mid\t$max\tmid word is $dict->[$mid]\n";
    return if ($min == $max);

    if ($word gt lc($dict->[$mid])) {
        return binary_search($word, $dict, $mid+1, $max);
    } elsif ($word lt lc($dict->[$mid])) {
        return binary_search($word, $dict, $min, $mid-1);
    } else {
        return $mid;
    }
}
