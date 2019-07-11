build:
	docker build --pull -t docker-compose:latest .
	docker tag docker-compose:latest royge/docker-compose:latest

push:
	docker push royge/docker-compose:latest

pre-test:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

test:
	container-structure-test test \
		--image docker-compose:latest \
		--config test-config.yml
