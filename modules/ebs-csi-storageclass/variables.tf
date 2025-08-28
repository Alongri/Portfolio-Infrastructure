variable "host" {
  description = "EKS cluster endpoint"
  type        = string
}

variable "cluster_ca_certificate" {
  description = "EKS cluster CA data"
  type        = string
}

variable "token" {
  description = "Auth token for the EKS cluster"
  type        = string
}