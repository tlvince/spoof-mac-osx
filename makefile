PREFIX?=/Library/StartupItems/SpoofMAC
INSTALLDIR?=$(DESTDIR)$(PREFIX)

all: install

install:
	ginstall -d "$(INSTALLDIR)"
	ginstall -Dm755 --owner=root --group=wheel SpoofMAC "$(INSTALLDIR)"
	ginstall -Dm644 --owner=root --group=wheel StartupParameters.plist "$(INSTALLDIR)"

uninstall:
	rm -rf "$(INSTALLDIR)"

.PHONY: all install uninstall
