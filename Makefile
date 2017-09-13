default: build run

build:
	docker build -t whatcanisee .

run:
	docker run --rm -it whatcanisee unprivileged
	docker run --privileged --rm -it whatcanisee privileged

clean:
	docker rmi whatcanisee || true
