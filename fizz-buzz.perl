for (1 .. 100) {
    if ($_ % 15 == 0) {
        print "Fizz-Buzz\n";
    } elsif ($_ % 5 == 0) {
        print "Buzz\n";
    } elsif ($_ % 3 == 0) {
        print "Fizz\n";
    } else {
        print "$_\n";
    }
}
