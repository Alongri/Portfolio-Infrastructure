resource "helm_release" "mongodb" {
  name      = "mongodb"
  chart     = "../Portfolio-Cluster/charts/mongodb-chart"
  namespace = "default"

  values = [
    file("../Portfolio-Cluster/charts/mongodb-chart/values.yaml")
  ]
  depends_on = [module.eks]
}

resource "helm_release" "flask_app" {
  name      = "flask-app"
  chart     = "../Portfolio-Cluster/charts/flask-app"
  namespace = "default"

  values = [
    file("../Portfolio-Cluster/charts/flask-app/values.yaml")
  ]

  depends_on = [helm_release.mongodb]
}
