provider "helm" {

  kubernetes {
    config_path = "~/.kube/config"
  }
}



resource "helm_release" "mongodb_helm" {
  name       = "<value>"
  namespace  ="<value>"
  #version = 10.10
  create_namespace = true
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"


values = [
    "${file("values.yaml")}"
  ]

set {
     "name" = "<value>"
     "value" = "<value>"
}

}