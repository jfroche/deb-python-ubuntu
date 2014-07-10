VERSION=2.7.9
BUILD=2

build:
	cat Dockerfile.tmpl | VERSION=$(VERSION) BUILD=$(BUILD) envsubst > Dockerfile
	docker build .
