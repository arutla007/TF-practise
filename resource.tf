resource "aws_iam_user" "terraform_user" {
  name = "my_user_tf"
  tags = {
    Environment = "dev"
    Department  = "Engineering"
  }
}

resource "aws_s3_bucket" "first_bucket" {
  bucket = "my-rahultf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "object" {
  bucket = "my-rahultf-test-bucket"
  key = "test"
  source = "terraform.tfstate"
}