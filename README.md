## docker build image
docker build --tag {tag} .
## docker run container
docker run --publish {hostPort:containerPort} {tag}
## Where
tag - appName:version
hostPort - port on our machine
containerPort - port in the container