terraform {
    source = "git::git@github.com:akhilpalanky/aws-vpc-network-terraform.git//modules/vpc?ref=v1.0.0"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "staging"
    region_name = "us-east-2"
    pubic_az   = ["us-east-2a", "us-east-2b"]
    private_az  = ["us-east-2a", "us-east-2b"]
}