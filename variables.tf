variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group IaC Final"
}

variable "container_image" {
  type        = string
  description = "Imagen Docker pública"
}

variable "container_app_name" {
  type        = string
  description = "Nombre del Container App"
}

variable "container_env_name" {
  type        = string
  description = "Nombre del Container App Environment"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}