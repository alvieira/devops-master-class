variable "names" { 
    default = ["paul", "aev", "jerry"]   
    #default = ["aev", "tom", "jerry"]
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.64"
}

resource "aws_iam_user" "my_iam_users" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}