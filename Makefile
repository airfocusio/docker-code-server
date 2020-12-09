VERSION=3.7.4-af.1
CODE_RELEASE=v3.7.4

build:
	docker build -t docker.pkg.airfocus.dev/code-server:$(VERSION) --build-arg VERSION="$(VERSION)" --build-arg CODE_RELEASE="$(CODE_RELEASE)" --build-arg BUILD_DATE="" .

push: build
	docker push docker.pkg.airfocus.dev/code-server:$(VERSION)
