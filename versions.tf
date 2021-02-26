terraform {
  required_version = ">= 0.12.26"

  backend "local" {
    path = "./terraform.tfstate"
  }
}