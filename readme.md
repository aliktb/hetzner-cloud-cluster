# Hetzner Cloud Cluster

Create a .envrc file and add the Hetzner API Token for the project:

```bash
cp .envrc.sample .envrc
```

Install `hetzner_k3s` and create the k3s cluster:

```bash
brew install vitobotta/tap/hetzner_k3s

hetzner-k3s create --config cluster_config.yaml | tee create.log

helm upgrade --install \
ingress-nginx ingress-nginx/ingress-nginx \
-f ingress-nginx-annotations.yaml \
--namespace ingress-nginx \
--create-namespace

kubectl apply -f ingress-nginx-configmap.yaml
```

To delete:

```bash
hetzner-k3s delete --config cluster_config.yaml
```

## Credits

Credits to the project that this relies on: https://github.com/vitobotta/hetzner-k3s
