#########################
# change 'tests => 1' to 'tests => last_test_to_print';
use utf8;
use Test::More tests => 1;
use Test::More::UTF8;
use Test::Deep;
use POD2::RU;
#########################
use POSIX qw(setlocale LC_CTYPE);

my $locale ='ru_RU.UTF-8';# "Russian_Russia.1251";
setlocale (LC_CTYPE, $ENV{LC_CTYPE} = $locale) or plan skip_all => "cannot set locale to $locale";
#use locale;
#use POSIX qw(locale_h);

#my $locale ='ru_RU.UTF-8';# "Russian_Russia.1251";
#setlocale(LC_COLLATE, $locale);
#setlocale(LC_CTYPE, $locale);
#
my $pod2 = POD2::RU->new();
use Test::Output;

#$pod2->prepare_encoding_console();

# sub writer {
    # $pod2->print_pod('perlretut');
# }

# stdout_isnt(
    # \&writer,
    # qq{\t'perlretut' переведен на русский Perl 5.18.0.1\n},
    # 'Test STDOUT of print_pod'
# );

# is ($pod2->print_pod(),1,'выдаёт 1');
is ($pod2->print_pod('perlxstypemap'),1,'get 1');
