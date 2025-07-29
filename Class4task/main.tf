terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_id" "from_tfvars" {
  byte_length = var.byte_length_from_tfvars
}

resource "random_pet" "from_env" {
  length = var.pet_length_from_env
  prefix = var.pet_prefix_from_auto_tfvars
}

resource "random_pet" "from_cli" {
  length = var.pet_length_from_cli
}

resource "random_string" "from_auto_tfvars" {
  length  = var.str_length_from_auto_tfvars
  upper   = true
  lower   = true
  number  = true
  special = false
}

output "random_id" {
  value = random_id.from_tfvars
}

output "pet_from_env" {
  value = random_pet.from_env.id
}

output "pet_from_cli" {
  value = random_pet.from_cli.id
}

output "string_from_auto_tfvars" {
  value = random_string.from_auto_tfvars.result
}

