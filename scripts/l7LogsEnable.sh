#! /usr/bin/env bash
set -x

# HipsterShop
kubectl annotate svc checkoutservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc currencyservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc emailservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc productcatalogservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc shippingservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc redis-cart -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc recommendationservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc productcatalogservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc paymentservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc adservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc cartservice -n hipstershop projectcalico.org/l7-logging=true
kubectl annotate svc frontend -n hipstershop projectcalico.org/l7-logging=true
