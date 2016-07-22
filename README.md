# alpine-socat

It's horrifying to have a socat image 100MB+ in size.
Thanks to Alpine, here we have a 4MB socat image.

Example: proxy docker to the outside world without re-starting it:
```
docker run -p 8000:8000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    blurrcat/alpine-socat:3.4 \
    socat TCP-LISTEN:8000,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
```

Now you can manage your docker from another host:
```
docker -H=tcp://192.168.68.101:8000 ps
```

Even better:
```
export DOCKER_HOST=tcp://192.168.68.101:8000
docker node ls
```
