package Acme::iRis;
use 5.008001;
use strict;
use warnings;
use utf8;

use Acme::iRis::Member;

our $VERSION = "0.01";

sub members {
    return
        Acme::iRis::Member::YamakitaSaki->instance,
        Acme::iRis::Member::SerizawaYu->instance,
        Acme::iRis::Member::AkaneyaHimika->instance,
        Acme::iRis::Member::WakaiYuki->instance,
        Acme::iRis::Member::KubotaMiyu->instance,
        Acme::iRis::Member::ShibuyaAzuki->instance,
    ;
}


1;
__END__

=encoding utf-8

=head1 NAME

Acme::iRis - module for i☆Ris fan.

=head1 SYNOPSIS

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

=head1 DESCRIPTION

i☆Ris is japanese idol group.

=head1 LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

SUZUKI Masashi E<lt>m15.suzuki.masashi@gmail.comE<gt>

=cut

