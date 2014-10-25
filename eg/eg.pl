use strict;
use warnings;
use utf8;
use feature qw(say);

use Acme::iRis;

binmode STDOUT, ':utf8';

for my $member (Acme::iRis->members) {
    $member->say('名前           : '.$member->fullname);
    $member->say('ニックネーム   : '.$member->nickname);
    $member->say('イメージカラー : '.$member->color);
    $member->say('誕生日         : '.$member->birthdate);
    $member->say('出身地         : '.$member->birthplace);
}




