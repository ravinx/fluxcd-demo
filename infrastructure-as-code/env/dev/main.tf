# Create VPC and Subnets
module "vpc" {
  source = "../modules/vpc"
  project_id = "dev-project-id"
  vpc_name   = "dev-vpc"
  subnets    = {
    "dev-subnet-1" = { cidr = "10.0.1.0/24", region = "us-central1" }
  }
}

# Create GKE Cluster
module "gke" {
  source = "../modules/gke"
  project_id            = "dev-project-id"
  cluster_name          = "dev-gke-cluster"
  region                = "us-central1"
  network               = module.vpc.vpc_name
  subnetwork            = module.vpc.subnets["dev-subnet-1"].name
  master_ipv4_cidr_block = "172.16.0.0/28"
  authorized_cidr_block = "192.168.1.0/24"
  node_count            = 2
  min_node_count        = 1
  max_node_count        = 3
  machine_type          = "e2-medium"
  disk_size_gb          = 50
}

# Create Firewall Rules
module "firewall" {
  source = "../modules/firewall"
  project_id = "dev-project-id"
  network    = module.vpc.vpc_name
  firewall_rules = {
    "allow-http" = { protocol = "tcp", ports = ["80"], source_ranges = ["0.0.0.0/0"], target_tags = ["web"] }
  }
}