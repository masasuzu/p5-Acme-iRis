use strict;
use warnings;
use utf8;
use feature qw(say);

use Acme::iRis;

binmode STDOUT, ':utf8';

for my $member (Acme::iRis->members) {
    $member->say($member->fullname);
    $member->say($member->nickname);
    $member->say($member->color);
    $member->say($member->birthdate);
    $member->say($member->birthplace);
}




