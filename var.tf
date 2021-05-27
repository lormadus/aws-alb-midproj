variable "amazon_linux" {
  default = "ami-0f2c95e9fe3f8f80e"
}

variable "dev_keyname" {
  default = "david-key"
}

## Region별 ALB Account ID 별도 지정
## https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html 
variable "alb_account_id" {
  default = "600734575887"
  
}