#!perl -T
#===============================================================================
#
#         FILE:  pod.t
#
#  DESCRIPTION:  Testing POD
#
#        FILES:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Dr.-Ing. Fritz Mehner (Mn), <mehner@fh-swf.de>
#      COMPANY:  Fachhochschule Südwestfalen, Iserlohn
#      VERSION:  1.0
#      CREATED:  06.06.2007 19:51:15 CEST
#     REVISION:  $Id: pod.t,v 1.2 2007/10/13 15:55:50 mehner Exp $
#===============================================================================

use strict;
use warnings;

use Test::More;
eval "use Test::Pod 1.0";
plan skip_all => "Test::Pod 1.0 required for testing POD" if $@;

my $login;
eval { $login = $ENV{USER} };
plan skip_all => "Only the author needs to check the POD documentation." if ($@ || $login ne "mehner" );

all_pod_files_ok();
