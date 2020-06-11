provider "aws" {
    region = "us-east-1"
    version = "~> 2.64"  
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_aev"
}