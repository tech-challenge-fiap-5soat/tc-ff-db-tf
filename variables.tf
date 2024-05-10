variable "public_key" {
  type = string
  description = "Public API key from MongoDB Atlas"
}

variable "private_key" {
  type = string
  description = "Private API key from MongoDB Atlas"
}

variable "project_id" {
  type = string
  description = "Project Id"
}

variable "cluster_name" {
  type = string
  description = "Cluster name"
  default = "terraform-fast-food-tech-challenge-db-cluster"
}

variable "instance_size" {
  type = string
  description = "cluster size name"
  default = "M5"
}

variable "region" {
  type = string
  description = "Region name"
  default = "US_EAST_1"
}

variable "provider_name" {
type = string
  description = "Cloud provider name"
  default = "AWS"
}