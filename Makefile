.POSIX:

PREFIX = /usr/local
CC = gcc

dwmblocks: main.o
	$(CC) main.o -lX11 -Ofast -o dwmblocks
main.o: main.c config.h
	$(CC) \
		$(shell [[ -d /sys/class/power_supply/BAT1 ]] && echo "-D HAS_BATTERY") \
		-Ofast \
		-c \
		main.c
clean:
	rm -f *.o *.gch dwmblocks
install: dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks
	cp -f blocks/dwmblocks-* $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks-*
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks-*

.PHONY: clean install uninstall
