use constant A => 'Fizz';
use constant B => 'Buzz';
use constant C => 'Fizz-Buzz';

my $lines = 100;
my $count = 0;

while (<>) {
    chomp;
    if ($.%3==0 && $.%5==0) {
        unless ($_ eq C) {
            fail (C);
        }
    } elsif ($.%5==0) {
        unless ($_ eq B) {
            fail (B);
        }
    } elsif ($.%3==0) {
        unless ($_ eq A) {
            fail (A);
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
