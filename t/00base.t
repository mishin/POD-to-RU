# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl POD2-ES.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 2;
use Test::More::UTF8;

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

BEGIN { use_ok('POD2::RU') };

my $pod2 = POD2::RU->new();

like($pod2->search_perlfunc_re(), qr/^Список функций Perl/, 'Текстовый заголовок perlfunc');
