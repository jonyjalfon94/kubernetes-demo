# Ingress/Helm Demo

Demo application to demonstrate Helm / Ingress in Kubernetes.

### Prerequisites

A cloud hosted kubernetes cluster.

### Setting up Ingress Controller (Nginx)

  *  Create a namespace for the ingress-controller

```
kubectl create namespace ingress-nginx
```

  *  Deploy the ingress controller. (Note that in the url of the repository we are using a cloud deployment of the nginx ingress controller)

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml -n ingress-nginx
```

  *  Verify the ingress controller was deployed

```
kubectl get pods -n ingress-nginx -l app.kubernetes.io/name=ingress-nginx --watch
```

  *  To get the ip inspect the ingress controller service

```
kubectl get svc ingress-nginx-controller -n ingress-nginx
```

### Deployment options

  *  Deploy using default values and a random release name:

```
helm install ./fruit/
```

  *  Deploy using an ingress resource and custom release name:

```
helm install --name release-name ./fruit/ --set ingress.enabled=true --set ingress.path=/yourpath --set pod.text=text
```

  *  Deploy using a Load Balancer and custom release name:

```
helm install --name release-name ./fruit/ --set ingress.enabled=false --set pod.text=text
```

  *  It's also possible to deploy using a custom values file.
  Make a values.override.yaml file with the contents of values.yaml and deploy using that file:

```
helm install --name release-name ./fruit/ -f ./path/to/file
```
