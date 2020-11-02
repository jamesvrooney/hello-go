# Simple multi-build go web application

This will create an image that is 12.9MB instead of one that is >800MB.


```
docker pull jamesvrooney/hello-go-multi-build:v1
```

```
docker container run --rm --name james-simple-go-web-app -p 8866:8080 -d jamesvrooney/hello-go-multi-build:v1
```
