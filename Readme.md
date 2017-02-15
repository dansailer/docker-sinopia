# docker-sinopia
This is a Dockerfile for building a container with Sinopia configured.

## Creating Container
```
sudo docker run -d --name sinopia -p 4873:4873 --restart=on-failure:5 -v /var/opt/sinopia:/opt/sinopia/registry docker-sinopia
```

