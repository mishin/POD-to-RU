requires 'perl', '5.008005';

# requires 'Some::Module', 'VERSION';
requires 'POD2::Base';
requires 'IO::Interactive';
requires 'Encode::Locale';

# Зависимости фазы тестирования
on test => sub {
    # Test::More версии 0.88 или старше
    requires 'Test::More', '0.96';
    requires 'Test::More::UTF8';
    requires 'Test::Pod', '1.00';
};

# Зависимости фазы сборки, спасибо Владимиру Леттиеву из Pragmaticperl 
# http://pragmaticperl.com/issues/10/pragmaticperl-10-%D1%87%D1%82%D0%BE-%D1%82%D0%B0%D0%BA%D0%BE%D0%B5-cpanfile.html
on build => sub {
    requires 'Module::Build::Tiny', '0.039';
};
