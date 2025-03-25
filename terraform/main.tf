provider "kubernetes" {
  host                   = "https://127.0.0.1:64671"
  client_certificate     = file("~/.minikube/profiles/minikube/client.crt")
  client_key             = file("~/.minikube/profiles/minikube/client.key")
  cluster_ca_certificate = file("~/.minikube/ca.crt")
}

resource "kubernetes_namespace" "mi_proyecto" {
  metadata {
    name = "mi-proyecto"
  }
}
