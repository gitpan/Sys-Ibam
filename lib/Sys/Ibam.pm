package Sys::Ibam;

use strict;
use warnings;

use AutoLoader;

our $VERSION = '0.01';

sub AUTOLOAD {
	my $self = shift;
    our $AUTOLOAD;
    my $sub;

    ($sub = $AUTOLOAD) =~ s/.*:://;
	return if $sub eq 'DESTROY';
	unless( $self->can("_$sub") ) {
		require Carp;
		Carp::croak("Can't locate method $sub via package ".__PACKAGE__);
	}

	$sub = \&{ "_$sub" };
	$self->$sub(@_);
}

require XSLoader;
XSLoader::load('Sys::Ibam', $VERSION);

1;
__END__

=head1 NAME

Sys::Ibam - Perl extension for the intellegent battery monitor

=head1 SYNOPSIS

  use Sys::Ibam;
  $i = Sys::Ibam->new();
  $i->update();
  if( $i->valid() ) {
    $i->update_statistics();
  } else {
    $i->ignore_statistics();
  }
  $i->save();

=head1 DESCRIPTION

Sys::Ibam is a Perl extension for the ingellegent battery monitor by Sebastian
Ritterbusch <Sebastian@Ritterbusch.de>. It uses statistical and adaptive linear
methods to provide accurate estimations of minutes of battery left or of the
time needed until full recharge. It requires /proc/apm.

This module follows the internal ibam API quite closely. Only the import()
method has been renamed to import_old_data(). See ibam.inl for details.

=head1 SEE ALSO

ibam(1)

=head1 AUTHOR

Florian Ragwitz E<lt>flora@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Florian Ragwitz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.4 or,
at your option, any later version of Perl 5 you may have available.


=cut
