# Docker README

~~~
docker compose up -d --scale agent=3
~~~

~~~
kubectl --kubeconfig=./kubeconfig.yaml get node -o json | jq '.items[].spec.taints'
~~~


**Translating Docker Compose YAML into Kubernetes or OpenSift Objects**

https://kubernetes.io/docs/tasks/configure-pod-container/translate-compose-kubernetes/