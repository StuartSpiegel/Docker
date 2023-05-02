FROM centos/kubernetes-master

COPY launch.sh /usr/bin/kube-controller-manager-docker.sh

LABEL RUN /usr/bin/docker run -d --net=host

COPY service.template config.json.template /exports/

RUN mkdir -p /exports/hostfs/etc/kubernetes && cp /etc/kubernetes/{config,controller-manager} /exports/hostfs/etc/kubernetes

ENTRYPOINT ["/usr/bin/kube-controller-manager-docker.sh"]