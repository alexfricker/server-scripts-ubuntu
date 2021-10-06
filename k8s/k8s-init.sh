sudo kubeadm init --pod-network-cidr=10.244.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

#kubeadm join 172.16.1.7:6443 --token tlbosf.w9pva645ersm20yk --discovery-token-ca-cert-hash sha256:3a42e7fb111c8a54402b59b343714957204bfd86403fc06ab9fe02ecd95e2ad6 