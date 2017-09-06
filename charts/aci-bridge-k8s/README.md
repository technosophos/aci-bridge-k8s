# ACI Bridge for Kubernetes

Connect your Kubernetes cluster to the Azure Container Instances service.

Usage:

```
$ helm inspect values ./chart/aci-bridge-k8s > myvalues.yaml
$ # Edit myvalues.yaml
$ helm install -f myvalues -n aci-bridge ./chart/aci-bridge-k8s
```
