# NAME

Acme::iRis - module for i☆Ris fan.

# SYNOPSIS

    use utf8;
    binmode STDOUT, ':utf8';

    use Acme::iRis;


    for my $member (Acme::iRis->members) {
        $member->say($member->fullname);
        $member->say($member->nickname);
        $member->say($member->color);
        $member->say($member->birthdate);
        $member->say($member->birthplace);
    }

# DESCRIPTION

i☆Ris is japanese idol group.

# LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

SUZUKI Masashi <m15.suzuki.masashi@gmail.com>
