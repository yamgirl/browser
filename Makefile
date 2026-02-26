CC=clang
CPPFLAGS=-g --std=c23 -pedantic-errors -Wall -Wextra -Werror

SRCS=hello.c hello_world.c
OBJS = $(SRCS:.c=.o)

%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) \
		-c $< -o $@

browser: browser.c $(OBJS)
	$(CC) $(CPPFLAGS) $(CFLAGS) \
		-o $@ $< \
		$(OBJS)

clean:
	rm -vf browser $(OBJS)

bear:
	bear -- make

.DEFAULT_GOAL=browser
.PHONY: clean
.PHONY: bear
