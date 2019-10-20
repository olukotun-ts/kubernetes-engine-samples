#!/bin/bash
# Configure Docker to authenticate to GCR:
gcloud auth configure-docker

docker build -t gcr.io/${GOOGLE_PROJECT_ID}/hello-app:v1 .

# Upload image to GCR
docker push gcr.io/${GOOGLE_PROJECT_ID}/hello-app:v1