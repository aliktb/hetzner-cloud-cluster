# Cluster API Setup

## Prerequistes

- kind
- clusterctl

## Installation

To setup the management cluster in kind, run the following:

```bash
bash management-cluster.sh
```

To setup the workload cluster in Hetzner, run the following:

```bash
bash workload-cluster.sh
```

Note, the Kubeconfig, will be now set to the workload cluster.
To install the cluster components, run the following:

```bash
bash components.sh
```
