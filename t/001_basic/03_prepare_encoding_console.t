#########################
# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 2;
use Test::More::UTF8;
use Test::Deep;
use POD2::RU;
#########################
my $pod2 = POD2::RU->new();
$pod2->prepare_encoding_console();

# Test utf8 is ok.
{
my $uni = "\x{11e}";
     
    my @warnings;
    local $SIG{__WARN__} = sub {
        push @warnings, @_;
    };
 
    is( $uni, $uni, "Testing $uni" );
    is_deeply( \@warnings, [] );
}
