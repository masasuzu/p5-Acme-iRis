package Acme::iRis::Data;
use strict;
use warnings;
use utf8;

my $_members = +{
    YamakitaSaki => +{
        fullname => '山北早紀',
        nickname => 'さきさま',
        color => 'green',
        birthplace => '北海道',
        birthdate => +{
            year  => 1991,
            month => 2,
            day   => 28,
        },
    },
    SerizawaYu => +{
        fullname => '芹澤優',
        nickname => 'ゆう',
        color => 'blue',
        birthplace => '東京都',
        birthdate => +{
            year  => 1994,
            month => 12,
            day   => 3,
        },
    },
    AkaneyaHimika => +{
        fullname => '茜屋日海夏',
        nickname => 'ひみ',
        color => 'purple',
        birthplace => '秋田県',
        birthdate => +{
            year  => 1994,
            month => 7,
            day   => 16,
        },
    },
    WakaiYuki => +{
        fullname => '若井友希',
        nickname => 'ゆうき',
        color => 'red',
        birthplace => '岐阜県',
        birthdate => +{
            year  => 1995,
            month => 10,
            day   => 30,
        },
    },
    KubotaMiyu => +{
        fullname => '久保田未夢',
        nickname => 'みゆたん',
        color => 'orange', # 'black', # unofficial
        birthplace => '埼玉県',
        birthdate => +{
            year  => 1995,
            month => 1,
            day   => 31,
        },
    },
    ShibuyaAzuki => +{
        fullname => '澁谷梓希',
        nickname => 'ずっちゃん',
        color => 'yellow',
        birthplace => '埼玉県',
        birthdate => +{
            year  => 1993,
            month => 8,
            day   => 11,
        },
    },
};

my $_ansi_color_map = +{
    orange => "\e[1;31m", # light red
    yellow => "\e[1;33m", # light yellow
    purple => "\e[35m",   # magenta
    red    => "\e[31m",
    green  => "\e[32m",
    blue   => "\e[34m",
    stop   => "\e[0m",
};

for my $m (keys %{$_members}) {
    $_members->{$m}->{ansi_color_code} = $_ansi_color_map->{$_members->{$m}->{color}};
}


sub member {
    my ($class, $member) = @_;
    return $_members->{$member} if exists $_members->{$member};
    return;
}

1;
