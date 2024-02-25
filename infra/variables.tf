variable "username" {
  description = "administrator username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "administrator password"
  type        = string
  sensitive   = true
}

variable "name" {
  description = "repository name"
  type        = string
  sensitive   = true
}
