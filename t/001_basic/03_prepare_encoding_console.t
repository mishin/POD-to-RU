#!perl

use strict;
use warnings;
use utf8;
use Test::More tests => 1;
use I18N::Langinfo qw/langinfo CODESET/;
use PerlIO::locale;
use IPC::Open3;
use POD2::RU;

use POSIX qw(locale_h);

SKIP: {
    setlocale( LC_CTYPE, "en_US.UTF-8" )
      or skip( "no such locale", 1 )
      if langinfo(CODESET) ne 'UTF-8';

    my $pod2 = POD2::RU->new();
    my $cmd =
q{perl -MPOD2::RU -e '$pod2 = POD2::RU->new();$pod2->print_pod(q{perlre});'};

    my ( $in, $out, $err );
    open3( $in, $out, $err, $cmd );
    close $in;
    my $rout = join( '', <$out> );
    like( $rout, qr/perlre/, q{	'perlre' found} );

}
