USER_INSTALL_PREFIX=$(HOME)/.local
SYSTEM_INSTALL_PREFIX=/usr/local

COMPLETION=git-fpaste-completion.bash
COMPLETION_INSTALL_PATH=/share/bash-completion/completions/

user-install: /usr/bin/curl /usr/bin/fpaste
	install -D git-fpaste $(USER_INSTALL_PREFIX)/bin/
	install -m 644 -D 						\
		$(COMPLETION)						\
		$(USER_INSTALL_PREFIX)/$(COMPLETION_INSTALL_PATH)/$(COMPLETION)

install: /usr/bin/curl /usr/bin/fpaste
	install -D git-fpaste $(SYSTEM_INSTALL_PREFIX)/bin/
	install -m 644 -D 						\
		$(COMPLETION)						\
		$(SYSTEM_INSTALL_PREFIX)/$(COMPLETION_INSTALL_PATH)/$(COMPLETION)

/usr/bin/curl:
	pkcon install curl

/usr/bin/fpaste:
	pkcon install fpaste
