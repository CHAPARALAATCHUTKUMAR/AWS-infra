terraform {
  backend "s3" {
    bucket         = "kumar-terraform-state-bucket"  # Replace with your S3 bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"  # Change this to your desired AWS region
    encrypt        = true
    dynamodb_table = "kumar-tf-state-lock-table"  # Replace with your DynamoDB lock table name
  }
}