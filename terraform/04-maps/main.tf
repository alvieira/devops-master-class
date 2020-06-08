variable "users" {
  default = {
    paul : { country : "US", department : "IHS" },
    aev : { country : "Brazil", department : "IT" },
    jerry : { country : "England", department : "Medical" }
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.64"
}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    #country : each.value
    country : each.value.country
    department : each.value.department
  }
}
