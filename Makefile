USER_INSTALL_PREFIX=$(HOME)/.local
USER_COMPLETION_INSTALL_PATH=$(HOME)/.config/bash_completion.d/

SYSTEM_INSTALL_PREFIX=/usr/local
SYSTEM_COMPLETION_INSTALL_PATH=/etc/bash_completion.d/

COMPLETION=git-fpaste-completion.bash

user-install: /usr/bin/curl /usr/bin/fpaste
	install -D git-fpaste $(USER_INSTALL_PREFIX)/bin/
	install -m 644 -D 						\
		$(COMPLETION)						\
		$(USER_COMPLETION_INSTALL_PATH)/$(COMPLETION)

install: /usr/bin/curl /usr/bin/fpaste
	install -D git-fpaste $(SYSTEM_INSTALL_PREFIX)/bin/
	install -m 644 -D 						\
		$(COMPLETION)						\
		$(SYSTEM_COMPLETION_INSTALL_PATH)/$(COMPLETION)

/usr/bin/curl:
	pkcon install curl

/usr/bin/fpaste:
	pkcon install fpaste
