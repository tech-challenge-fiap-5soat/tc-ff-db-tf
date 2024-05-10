terraform {
  required_providers {
    mongodbatlas = {
        source = "mongodb/mongodbatlas"
        version = "1.16.0"
    }
  }
}

variable "project_id" {}
variable "cluster_name" {}
variable "instance_size" {}
variable "region" {
  default = "US_EAST_1"
}
variable "provider_name" {}

resource "mongodbatlas_advanced_cluster" "cluster" {
  project_id = var.project_id
  name = var.cluster_name
  cluster_type = "REPLICASET"

   replication_specs {
     region_configs {
       electable_specs {
         instance_size = var.instance_size
         node_count = 3
       }
       analytics_specs {
         instance_size = var.instance_size
         node_count = 1
       }
       provider_name = "TENANT"
       backing_provider_name = "AWS"
       region_name = var.region
       priority = 7
     }
   }
}