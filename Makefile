all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/share/burpsuite
	cp burpsuite.jar $(DESTDIR)/usr/share/burpsuite
	cp burpsuite $(DESTDIR)/usr/bin/burpsuite
	chown root:root $(DESTDIR)/usr/bin/burpsuite
	chown root:root $(DESTDIR)/usr/share/burpsuite/burpsuite.jar
	chmod 775 $(DESTDIR)/usr/bin/burpsuite
