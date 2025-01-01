variable "do_token" {}

resource "digitalocean_droplet" "Accessment2_1" {
  name   = var.droplet_name
  region = var.region
  size   = var.size
  image  = var.image

  ipv6       = true
  monitoring = true

  tags = ["terraform", "DO1assessment2"]
}

resource "digitalocean_droplet" "Accessment2_2" {
  name   = var.droplet_name2
  region = var.region
  size   = var.size
  image  = var.image

  ipv6       = true
  monitoring = true

  tags = ["terraform", "DO2assessment2"]
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}
