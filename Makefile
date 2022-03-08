start:
	docker-compose \
		--project-directory=${PWD} \
		--project-name=$(shell basename $(CURDIR)) \
		-f docker-compose.yml \
		up --build
