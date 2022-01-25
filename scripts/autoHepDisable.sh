#! /usr/bin/env bash
set -x
kubectl patch kubecontrollersconfiguration.p default --patch='{"spec": {"controllers": {"node": {"hostEndpoint": {"autoCreate": "Disabled"}}}}}'
kubectl patch felixconfiguration default -p '{"spec":{"flowLogsEnableHostEndpoint":false}}'
