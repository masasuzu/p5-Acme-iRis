use strict;
use warnings;
use utf8;
use feature qw(say);

use Acme::iRis;

binmode STDOUT, ':utf8';

for my $member (Acme::iRis->members) {
    say $member->fullname;
    say $member->nickname;
    say $member->color;
    say $member->birthdate;
    say $member->birthplace;
}




