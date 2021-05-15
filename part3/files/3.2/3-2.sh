#!/bin/sh


while true
do

echo Enter Github url:
read GITHUB_REPOSITORY
printf "\n"

echo Enter desired repository name in Docker Hub:
read DOCKERHUB_REPOSITORY
printf "\n"

rm -rf workdir

echo Cloning $GITHUB_REPOSITORY...
git clone $GITHUB_REPOSITORY workdir

printf "\n"

docker build ./workdir -t $DOCKERHUB_REPOSITORY
printf "\n"


docker login
printf "\n"

echo Pushing $DOCKERHUB_REPOSITORY to Docker Hub...
docker push $DOCKERHUB_REPOSITORY
rm -rf workdir
printf "\n=================================\n\n"

done