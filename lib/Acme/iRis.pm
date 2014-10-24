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
        $member->say($member->fullname);
        $member->say($member->nickname);
        $member->say($member->color);
        $member->say($member->birthdate);
        $member->say($member->birthplace);
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

