# NAME

Acme::iRis - module for i☆Ris fan.

# SYNOPSIS

    use utf8;
    binmode STDOUT, ':utf8';

    use Acme::iRis;


    for my $member (Acme::iRis->members) {
        $member->say('名前           : '.$member->fullname);
        $member->say('ニックネーム   : '.$member->nickname);
        $member->say('イメージカラー : '.$member->color);
        $member->say('誕生日         : '.$member->birthdate);
        $member->say('出身地         : '.$member->birthplace);
    }

# DESCRIPTION

i☆Ris is japanese idol group.

# LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

SUZUKI Masashi <m15.suzuki.masashi@gmail.com>
