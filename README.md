# conversao-distancia

### Run project
```sh
docker compose up --build
```

### project running on:
- http://localhost:5000

## K3D - cria ambientes locais para teste

Criar cluster simples com k3d:
```
k3d cluster create
```

Criar cluster customizado com k3d:
```
k3d cluster create <cluster-name> --servers <quantidade de control planes> --agents <quantidade de work nodes>

Ex:
k3d cluster create devapp --servers 3 --agents 3
```

Listar Clusters criados:
```
k3d cluster list
```

Deletar Cluster:
```
k3d cluster delete <cluster-name>
```

## kubectl - comand line to kubernetes
Criar cluster com kubectl apartir de um manifesto. Obs:(os objetos não podem existir ainda no kubernetes)
```
kubectl create -f <manifesto.yaml>

Ex:
kubectl create -f k8s/deployment.yaml
```

Criar/Atualizar cluster com kubectl apartir de um manifesto.
```
kubectl apply -f <manifesto.yaml>

Ex:
kubectl apply -f k8s/deployment.yaml
```

Criar/Atualizar cluster em modo watch.
```
kubectl apply -f k8s/deployment.yaml && watch 'kubectl get pod'
```

---
### Deployment

Listar deployments do cluster:
```
kubectl get deployment
```

---
### Replicaset

Listar replicasets do cluster:
```
kubectl get replicaset
```

Listar replicasets e pods do cluster:
```
kubectl get replicaset,pod
```

---
### Pod

Listar pods do cluster:
```
kubectl get pods
```

Listar informações do pod
```
kubectl describe pod <pod-name>
```

Deletar pod
```
kubectl delete pod <pod-name>
```

---

Listar nodes do cluster:
```
kubectl get nodes
```

Listar grupo de api
```
kubectl api-resources
```

---

Listar informações do cluster
```
kubectl cluster-info
```

---

## AWS
Configurar cli
```
aws configure
```

configurar cluster remoto na maquina
```
aws eks update-kubeconfig --name <cluster-name>
```

---

deployment -> replicaset -> pod