package Acme::iRis::Member;
use strict;
use warnings;
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

sub fullname   { $_[0]->{__fullname}   }
sub nickname   { $_[0]->{__nickname}   }
sub color      { $_[0]->{__color}      }
sub birthplace { $_[0]->{__birthplace} }

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

