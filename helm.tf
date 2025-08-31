resource "helm_release" "portfolio_umbrella" {
  name      = "portfolio-umbrella"
  chart     = "../Portfolio-Cluster/charts/portfolio-umbrella"
  namespace = "default"

  values = [
    file("../Portfolio-Cluster/charts/portfolio-umbrella/values.yaml")
  ]

  depends_on = [module.eks]
}