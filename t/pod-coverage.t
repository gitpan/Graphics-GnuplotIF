#!perl -T
#===============================================================================
#
#         FILE:  pod-coverage.t
#
#  DESCRIPTION:  testing POD coverage
#
#        FILES:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Dr.-Ing. Fritz Mehner (Mn), <mehner@fh-swf.de>
#      COMPANY:  Fachhochschule Südwestfalen, Iserlohn
#      VERSION:  1.0
#      CREATED:  06.06.2007 19:51:15 CEST
#     REVISION:  $Id: pod-coverage.t,v 1.1.1.1 2007/06/07 07:14:27 mehner Exp $
#===============================================================================

use strict;
use warnings;

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;

my $login;
eval { $login = $ENV{USER} };
plan skip_all => "Only the author needs to check the POD documentation." if ($@ || $login ne "mehner" );

all_pod_coverage_ok();
