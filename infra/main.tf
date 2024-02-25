provider "dockerhub" {
  username = var.username
  password = var.password
}

resource "dockerhub_repository" "nbx" {
  name        = var.name
  namespace   = "taraav1"
  description = "exam"
}