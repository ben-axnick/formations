STACK_NAME ?= "pickaxe-me-zone"
TEMPLATE_BODY = file://$(PWD)/$(STACK_NAME).yml
STACK_ARGS = --stack-name $(STACK_NAME) --template-body $(TEMPLATE_BODY)

.PHONY: create
create:
	aws cloudformation create-stack $(STACK_ARGS)

.PHONY: update
update:
	aws cloudformation update-stack $(STACK_ARGS)

.PHONY: validate
validate:
	aws cloudformation validate-template --template-body $(TEMPLATE_BODY)
