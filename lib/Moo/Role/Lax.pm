package Moo::Role::Lax;

#ABSTRACT: Loads Moo::Role without turning warnings to fatal.

=head1 DEPRECATED

With the release of L<Moo> version 2, C<use Moo> no longer imports
L<strictures> by default and therefore warnings are not fatalised unless
an explicit C<use strictures> is added to the code.

As such, this module is no longer required - simply update your dependency
on Moo to version 2 and switch back to plain C<use Moo> in your classes.

Thus, as per version 2.00, this module simply requires L<Moo::Role> version 2.

=head1 DESCRIPTION

By default Moo::Role turns all warnings to fatal warnings. This module is
exactly the same as Moo::Role, except that it doesn't turn all warnings to
fatal warnings in the calling module.

=head1 SYNOPSIS

  # instead of use Moo::Role;
  use Moo::Role::Lax;

=cut

our $VERSION = 2;
use Moo::Role 2 ();
use Import::Into;

sub import { Moo::Role->import::into(caller, @_); return }

1;

=head1 CONTRIBUTORS

=over

=item *

Leon Timmermans

=back
