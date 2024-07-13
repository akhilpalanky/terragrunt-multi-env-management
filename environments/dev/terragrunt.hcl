terraform {
    source = "git::git@github.com:akhilpalanky/aws-vpc-network-terraform.git//modules/vpc?ref=v1.0.0"
}
include "root" {
    path = find_in_parent_folders()
}

inputs = {
    environment = "dev"
    region_name = "ap-south-1"
    pubic_az   = ["ap-south-1a", "ap-south-1b"]
    private_az  = ["ap-south-1a", "ap-south-1b"]
}