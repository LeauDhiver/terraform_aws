terraform {
  required_version = ">= 1.0.0" # Terraform Version

  backend "s3" {
    bucket         = "tf101-eagle-tfstate" # Set bucket name
    key            = "ssm/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock" # Set DynamoDB Table
    profile        = "yeardream4"
  }
}
