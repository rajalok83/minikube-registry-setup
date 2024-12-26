# Install docker
Follow below link to install `docker and other dependencies` on `Ubuntu`

[Installing on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

# Setup permission to use docker without sudo
`sudo gpasswd -a $USER docker`

# Install kubectl
Follow below link to install `kubectl` on `Linux`

[Installing on Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

# Install minikube
Follow below link to install `minikube` on `Linux`

[Installing minikube](https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fbinary+download)

# Enable minikube addons
`minikube start --addons=registry,metrics-server`

If `minikube` was already started, use below commands to enable to addon

`minikube addons enable registry`

`minikube addons enable metrics-server`

# Before switching context
`docker ps`

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORT | NAMES |
|--------------|--|--|--|--|--|--|

<br>

`docker images`

|REPOSITORY | TAG | IMAGE ID | CREATED | SIZE|
|---|----|---|---|---|
gcr.io/k8s-minikube/kicbase | v0.0.45 | |aeed0e1d4642  | 3 months ago  | 1.28GB |


# Using minikube registry
Switch context to `minikube` to use registry in `minikube`

`eval $(minikube -p minikube docker-env)`

This is only going to update current shell and hence if you change the terminal or reboot, you will have to run the command again to be able to use the `registry` deployed in `minikube`

# Post switching context:

`docker images`
|REPOSITORY | TAG | IMAGE ID | CREATED | SIZE|
|---|----|---|---|---|
registry.k8s.io/metrics-server/ metrics-server | <none> | 48d9cfaaf390 | 4 months ago |  67.1MB  
registry.k8s.io/kube-scheduler |  v1.31.0 |  1766f54c897f | 4 months ago |  67.4MB
registry.k8s.io/kube-apiserver |v1.31.0 |  604f5db92eaa | 4 months ago |  94.2MB
registry.k8s.io/kube-controller-manager | v1.31.0 |  045733566833 | 4 months ago |  88.4MB
registry.k8s.io/kube-proxy | v1.31.0 |  ad83b2ca7b09 | 4 months ago |  91.5MB
registry.k8s.io/etcd |3.5.15-0 | 2e96e5913fc0 | 5 months ago |  148MB
registry.k8s.io/pause | 3.10 |873ed7510279 | 7 months ago |  736kB
gcr.io/k8s-minikube/kube-registry-proxy | <none> | 38c5e506fa55 | 9 months ago |  187MB
registry | <none> | 75ef5b734af4 | 15 months ago | 25.4MB
registry.k8s.io/coredns/coredns | v1.11.1 |  cbb01a7bd410 | 16 months ago | 59.8MB
kubernetesui/dashboard | <none> | 07655ddf2eeb | 2 years ago | 246MB
kubernetesui/metrics-scraper | <none> | 115053965e86 | 2 years ago | 43.8MB
gcr.io/k8s-minikube/storage-provisioner | v5 | 6e38f40d628d | 3 years ago | 31.5MB

`docker ps`

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORT | NAMES |
|--------------|--|--|--|--|--|--|
|e0dcd3afc787 | 07655ddf2eeb | "/dashboard --insecu…" | 17 minutes ago | Up 17 minutes |k8s_kubernetes-dashboard_kubernetes-dashboard-695b96c756-wc68s_kubernetes-dashboard_31b820c0-cfca-4038-8801-777df762e138_3
|bb793c6f8e18 | 6e38f40d628d | "/storage-provisioner" | 17 minutes ago | Up 17 minutes |k8s_storage-provisioner_storage-provisioner_kube-system_bcf95796-2dbf-4408-a6d8-767697ac6755_5
|f2b7988a891b | 38c5e506fa55 | "/docker-entrypoint.…" | 17 minutes ago | Up 17 minutes |k8s_registry-proxy_registry-proxy-njt96_kube-system_8210e2f9-2fb7-4580-abf4-8a5e1f916a39_2
|152b2c71ccf6 | 75ef5b734af4 | "/entrypoint.sh /etc…" | 17 minutes ago | Up 17 minutes |k8s_registry_registry-66c9cd494c-hzz47_kube-system_096036ee-1a66-47a8-9efd-7e94323e9645_2
|cbb0291d9ebe | 48d9cfaaf390 | "/metrics-server --c…" | 17 minutes ago | Up 17 minutes |k8s_metrics-server_metrics-server-84c5f94fbc-f8c4f_kube-system_89012ded-d2a8-46f2-8054-6c2f5a0672dc_2
|64d2310efe4c | 115053965e86 | "/metrics-sidecar" |  17 minutes ago | Up 17 minutes |k8s_dashboard-metrics-scraper_dashboard-metrics-scraper-c5db448b4-xmrdw_kubernetes-dashboard_63e6185b-944c-49f5-a2f6-5734603be71b_2
|73b56519a5e4 | cbb01a7bd410 | "/coredns -conf /etc…" | 17 minutes ago | Up 17 minutes |k8s_coredns_coredns-6f6b679f8f-bhzp9_kube-system_f74949e4-5d07-4ee2-8a65-a1421d9c4b2a_2
|458daf9365f6 | ad83b2ca7b09 | "/usr/local/bin/kube…" | 17 minutes ago | Up 17 minutes |k8s_kube-proxy_kube-proxy-6cst4_kube-system_47e2183c-51be-47bb-ab5b-5af38cead8f9_2
|fcbc518c557d | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_metrics-server-84c5f94fbc-f8c4f_kube-system_89012ded-d2a8-46f2-8054-6c2f5a0672dc_2
|258dfaf49f6a | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_kubernetes-dashboard-695b96c756-wc68s_kubernetes-dashboard_31b820c0-cfca-4038-8801-777df762e138_2
|350e5b05246e | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_registry-proxy-njt96_kube-system_8210e2f9-2fb7-4580-abf4-8a5e1f916a39_2
|35f9b0459d43 | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_coredns-6f6b679f8f-bhzp9_kube-system_f74949e4-5d07-4ee2-8a65-a1421d9c4b2a_2
|a6c2b62c93a3 | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_registry-66c9cd494c-hzz47_kube-system_096036ee-1a66-47a8-9efd-7e94323e9645_2
|8f4d2c378451 | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_dashboard-metrics-scraper-c5db448b4-xmrdw_kubernetes-dashboard_63e6185b-944c-49f5-a2f6-5734603be71b_2
|ba21963d9b25 | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_storage-provisioner_kube-system_bcf95796-2dbf-4408-a6d8-767697ac6755_2
|fdcded3e18bc | registry.k8s.io/pause:3.10 | "/pause" | 17 minutes ago | Up 17 minutes |k8s_POD_kube-proxy-6cst4_kube-system_47e2183c-51be-47bb-ab5b-5af38cead8f9_2
|40519c97ed8c | 604f5db92eaa | "kube-apiserver --ad…" | 18 minutes ago | Up 18 minutes |k8s_kube-apiserver_kube-apiserver-minikube_kube-system_9e315b3a91fa9f6f7463439d9dac1a56_2
|c0b764e75f83 | 1766f54c897f | "kube-scheduler --au…" | 18 minutes ago | Up 18 minutes |k8s_kube-scheduler_kube-scheduler-minikube_kube-system_e039200acb850c82bb901653cc38ff6e_2
|cacbbfb564f6 | 045733566833 | "kube-controller-man…" | 18 minutes ago | Up 18 minutes |k8s_kube-controller-manager_kube-controller-manager-minikube_kube-system_40f5f661ab65f2e4bfe41ac2993c01de_2
|1363beb7d9de | 2e96e5913fc0 | "etcd --advertise-cl…" | 18 minutes ago | Up 18 minutes |k8s_etcd_etcd-minikube_kube-system_a5363f4f31e043bdae3c93aca4991903_2
|1bd6c03cbc23  | registry.k8s.io/pause:3.10  | "/pause" | 18 minutes ago  | Up 18 minutes |k8s_POD_kube-scheduler-minikube_kube-system_e039200acb850c82bb901653cc38ff6e_2 |
|a340a94663ce |  registry.k8s.io/pause:3.10  | "/pause" | 18 minutes ago |  Up 18 minutes |k8s_POD_kube-apiserver-minikube_kube-system_9e315b3a91fa9f6f7463439d9dac1a56_2 |
|c339d22d2657  | registry.k8s.io/pause:3.10  | "/pause" | 18 minutes ago  | Up 18 minutes  |  k8s_POD_kube-controller-manager-minikube_kube-system_40f5f661ab65f2e4bfe41ac2993c01de_2 |
|9077a8a08183 | registry.k8s.io/pause:3.10 |  "/pause" | 18 minutes ago  | Up 18 minutes | k8s_POD_etcd-minikube_kube-system_a5363f4f31e043bdae3c93aca4991903_2 


## Building image for local repository

`docker build -t first-image .`

```
[+] Building 0.9s (8/8) FINISHED                                                                                        docker:default
 => [internal] load build definition from Dockerfile                                                                              0.0s
 => => transferring dockerfile: 291B                                                                                              0.0s
 => [internal] load metadata for docker.io/library/alpine:latest                                                                  0.8s
 => [internal] load .dockerignore                                                                                                 0.0s
 => => transferring context: 2B                                                                                                   0.0s
 => [1/3] FROM docker.io/library/alpine:latest@sha256:21dc6063fd678b478f57c0e13f47560d0ea4eeba26dfc947b2a4f81f686b9f45            0.0s
 => [internal] load build context                                                                                                 0.0s
 => => transferring context: 99B                                                                                                  0.0s
 => CACHED [2/3] WORKDIR /usr/src/app                                                                                             0.0s
 => CACHED [3/3] COPY . .                                                                                                         0.0s
 => exporting to image                                                                                                            0.0s
 => => exporting layers                                                                                                           0.0s
 => => writing image sha256:340fd19499dc8d9c246031d3d5649e7b55facb3202462d052d55528ca40ae254                                      0.0s
 => => naming to docker.io/library/first-image
 ```
 
>> ## Check created image
>> `docker image ls | grep -i IMAGE`
>> | REPOSITORY                               |        TAG      |  IMAGE ID       | CREATED      |   SIZE |
>> |---|---|---|---|---|
>> first-image          |                           latest    | 340fd19499dc  | 6 minutes ago  | 7.84MB|

>> ## Run docker container
>>> `docker run first-image`
>>> Hello World


>> ## Running kubernetes deployment with local image
>>> `kubectl apply -f deployment.yaml `
>>> deployment.apps/hello-world-deployment created

>> ## Checking pods
>>> `kubectl get pods`
>>> | NAME | READY  | STATUS | RESTARTS | AGE |
>>> |----|---|---|---|---|
>>> |hello-world-deployment-5c94b55dd8-dmlft | 0/1  |   Completed  | 3 (33s ago) |  50s |

>> ## Checking pods logs
>>> `kubectl logs hello-world-deployment-5c94b55dd8-dmlft`
>>> Hello World

>> ## Cleaning up
>>> ### Clean the deployment
>>> `kubectl delete -f deployment.yaml`

>>> ### Clean the container
>>> `docker ps -a | grep first | cut -d' ' -f1| xargs docker rm`

>>> ### Clean the image
>>> `docker image ls | grep first | cut -d' ' -f1| xargs docker rmi`