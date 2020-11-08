# Ingress/Helm Demo

Demo application to demonstrate Helm / Ingress in Kubernetes.

### Deployment options

To deploy using default values and a random release name:

```
helm install ./demo-chart/
```

To deploy using a Load Balancer and custom release name:

```
helm install --name <name of release> ./demo-chart/ --set ingress.enabled= true --set ingress.path <endpoint> --set pod.text=<text to be displayed>
```

It's also possible to deploy using a custom values file.
Make a values.override.yaml file with the contents of values.yaml and deploy using that file:

```
helm install --name <name of release> ./demo-chart/ -f ./path/to/file
```