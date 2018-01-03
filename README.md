
## Init

First execute this to obtain all ansible requirements:

```bash
make init
```

## Create or update image

To create or update an image tag, execute (i.e.: to build cli image):
**IMPORTANT**: Before creating or updating an image, execute `docker login` in order to login to Docker Hub. 

```bash
make cli
```

This will create or update an image, it will tag it and push it to Docker Hub.
