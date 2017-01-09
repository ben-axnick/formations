STACK_NAME = pickaxe-me-zone

.PHONY: create
deploy:
	bundle exec stackup $(STACK_NAME) up --template $(STACK_NAME).yml
