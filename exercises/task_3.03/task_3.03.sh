#!/bin/bash

repo_url="https://github.com/puckel/docker-airflow"
mkdir -p airflow
destination_path="./airflow"
repo_name="shalltearb1oodfallen/airflow"
docker_access_token="YOUR TOKEN"

git clone "$repo_url" "$destination_path"

cd "$destination_path"
docker build -t "$repo_name" .

docker login --username USERNAME --password "$docker_access_token"

docker push "$repo_name"

