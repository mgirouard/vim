terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.3.0"
    }
  }
}

provider "cloudflare" {
  account_id = var.account_id
  # api_token via environment
}

variable "account_id" {
  default = "6c1087810bd2e7f33570bce522356749"
}

variable "zone_id" {
  default = "cd6d1678c35ec608e6d00b576d4ab1b6"
}

resource "cloudflare_record" "vim" {
  zone_id = var.zone_id
  name    = "vim"
  type    = "CNAME"
  value   = "mikeg.io"
  proxied = true
}

resource "cloudflare_workers_kv_namespace" "vim" {
  title = "vim"
}

resource "cloudflare_workers_kv" "vimrc" {
  namespace_id = cloudflare_workers_kv_namespace.vim.id
  key = ".vimrc"
  value = file("../.vimrc")
}

resource "cloudflare_worker_script" "vimrc" {
  name = "vimrc"
  content = file("index.js")
  kv_namespace_binding {
    name = "VIM"
    namespace_id = cloudflare_workers_kv_namespace.vim.id
  }
}

resource "cloudflare_worker_route" "vim" {
  zone_id = var.zone_id
  pattern = "vim.mikeg.io/*"
  script_name = cloudflare_worker_script.vimrc.name
}
