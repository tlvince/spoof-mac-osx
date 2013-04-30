PREFIX?=/Library/StartupItems/SpoofMAC
INSTALLDIR?=$(DESTDIR)$(PREFIX)

all: install

install:
	ginstall -d "$(INSTALLDIR)"
	ginstall -Dm755 SpoofMAC "$(INSTALLDIR)"
	ginstall -Dm644 StartupParameters.plist "$(INSTALLDIR)"

uninstall:
	rm -rf "$(INSTALLDIR)"

.PHONY: all install uninstall
