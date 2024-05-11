
terraform {
  required_providers {
    mongodbatlas = {
        source = "mongodb/mongodbatlas"
        version = "1.16.0"
    }
  }
}

provider "mongodbatlas" {
  public_key = var.public_key
  private_key = var.private_key
}

# module "cluster" {
#   source = "./modules/cluster"
#   region = var.region
#   cluster_name = var.cluster_name
#   instance_size = var.instance_size
#   project_id = var.project_id
#   provider_name = var.provider_name
# }
