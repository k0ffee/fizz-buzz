for i in {1..100}; do
    if [[ $(($i % 15)) == 0 ]]; then
        print 'Fizz-Buzz'
    elif [[ $(($i % 5)) == 0 ]]; then
        print 'Buzz'
    elif [[ $(($i % 3)) == 0 ]]; then
        print 'Fizz'
    else
        print $i
    fi
done
