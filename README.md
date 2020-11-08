# Ingress/Helm Demo

Demo application to demonstrate Helm / Ingress in Kubernetes.

### Prerequisites

An ingress controller running in the cluster.

### Deployment options

To deploy using default values and a random release name:

```
helm install ./fruit/
```

To deploy using an ingress resource and custom release name:

```
helm install --name release-name ./fruit/ --set ingress.enabled=true --set ingress.path=/yourpath --set pod.text=text
```

To deploy using a Load Balancer and custom release name:

```
helm install --name release-name ./fruit/ --set ingress.enabled=false --set pod.text=text
```

It's also possible to deploy using a custom values file.
Make a values.override.yaml file with the contents of values.yaml and deploy using that file:

```
helm install --name release-name ./fruit/ -f ./path/to/file
```
