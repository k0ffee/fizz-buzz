CC = cc
CFLAGS = -W -Wall -Wextra -Werror -O

languages = zsh perl c go awk

.PHONY: all ${languages}

all:
	@echo "choose targets:"
	@for name in ${languages}; do \
	    echo "  make $$name"; \
	done
	@echo "or:"
	@echo "  make test"
	@echo "  make clean"

zsh:
	@zsh fizz-buzz.zsh

perl:
	@perl fizz-buzz.perl

c: fizz-buzz
	@./fizz-buzz

fizz-buzz: fizz-buzz.c
	@${CC} ${CFLAGS} -o $@ $<

go:
	@go run fizz-buzz.go

awk:
	@awk -f fizz-buzz.awk

clean:
	rm -f fizz-buzz

test:
	@for name in ${languages}; do \
	    printf "testing $$name: "; \
	    make $$name | perl tests/test-lines.perl && \
	        echo "ok." || exit 1; \
	done
