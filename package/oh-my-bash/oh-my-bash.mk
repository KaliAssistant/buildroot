OH_MY_BASH_VERSION = font-foxjack
OH_MY_BASH_SITE = https://github.com/KaliAssistant/oh-my-bash.git
OH_MY_BASH_SITE_METHOD = git
OH_MY_BASH_INSTALL_TARGET = YES

define OH_MY_BASH_INSTALL_TARGET_CMDS
	# Install to /root/.oh-my-bash
	mkdir -p $(TARGET_DIR)/root/.oh-my-bash
	cp -r $(@D)/* $(TARGET_DIR)/root/.oh-my-bash/

	# Install default .bashrc from template
	cp $(TARGET_DIR)/root/.oh-my-bash/templates/bashrc.osh-template \
	   $(TARGET_DIR)/root/.bashrc
	echo '[ -f ~/.bashrc ] && . ~/.bashrc' > $(TARGET_DIR)/root/.profile
endef

$(eval $(generic-package))

