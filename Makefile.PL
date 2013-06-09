use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'MooseX::MultiInitArg',
    AUTHOR              => 'Paul Driver <frodwith@cpan.org>',
    VERSION_FROM        => 'lib/MooseX/MultiInitArg.pm',
    ABSTRACT_FROM       => 'lib/MooseX/MultiInitArg.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
				'Moose'      => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'MooseX-MultiInitArg-*' },
);
