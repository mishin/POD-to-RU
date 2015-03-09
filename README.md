# NAME

POD2::RU - Perl Документация по-русски

# SYNOPSIS

    use POD2::RU;

    $ perldoc POD2::RU::<название_pod>

    $ perl -MPOD2::RU -e print_pods
    $ perl -MPOD2::RU -e print_pod <название_pod1> [<название_pod2> ...]

    use POD2::RU;
    print_pods();
    print_pod('pod_foo', 'pod_baz');

    use POD2::RU;
    my $pod2 = POD2::RU->new();
    $pod2->print_pods();
    $pod2->print_pod('perlfunc');
                                                                                            

# DESCRIPTION

POD2::RU is

Этот модуль содержит перевод Perl-документации на русский. Домашняя страница проекта ─ [https://github.com/mishin/perldoc-ru](https://github.com/mishin/perldoc-ru). 

После установки пакета, вы можете использовать следующую команду, чтобы получить документацию:

    $ perldoc POD2::RU::<название_pod>

Начиная с Pod::Perldoc версии 3.14 можно использовать следующий синтаксис:

    $ perldoc -L RU <название_pod>
    $ perldoc -L RU -f <функция>
    $ perldoc -L RU -q <регулярное выражение для FAQ>

Модификатор  `-L` определяет код языка перевода. Если пакет `POD2::<код_языка>` не существует, то модификатор игнорируется.

Для ленивых можно добавить псевдоним (alias):

    perldoc-ru="perldoc -L RU"

для того, чтобы не писать модификатор  `-L` каждый раз:

    $ perldoc-ru perlre
    $ perldoc-ru -f map

Начиная с  `Pod::Perldoc` версии 3.15 вы можете использовать переменную среды PERLDOC\_POD2. Если эта переменная установлена в '1', то perldoc осуществляет поиск pod документации на языке, указанном в переменной LC\_ALL, LANG или LC\_LANG. Или же вы можете установить значение "ru", означающее вывод документации на русском языке. Например,

       export PERLDOC_POD2="ru"
       perldoc perl

# API

Пакет экспортирует следующие функции:

- `new`

    Была добавлена для совместимости с `perldoc` Perl 5.10.1.
    [Pod::Perldoc](https://metacpan.org/pod/Pod::Perldoc) использует ее для возврата имени пакета перевода.

- `pod_dirs`

    Была добавлена для совместимости с `perldoc` Perl 5.10.1.
    [Pod::Perldoc](https://metacpan.org/pod/Pod::Perldoc) использует ее для определения, где искать переведенные файлы.

- `print_pods`

    Выводит все переведенные части и оригинальную версию Perl.

- `print_pod`

    Выводит на экран оригинальнуя версию Perl для всех частей, переданых в качестве аргументов.

- `search_perlfunc_re`

    `perldoc -f function` использует возвращаемое значение этой функции (как regexp), чтобы пропустить введение и найти список функций.

# AUTHOR

Nikolay Mishin <mi@ya.ru>

# АВТОРЫ

- Николай Мишин  `<mishin@cpan.org>`
- Анатолий Шарифулин  `<sharifulin@gmail.com>`
- Алексей Суриков `<KSURi>`
- Михаил Любимов  `<mikhail.lyubimov>`
- Дмитрий Константинов  `<Dim_K>`
- Евгений Баранов  `<Baranov>`
- Антон Николаев `<me@lelf.lu>`
- Динар Жамалиев `<zhdinar>`
- Валерий Кравчук `<valera@openxs.kiev.ua>`

# COPYRIGHT

Copyright 2015- Nikolay Mishin

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[POD2::ES](https://metacpan.org/pod/POD2::ES), [POD2::PT\_BR](https://metacpan.org/pod/POD2::PT_BR), [POD2::IT](https://metacpan.org/pod/POD2::IT), [POD2::FR](https://metacpan.org/pod/POD2::FR), [POD2::LT](https://metacpan.org/pod/POD2::LT).

# DONATIONS

Проект перевода документации Perl требует постоянных усилий, что доступно только для сильных духов и альтруистов.
Авторы не просят, но ни не отвергают помощь в виде денег, книг, сыра и продуктов из свинины (можно хамон;) ), или даже поездки в Полинезию для снижения утомления и сохранения боевого духа команды. Мы приглашаем всех.

# THANKS 

Авторы хотели бы выразить свою благодарность команде разработчиков OmegaT, инструмента, который используется для перевода.

Проект OmegaT: [http://omegat.org/](http://omegat.org/)

Также хотелось бы выразить благодарность автору перевода perl документации на испанский язык 
POD2::ES Enrique Nell за его в помощь в напимании скриптов и вообще основу  взял с этого репозитория.

Проект POD2::ES: [https://github.com/zipf/perldoc-es](https://github.com/zipf/perldoc-es)

Благодарность Yusuke Kawasaki за совет разместить весь проект на github
на вопрос о японской документации он ответил:
They (JPRP people) uses sourceforge and its CVS. 

[http://sourceforge.jp/cvs/view/perldocjp/docs/modules/](http://sourceforge.jp/cvs/view/perldocjp/docs/modules/)

They are using a traditional mailing list and sourceforge's bug tracking system. In my opinion, github would be a much better way to manage those things at the moment. github was not exist when they started the project.
