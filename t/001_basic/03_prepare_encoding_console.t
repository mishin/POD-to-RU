#########################
# change 'tests => 1' to 'tests => last_test_to_print';
use utf8;
use Test::More tests => 3;
use Test::More::UTF8;
use Test::Deep;
use POD2::RU;
use Test::Warn;
#########################
my $pod2 = POD2::RU->new();
$pod2->prepare_encoding_console();

# Test utf8 is ok.
    my $uni = "\x{11e}";

#    my @warnings;
#    local $SIG{__WARN__} = sub {
#        push @warnings, @_;
#    };

#    is( $uni, $uni, "Testing $uni" );
#    is_deeply( \@warnings, [] );

    warnings_are 
    {eval is( $uni, $uni, "Testing $uni" )} 
     [], "no warnings";
#    warning_like {eval q/"$x"; $x;/} 
#                 [qw/void uninitialized/], 
#		              "some warnings at compile time";

use IPC::Open3;
my $cmd=q{perl -MPOD2::RU -e '$pod2 = POD2::RU->new();$pod2->print_pod(q{perlre});'};
#	'perlre' переведены на русский Perl 5.18.0.1

#$pod2->prepare_encoding_console();


my ( $in, $out, $err );
#-foreach my $testcase (@testcases) {
    open3( $in, $out, $err, $cmd );
    print $in $testcase->{in};
    close $in;
    my $rout = join( '', <$out> );
    like  ($rout, qr/perlre/, q{	'perlre' found});
 #isnt   ($rout,q{	'perlre' переведены на русский Perl 5.18.0.1},q{	'perlre' переведены на русский Perl 5.18.0.1});
#print "$rout\n";
 #   ok( grep { $rout eq $_ } @{ $testcase->{out} }, $testcase->{in} );
#}
