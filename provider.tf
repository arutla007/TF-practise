

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.20.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "my-rahultf-test-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"

    /* dynamodb_table = aws_dynamodb_table.myfirst-dynamodb-table.name */
  }
} 

