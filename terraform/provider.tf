provider "aws" {
  
}

terraform {
    backend "s3" {
        bucket = "tf-resources-gha-aw"
        region = "ap-southeast-2"
        key = "github-actions/terraform.tfstate"
        encrypt = true
        # dynamodb_table = "tf-resources-gha-lock"
    }
}