OHMYBASH_VERSION = font-foxjack
OHMYBASH_SITE = https://github.com/KaliAssistant/oh-my-bash.git
OHMYBASH_SITE_METHOD = git
OHMYBASH_INSTALL_TARGET = YES

define OHMYBASH_INSTALL_TARGET_CMDS
	# Install to /root/.oh-my-bash
	mkdir -p $(TARGET_DIR)/root/.oh-my-bash
	cp -r $(@D)/* $(TARGET_DIR)/root/.oh-my-bash/

	# Install default .bashrc from template
	cp $(TARGET_DIR)/root/.oh-my-bash/templates/bashrc.osh-template \
	   $(TARGET_DIR)/root/.bashrc
endef

$(eval $(generic-package))

