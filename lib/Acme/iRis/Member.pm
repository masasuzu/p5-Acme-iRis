package Acme::iRis::Member;
use strict;
use warnings;
use utf8;
use feature qw(say);
use Acme::iRis::Data;

my %_instances;

sub instance {
    my ($class) = @_;

    die 'cannot use abstract class' if $class eq 'Acme::iRis::Member';
    return $_instances{$class} if exists $_instances{$class};

    my $data = do {
        (my $member = $class) =~ s/Acme::iRis::Member:://;
        my $original_data = Acme::iRis::Data->member($member);
        +{ map { ("__$_" => $original_data->{$_}) } keys %{ $original_data } };
    };

    $_instances{$class} = bless $data => $class;
    return $_instances{$class};
}

my @methods  = qw(
    fullname
    nickname
    color
    birthplace
    ansi_color_code
);

for my $method (@methods) {
    no strict 'refs';
    *{__PACKAGE__."::$method"} = sub { $_[0]->{"__$method"} };
}

sub colored {
    my ($self, $target) = @_;
    return $self->ansi_color_code . $target . "\e[0m";
}

sub say {
    my ($self, $target) = @_;
    say($self->colored($target));
}


sub birthdate {
    my ($self) = @_;
    return sprintf(
        '%4d/%02d/%02d',
        $self->{__birthdate}->{year},
        $self->{__birthdate}->{month},
        $self->{__birthdate}->{day},
    );
}

package Acme::iRis::Member::YamakitaSaki;
use parent 'Acme::iRis::Member';

package Acme::iRis::Member::SerizawaYu;
use parent 'Acme::iRis::Member';

package Acme::iRis::Member::AkaneyaHimika;
use parent 'Acme::iRis::Member';

package Acme::iRis::Member::WakaiYuki;
use parent 'Acme::iRis::Member';

package Acme::iRis::Member::KubotaMiyu;
use parent 'Acme::iRis::Member';

package Acme::iRis::Member::ShibuyaAzuki;
use parent 'Acme::iRis::Member';

1;

