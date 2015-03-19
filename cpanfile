requires 'perl', '5.008005';

# requires 'Some::Module', 'VERSION';
requires 'Scalar::Util'    , '1.41';
requires 'Encode::Locale'  , '1.03';
requires 'IO::Interactive' , '0.0.6';
requires 'POD2::Base'      , '0.043';
requires 'List::Util'      , '1.41';

# Зависимости фазы тестирования
on test => sub {
    # Test::More версии 0.88 или старше
    requires 'Test::More::UTF8'          , '0.04';
    requires 'Test::More'                , '1.001006';
    requires 'Test::Builder::IO::Scalar' , '2.111';
    requires 'Test::Builder'             , '1.001006';
    requires 'Test::Builder::Module'     , '1.001006';
};

# Зависимости фазы сборки, спасибо Владимиру Леттиеву из Pragmaticperl 
# http://pragmaticperl.com/issues/10/pragmaticperl-10-%D1%87%D1%82%D0%BE-%D1%82%D0%B0%D0%BA%D0%BE%D0%B5-cpanfile.html
on build => sub {
    requires 'Module::Build::Tiny', '0.039';
};

# Зависимости авторских тестов
on 'develop' => sub { 
    requires 'ExtUtils::Manifest'        => '1.70',
    requires 'Test::Pod'                 => '1.48',
    requires 'Test::Synopsis'            => '0.11',
};
