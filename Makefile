_TEXT_PACKER='Insert a pattern ("*" for all): '

_PATH_PACKER=packer/$(PATTERN).json

_PACKER_BUILD=packer build $(file);

_packer:
	$(eval PATTERN=$(shell read -p $(_TEXT_PACKER) pattern; echo "$$pattern"))
	$(foreach file,$(sort $(wildcard $(_PATH_PACKER))),$(_PACKER_BUILD))

.PHONY: apache
apache:
	packer build packer/apache.json

.PHONY: cli
cli:
	packer build packer/cli.json

.PHONY: essential
essential:
	packer build packer/essential.json


.PHONY: init
init:
	ansible-galaxy install -p ansible/galaxy -r ansible/requirements.yml
