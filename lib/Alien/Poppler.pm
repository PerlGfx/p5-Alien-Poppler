package Alien::Poppler;
# ABSTRACT: Alien package for the Poppler PDF rendering library

use strict;
use warnings;

use base qw( Alien::Base );
use Role::Tiny::With qw( with );

with 'Alien::Role::Dino';

use File::Spec;

=method pdftotext_path

Returns a C<Str> which contains the absolute path
to the C<pdftotext> binary.

=cut
sub pdftotext_path {
	my ($self) = @_;
	File::Spec->catfile( File::Spec->rel2abs($self->dist_dir) , qw(bin pdftotext) );
}

sub pkg_config_path {
	my ($class) = @_;
	File::Spec->catfile( File::Spec->rel2abs($class->dist_dir), qw(lib pkgconfig) );
}

1;
__END__
=head1 SEE ALSO

L<Poppler|https://poppler.freedesktop.org/>

L<Repository information|http://project-renard.github.io/doc/development/repo/p5-Alien-Poppler/>
