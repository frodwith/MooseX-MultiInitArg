# NAME

MooseX::MultiInitArg - Attributes with aliases for constructor arguments.

# SYNOPSIS

    package Thinger;
    use Moose;
	use MooseX::MultiInitArg;
    

    has 'data' => (
        metaclass => 'MultiInitArg',

      # For composability, you could use the following:
      # traits => ['MooseX::MultiInitArg::Trait'],

        is        => 'ro',
        isa       => 'Str',
        init_args => [qw(munge frobnicate)],
    );

    package main;

    # All these are equivalent
    my $foo = Thinger->new(data => 'foo');
    my $foo = Thinger->new(munge => 'foo');
    my $foo = Thinger->new(frobnicate => 'foo');

# DESCRIPTION

If you've ever wanted to be able to call an attribute any number of things
while you're passing arguments to your object constructor, Now You Can.

The primary motivator is that I have some attributes that were named 
inconsistently, and I wanted to rename them without breaking backwards 
compatibility with my existing API.

# AUTHOR

Paul Driver, `<frodwith at cpan.org>`

# COPYRIGHT AND LICENSE

Copyright 2007-2013 by Paul Driver.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
