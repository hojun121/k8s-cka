IMG=k8scka_practice-1
TAG=latest

build:
		@echo "Starting Docker Image Build..."
			docker build . -t ${IMG}:${TAG}

compose-up:
		@echo "Starting Docker Compose..."
			docker-compose up -d

compose-rm:
		@echo "Stopping Docker Compose..."
			docker-compose stop && docker-compose rm
