# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
    backend "s3"{
        bucket = "terraform-state-files-aws-vpc"
        key = "./terraform.tfstate"
        profile = "play-admin"
        region = "us-east-1"
        encrypt = true
    }

}    
