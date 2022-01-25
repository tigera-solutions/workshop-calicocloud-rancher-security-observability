# workshop-calicocloud-rancher-security-observability

This content was built for free training workshops. 

If you're looking for general docs for Calico, we recommend you start [here](https://docs.tigera.io/)

## Prerequisites

Ensure make, jq, and terraform are installed and you have a Cloud account with appropriate permissions.

## Setup

Deploy the Rancher management server using the [Rancher Quickstart](https://github.com/rancher/quickstart) for your infrastructure provider of choice.

Deploy an RKE cluster to your infrastructure providers network.

## Login to Calico Cloud and connect cluster with the RKE curl bash script.

Sign up for Calico Cloud https://www.calicocloud.io/home and join your RKE cluster.

```
curl <your script url > | bash
kubectl get tigerastatus
```

## Deploy demo apps

Deploy the demo apps

```
kubectl apply -R -f apps
```

## Deploy Calico Cloud baseline security and observability

Deploy the Calico Cloud baseline security and observability resources

```
kubectl apply -R -f baseline
```

## Workshop demo

Live demo
