# workshop-calicocloud-rancher-security-observability

This content was built for free training workshops. 

If you're looking for general docs for Calico, we recommend you start [here](https://docs.tigera.io/)

## Prerequisites

Ensure make, jq, and terraform are installed and you have a Cloud infrastructure provider account with appropriate permissions.

## Setup

Deploy the Rancher management server using the [Rancher Quickstart](https://github.com/rancher/quickstart) for your infrastructure provider of choice.

Deploy a [compatible](https://docs.calicocloud.io/operations/connect/rke) RKE cluster to your infrastructure providers network.

## Sign up for Calico Cloud and connect your cluster.

Login to [Calico Cloud](https://www.calicocloud.io/home) and connect your cluster.  Make sure to choose the RKE cluster type.

Check to make sure all the components are available.

```
kubectl get tigerastatus
```

## Deploy demo apps

Deploy the demo apps

```
kubectl apply -R -f apps
```

## Workshop demo

Apply Calico Cloud baseline felix configuration

```
kubectl patch felixconfiguration default --type=json -p='[{"op": "remove", "path": "/spec/iptablesBackend"}]'
kubectl apply -R -f baseline/00-felix
```

Live Demo

## Deploy Calico Cloud baseline security and observability

First we need to update some yaml files with the specifics of your environment.

Edit `baseline/12-anomaly-detection/ad-jobs-deployment-managed.yaml` and replace the CLUSTER_NAME value with the index for your managed cluster.  You can find the string to use by running the following command.

```
kubectl describe deployment -n tigera-intrusion-detection   intrusion-detection-controller | grep ELASTIC_INDEX_SUFFIX
```

Deploy the Calico Cloud baseline security and observability resources

```
kubectl apply -R -f baseline/
```

Live Demo
