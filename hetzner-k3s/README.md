# Hetzner Cloud Cluster

## Prerequisites

Create a .envrc file and add the Hetzner API Token for the project:

```bash
cp .envrc.sample .envrc
```

## Installation

Install `hetzner_k3s` and create the k3s cluster:

```bash
task up
```

## Maintenance

### Upgrade

To get the list of releases, run:

```bash
task releases
```

To perform the upgrade, run (replace version as necessary):

```bash
task upgrade -- K3S_VERSION

# e.g.
task upgrade -- v1.31.2+k3s1
```

### How to delete

```bash
task down
```

## Credits

Credits to the project that this relies on: <https://github.com/vitobotta/hetzner-k3s>
