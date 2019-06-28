BEGIN {
    for (i = 1; i <= 100; i++) {
        if (i % 15 == 0) {
            print "Fizz-Buzz"
        } else if (i % 5 == 0) {
            print "Buzz"
        } else if (i % 3 == 0) {
            print "Fizz"
        } else {
            print i
        }
    }
}
