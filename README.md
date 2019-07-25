This is also tied to a public Dockerhub repo. Anytime a new master branch is pushed, it will autobuild on Dockerhub's website ... https://hub.docker.com/r/baronep/scratch

# scratch

Build docker image (also builds ROS stack)
```
docker build -t customros .
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

Attach to the container running as a daemon (can run rostopic echo, etc)
```
docker attach customros

# Can press Ctrl+P + Ctrl+Q to detach from container
```

Push docker image to dockerhub
```
docker push baronep/scratch:customros
```

Supply docker credentials to allow you to push/pull
```
docker login
```

Pull the latest autobuilt image from dockerhub
```
docker pull baronep/scratch:latest
```

Attach a new shell to a running container
```
docker exec -it customros "/bin/bash"
```
