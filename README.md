# scratch

Supply docker credentials to allow you to push/pull
```
docker login
```

Build docker image
```
docker build -t customros .
```

Push docker image to dockerhub
```
docker push baronep/scratch:customros
```

Pull the latest autobuilt image from dockerhub
```
docker pull baronep/scratch:latest
```

Run bash shell in this image
```
docker run -it customros "/bin/bash"
```

Run ros stack in the docker shell
```
docker run -it customros "/runit.sh"
```

Run ros stack as a daemon
```
docker run -itd --name customros customros "/runit.sh"

# If you get an error try running docker rm customros
```

Attach to the container running as a daemon
```
docker attach customros

# Can press Ctrl+P + Ctrl+Q to detach from container
```

Attach a new shell to a running container
```
docker exec -it customros "/bin/bash"
```
