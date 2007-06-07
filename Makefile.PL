use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Graphics::GnuplotIF',
    AUTHOR              => 'Dr.-Ing. Fritz Mehner <mehner@fh-swf.de>',
    VERSION_FROM        => 'lib/Graphics/GnuplotIF.pm',
    ABSTRACT_FROM       => 'lib/Graphics/GnuplotIF.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Graphics-GnuplotIF-*' },
);
