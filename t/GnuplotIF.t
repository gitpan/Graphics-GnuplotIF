#
#===============================================================================
#
#         FILE:  GnuplotIF.t
#
#  DESCRIPTION:  Test cases for GnuplotIF.pm
#                Before `make install' is performed this script should be
#                runnable with `make test'. After `make install' it should work
#                as `perl GnuplotIF.t'
#
#        FILES:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Dr.-Ing. Fritz Mehner (Mn), <mehner@fh-swf.de>
#      COMPANY:  Fachhochschule Südwestfalen, Iserlohn
#      VERSION:  1.2
#      CREATED:  27.08.2006 13:39:57 CEST
#     REVISION:  $Id: GnuplotIF.t,v 1.1.1.1 2007/06/07 07:14:27 mehner Exp $
#===============================================================================

use strict;
use warnings;

use Test::More tests => 1;                      # last test to print

use Graphics::GnuplotIF;

#---------------------------------------------------------------------------
#  test 1
#---------------------------------------------------------------------------
ok ( test1() , "run Graphics::GnuplotIF demo" );

#---------------------------------------------------------------------------
#  test function 1
#---------------------------------------------------------------------------
sub test1 {
    my  @x   = ( -2, -1.50,  -1,  -0.50,  0,  0.50,  1, 1.50, 2 ); # x values
    my  @y1  = (  4,  2.25,   1,   0.25,  0,  0.25,  1, 2.25, 4 ); # function 1
    my  @y2  = (  2,  0.25,  -1,  -1.75, -2, -1.75, -1, 0.25, 2 ); # function 2
    my  $wait= 2; 

    my  $plot1  = Graphics::GnuplotIF->new( title => "line", style => "points" );

    $plot1->gnuplot_set_plot_titles("function 1");
    $plot1->gnuplot_plot_y( \@x );              # plot 9 points over 0..8

    $plot1->gnuplot_pause( $wait );             # wait

    $plot1->gnuplot_set_title( "parabola" );    # new title
    $plot1->gnuplot_set_style( "lines" );       # new line style

    $plot1->gnuplot_plot_xy( \@x, \@y1, \@y2 ); # rewrite plot1 : y1, y2 over x
    $plot1->gnuplot_pause( $wait );

    #  Plot same data again, this time with all default settings.
    $plot1->gnuplot_reset();
    $plot1->gnuplot_plot_xy( \@x, \@y1, \@y2 ); # rewrite plot1 : y1, y2 over x
    $plot1->gnuplot_pause( $wait );

    my  $plot2  = Graphics::GnuplotIF->new;

    $plot2->gnuplot_set_xrange(  0, 4 );        # set x range
    $plot2->gnuplot_set_yrange( -2, 2 );        # set y range
    $plot2->gnuplot_cmd( "set grid" );          # send a gnuplot command
    $plot2->gnuplot_plot_equation(              # 3 equations in one plot
        "y1(x) = sin(x)", 
        "y2(x) = cos(x)", 
        "y3(x) = sin(x)/x" );

    $plot2->gnuplot_pause( $wait );             # wait

    $plot2->gnuplot_plot_equation(              # rewrite plot 2
        "y4(x) = 2*exp(-x)*sin(4*x)" );

    $plot2->gnuplot_pause( $wait );             # wait

    return 1;
} # ----------  end of subroutine test1  ----------

