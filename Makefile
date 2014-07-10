NAME=python-deb
VERSION=2.7.8
BUILD=2

build:
	cat Dockerfile.tmpl | VERSION=$(VERSION) BUILD=$(BUILD) envsubst > Dockerfile
	docker build -t $(NAME):$(VERSION)-$(BUILD) .
	BUILD=$(BUILD) NAME=$(NAME) VERSION=$(VERSION) ./copy-debs.sh
