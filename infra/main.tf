provider "dockerhub" {
  username = var.username
  password = var.password
}

resource "dockerhub_repository" "repository" {
  name        = var.name
  namespace   = var.username
  description = "exam"
}