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
};

# Зависимости фазы сборки
on build => sub {
    requires 'Module::Build::Tiny', '0.039';
};
