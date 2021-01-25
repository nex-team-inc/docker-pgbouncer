STAGING_IMAGE_NAME=gcr.io/raptorsstaging/server/pgbouncer
PRODUCTION_IMAGE_NAME=gcr.io/raptors-40c2e/server/pgbouncer
IMAGE_VERSION=1.14.0

docker:
	docker build -t $(STAGING_IMAGE_NAME):$(IMAGE_VERSION) .
	docker tag $(STAGING_IMAGE_NAME):$(IMAGE_VERSION) $(PRODUCTION_IMAGE_NAME):$(IMAGE_VERSION)

push:
	docker push $(STAGING_IMAGE_NAME):$(IMAGE_VERSION)
	docker push $(PRODUCTION_IMAGE_NAME):$(IMAGE_VERSION)
