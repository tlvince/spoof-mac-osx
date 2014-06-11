PREFIX?=
INSTALLDIR?=$(DESTDIR)$(PREFIX)

all: install

install:
	ginstall -d "$(INSTALLDIR)/opt/local/bin" "$(INSTALLDIR)/Library/LaunchDaemons"
	ginstall -Dm755 --owner=root --group=wheel spoofmac "$(INSTALLDIR)/opt/local/bin"
	ginstall -Dm644 --owner=root --group=wheel com.tlvince.spoofmac.plist "$(INSTALLDIR)/Library/LaunchDaemons"

uninstall:
	rm "$(INSTALLDIR)/opt/local/bin/spoofmac"
	rm "$(INSTALLDIR)/Library/LaunchDaemons/com.tlvince.spoofmac.plist"

.PHONY: all install uninstall
