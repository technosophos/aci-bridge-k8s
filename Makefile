DOCKER_REGISTRY ?= azure
IMAGE_TAG ?= latest

.PHONY: all
all: build

.PHONY: build
build:
	npm install
	tsc --target 'es5' bridge.ts

.PHONY: clean
clean:
	rm -rf ./node_modules/
	rm *.js

.PHONY: docker-build
docker-build:
	docker build -t $(DOCKER_REGISTRY)/aci-bridge-k8s:$(IMAGE_TAG) .

.PHONY: docker-push
docker-push:
	docker push $(DOCKER_REGISTRY)/aci-bridge-k8s:$(IMAGE_TAG)
