#
#===============================================================================
#
#         FILE:  00.load.t
#
#  DESCRIPTION:  module load test
#
#        FILES:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Dr.-Ing. Fritz Mehner (Mn), <mehner@fh-swf.de>
#      COMPANY:  Fachhochschule Südwestfalen, Iserlohn
#      VERSION:  1.0
#      CREATED:  06.06.2007 19:51:15 CEST
#     REVISION:  $Id: 00.load.t,v 1.1.1.1 2007/06/07 07:14:27 mehner Exp $
#===============================================================================

use strict;
use warnings;

use Test::More tests => 1;                      # last test to print

BEGIN {
    use_ok( 'Graphics::GnuplotIF' );
}

diag( "Testing GnuplotIF $Graphics::GnuplotIF::VERSION" );
