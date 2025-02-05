module "vpc" {
  source = "../modules/vpc"
  project_id = "preprod-project-id"
  vpc_name   = "preprod-vpc"
  subnets    = {
    "preprod-subnet-1" = { cidr = "10.0.2.0/24", region = "us-central1" }
  }
}

module "gke" {
  source = "../modules/gke"
  project_id            = "preprod-project-id"
  cluster_name          = "preprod-gke-cluster"
  region                = "us-central1"
  network               = module.vpc.vpc_name
  subnetwork            = module.vpc.subnets["preprod-subnet-1"].name
  master_ipv4_cidr_block = "172.16.1.0/28"
  authorized_cidr_block = "192.168.2.0/24"
  node_count            = 3
  min_node_count        = 1
  max_node_count        = 5
  machine_type          = "e2-medium"
  disk_size_gb          = 50
}