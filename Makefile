USER_INSTALL_PREFIX=$(HOME)/.local/
SYSTEM_INSTALL_PREFIX=/usr/local/

user-install: /usr/bin/curl /usr/bin/fpaste
	install -D git-fpaste $(USER_INSTALL_PREFIX)/bin/

install: /usr/bin/curl /usr/bin/fpaste
	install -D git-fpaste $(SYSTEM_INSTALL_PREFIX)/bin/

/usr/bin/curl:
	pkcon install curl

/usr/bin/fpaste:
	pkcon install fpaste
