#########################
# change 'tests => 1' to 'tests => last_test_to_print';
use utf8;
use Test::More tests => 1;
use Test::More::UTF8;
use Test::Deep;
use POD2::RU;
#########################
my $pod2 = POD2::RU->new();
use Test::Output;
$pod2->prepare_encoding_console();

sub writer {
    $pod2->print_pods;    #('perlretut');
}

#stdout_isnt
stdout_isnt(
    \&writer,
    qq{\t'a2p' переведен на русский Perl 5.18.0.1
\t'perl' переведен на русский Perl 5.18.0.1
\t'perlbook' переведен на русский Perl 5.18.0.1
\t'perlcheat' переведен на русский Perl 5.18.0.1
\t'perldoc' переведен на русский Perl 5.18.0.1
\t'perlintro' переведен на русский Perl 5.18.0.1
\t'perlnewmod' переведен на русский Perl 5.18.0.1
\t'perlpragma' переведен на русский Perl 5.18.0.1
\t'perlre' переведен на русский Perl 5.18.0.1
\t'perlreapi' переведен на русский Perl 5.18.0.1
\t'perlrebackslash' переведен на русский Perl 5.18.0.1
\t'perlrecharclass' переведен на русский Perl 5.18.0.1
\t'perlreguts' переведен на русский Perl 5.18.0.1
\t'perlrequick' переведен на русский Perl 5.18.0.1
\t'perlreref' переведен на русский Perl 5.18.0.1
\t'perlretut' переведен на русский Perl 5.18.0.1
\t'perlrun' переведен на русский Perl 5.18.0.1
\t'perlsecret' переведен на русский Perl 5.18.0.1
\t'perlstyle' переведен на русский Perl 5.18.0.1
\t'perlunicode' переведен на русский Perl 5.18.0.1
},
    'Test STDOUT of print_pod'
);

#&writer();
