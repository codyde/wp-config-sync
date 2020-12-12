# Simple HashiCorp Waypoint Config Sync and Template Variables Demo 

This demo shows using Configmaps in Kubernetes to drive application configuration changes in Waypoint. 

## Quickstart 

* Install Waypoint on Kubernetes 
* Clone this repository and enter the directory
* Apply the clusterrole configuration - `kubectl apply -f clusterrole.yaml`
* Apply the configmap `kubectl apply -f configmap.yaml`
* Execute `waypoint init` and `waypoint up` commands as needed 
* Toggle between `light` and `dark` in the config map and reapply to observe application color changes 