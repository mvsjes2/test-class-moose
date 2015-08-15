package Test::Class::Moose::Deprecated;

# ABSTRACT: Managed deprecation warnings for Test::Class::Moose

use Package::DeprecationManager -deprecations => {
    'Test::Class::Moose->runtests'              => '0.55',
    'Test::Class::Moose::Report->current_class' => '0.61',
};

1;

__END__

=pod

=head1 DESCRIPTION

    use Test::Class::Moose::Deprecated -api_version => $version;

=head1 FUNCTIONS

This module manages deprecation warnings for features that have been
deprecated in L<Test::Class::Moose>.

If you specify C<< -api_version => $version >>, you can use deprecated features
without warnings. Note that this special treatment is limited to the package
that loads C<Moose::Deprecated>.

=head1 DEPRECATIONS BY VERSION

The following features were deprecated in past versions and will now warn:

=head2 Test::Class::Moose->runtests

This was deprecated in version 0.55.

Use L<Test::Class::Moose::Runner> to run tests instead.

=head2 Test::Class::Moose::Report->current_class

This was deprecated in version 0.61.

Use L<Test::Class::Moose::Report->current_instance> instead.

=cut