generate "backend"{
    path = "s3-backend.tf"
    if_exists = "overwrite"
    contents = <<EOF
terraform {
    backend "s3"{
        bucket = "terraform-state-files-aws-vpc"
        key = "${path_relative_to_include()}/terraform.tfstate"
        profile = "play-admin"
        region = "us-east-1"
        encrypt = true
    }

}    
EOF
}