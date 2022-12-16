.PHONY: help clean deep-clean

# NOTE: ~ || true just ignores errors

### Utility Jobs ###
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean:  ## Remove python cache files/folders
	find . -name *.pyc -delete; find . -name __pycache__ -delete

deep-clean:  ## Removes all generated files
	find . -name *.pyc -delete; find . -name __pycache__ -delete
	deactivate || true	
	rm -r ./env || true	
	rm -r ./public || true	
	rm -r ./Moojuice_doc_library.egg-info || true	

### Functional Jobs ###
.PHONY: build	
build:	## Builds a working static site
	mkdocs build --clean --strict --site-dir public

.PHONY: serve	
serve: ## Hosts the static site locally for testing
	mkdocs serve

.PHONY: setup	
setup:	## Run the setup to build and run the project locally
	chmod 755 ./create_virtualenv.sh
	./create_virtualenv.sh
