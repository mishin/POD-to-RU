use Test::More;
eval q{ use Test::Spelling };
plan skip_all => "Test::Spelling is not installed." if $@;
add_stopwords(<DATA>);
set_spell_cmd("aspell -l ru-yo list");
#set_spell_cmd("aspell -l en list");
#set_spell_cmd("aspell --lang=ru-yo list|aspell --lang=en list");
all_pod_files_spelling_ok('lib');
__DATA__
Nikolay
Mishin
aXXXb
runtime
REx
aa
ATGC
housecat
cathouse
ba
bb
bc
bd
ddd
das
charnames
Kimball
IsCntrl
IsGraph
LMNPS
cd
ATC
dec
STDERR
toto
bert
dD
chr
optimizations
de
df
saippuakauppias
aaaaabb
pragma
perl
Sabbathize
catenates
lexically
eE
ef
fA
der
regex
elsif
abcdef
fg
gc
cZ
IsDigit
TGA
eq
TGC
gi
cdef
perlretut
hh
perlunitut
termcap
dir
pragmas
IsPrint
booboo
multi
Sabbathizes
IsSpace
dna
foreach
lc
xyz
progra
POSTMATCH
li
minlen
PREMATCH
GAA
LM
GAC
binmode
katakana
lp
cntrl
incrementing
IsASCII
LMN
aaaa
RegExp
bcat
Ukeypunch
mr
savestack
Pe
printf
bertram
expr
IsWord
IsAlpha
pM
chmod
STDOUT
rf
perlunicode
oW
str
Pinyan
Mmm
AWho
xdigit
multiline
abcde
subexpression
qw
sm
oct
xaa
abba
sS
ss
ming
IsPunct
aaa
supercalifragilisticexpialidocious
abcd
donut
aba
IsAlnum
AAG
abc
aeiou
abd
ut
acb
fmt
greek
QThat
perldebguts
xat
zA
mrs
goto
aat
ATCGTTGAAT
utf
yaa
ascii
patt
IsSpacePerl
usr
debugcolor
txt
O'Reilly
substrings
yY
sabbath
keymatch
eval
perlfunc
housecats
STDIN
dogbert
yyyy
perlrecharclass
Kvale
zaa
fooooba
perlop
POSIX
dilbert
IsUpper
baz
perlre
num
bcr
Haworth
unicode
toks
codon
punct
osg
substr
lang
kwds
ATCGTTGAATGCAAATGACATGAC
catwords
alnum
dirs
nWho
GTT
IsLower
Friedl
IsBlank
pos
IsXDigit
ing
