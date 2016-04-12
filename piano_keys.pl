#!/usr/bin/perl
#######################################################################
# Referencias de alturas, nombres, MIDI y Hertz correspondientes al
# temperamento igual.
######################################################################
use feature "say";

my @nombres = qw( A Bb B C C# D Eb E F F# G G# );

foreach my $n (reverse(1..107)){
    $pitch = sprintf "%3s -- midi %3d -- %.3f Hz", $nombres[($n-1) % 12],$n+20,2**(($n-49)/12) * 440;
    say $pitch;    
}
