terraform {
  required_version = ">= 0.12"
}

locals {
  name                  = var.name
  aws_region            = var.aws_region
  master_instance_type  = var.master_instance_type
  worker_instance_type  = var.worker_instance_type
  master_node_count     = var.master_node_count
  worker_node_count     = var.worker_node_count
  ssh_keys              = var.ssh_keys
  cluster_description   = var.cluster_description
  kubernetes_version    = var.kubernetes_version
  cloud_provider_name   = var.cloud_provider_name
  backup_interval_hours = var.backup_interval_hours
  backup_retention      = var.backup_retention
  rancher_token_key     = var.rancher_token_key
  rancher_api_url       = var.rancher_api_url
  rancher_deploy_user   = var.rancher_deploy_user
  private_subnets       = var.private_subnets
  deploy_user_enabled   = var.deploy_user_enabled ? 1 : 0
  vpc_id                = var.vpc_id

  extra_master_security_groups = var.extra_master_security_groups
  extra_worker_security_groups = var.extra_worker_security_groups
}

provider "aws" {
  region = local.aws_region
}
