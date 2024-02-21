module "fluxcd" {
  source = "../../../module/fluxcd"

  github_owner = "ravinx"
  github_token = var.github_token

  repository_name = "fluxcd-demo"
  repository_visibility = "public"
  branch = "master2"
  target_path = "flux/clusters/dev"
  flux_version = "v0.41.2"
  kind_cluster_name = "dev"
}
