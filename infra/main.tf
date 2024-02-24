provider "dockerhub" {
  username = var.username
  password = var.password
}

resource "dockerhub_repository" "nbx" {
  name        = "nbx"
  namespace   = "taraav1"
  description = "exam"
}