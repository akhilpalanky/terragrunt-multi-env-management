terraform {
    source = "git::git@github.com:akhilpalanky/aws-vpc-network-terraform.git//modules/vpc?ref=v1.0.0"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "prod"
    region_name = "us-east-1"
    pubic_az   = ["us-east-1a", "us-east-1b"]
    private_az  = ["us-east-1a", "us-east-1b"]
}