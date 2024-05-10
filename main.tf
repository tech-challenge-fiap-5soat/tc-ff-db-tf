
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
  # public_key = "ffhgesjy"
  # private_key = "95c61726-c395-4e51-aac5-dfcf41226db3"
}

module "cluster" {
  source = "./modules/cluster"
  region = var.region
  cluster_name = var.cluster_name
  instance_size = var.instance_size
  project_id = var.project_id
  provider_name = var.provider_name
}
