provider "github" {
  owner = "ravinx"
  token = var.github_token
}

provider "flux" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
  git = {
    url  = "ssh://git@github.com/${github_repository.this.full_name}.git"
    ssh = {
      username    = "git"
      private_key = tls_private_key.this.private_key_pem
    }
  }
}

provider "kind" {}
