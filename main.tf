provider "aws" {
  region               = var.region
  profile              = var.profile
  num_workers          = var.num_workers
  master_instance_type = var.master_instance_type
  worker_instance_type = var.worker_instance_type
}

module "cluster" {
  source  = "weibeld/kubeadm/aws"
  version = "~> 0.2"
}