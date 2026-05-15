terraform {
  backend "s3" {
    bucket         = "isabelpp-orders-tfstate"
    key            = "orders/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "isabelpp-orders-locks"
    encrypt        = true
  }
}
