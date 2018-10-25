my $FB = 'Fizz-Buzz';
my $F  = 'Fizz';
my $B  = 'Buzz';

my $lines = 100;
my $count = 0;

while (<>) {
    chomp;
    if ($.%3==0 && $.%5==0) {
        unless ($_ eq $FB) {
            fail ($FB);
        }
    } elsif ($.%5==0) {
        unless ($_ eq $B) {
            fail ($B);
        }
    } elsif ($.%3==0) {
        unless ($_ eq $F) {
            fail ($F);
        }
    } elsif (/^\d+$/) {
        unless ($. eq $_) {
            fail ($.);
        }
    } else {
        fail ("unknown");
    }
    $count++;
}

if ($count != $lines) {
    print "fail: want $lines lines, got $count\n";
    exit 1;
}

sub fail {
    print "fail: line $., want \"@_\", got \"$_\"\n";
    exit 1;
}
