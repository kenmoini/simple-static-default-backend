# simple-static-default-backend
Need a simple web page real quick for a Kubernetes Ingress?  Say no more, fam

This just gives you a nice black background with a 404 error message.  Very useful for when you want to have something nice-ish to show for a default K8s Ingress.

![Screenshot](https://github.com/kenmoini/simple-static-default-backend/raw/master/Screenshot%20from%202019-07-16%2013-29-05.png)

## Immediate Usage

If you already have an Nginx Ingress Controller installed on your Kubernetes cluster then you can actually just run the following commands:

```
$ kubectl apply -f https://raw.githubusercontent.com/kenmoini/simple-static-default-backend/master/kubernetes/deployment.yaml
$ kubectl apply -f https://raw.githubusercontent.com/kenmoini/simple-static-default-backend/master/kubernetes/service.yaml
$ kubectl apply -f https://raw.githubusercontent.com/kenmoini/simple-static-default-backend/master/kubernetes/ingress-no-tls.yaml
```

With that, any non-specified route that is sent to your K8s cluster's Nginx Ingress will be presented with that 404.  I'd suggest setting a wildcard SSL cert in a shared secret (managed by Kubed) if you want SSL all over the place.  There are examples in ./kubernetes/ingress-{staging,prod}-tls.yaml files.

## DIY - Building the Container

1) Modify web files
2) Build Dockerfile
3) Push to container registry
4) Run on your K8s cluster
5) ??????
6) PROFIT!!!

Otherwise, the container image as specified in this repo is available on Docker Hub: https://hub.docker.com/r/kenmoini/simple-static-default-backend
