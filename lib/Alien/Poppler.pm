package Alien::Poppler;
# ABSTRACT: Alien package for the Poppler PDF rendering library

use strict;
use warnings;

use parent qw(Alien::Base);
use File::Spec;

=method pdftotext_path

Returns a C<Str> which contains the absolute path
to the C<pdftotext> binary.

=cut
sub pdftotext_path {
	my ($self) = @_;
	File::Spec->catfile( File::Spec->rel2abs($self->dist_dir) , 'bin', 'pdftotext' );
}

1;
