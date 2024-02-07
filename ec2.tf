provider "aws" {
    region     = "us-east-1"
    access_key = "AKIA2EMPTNDREFSHXY4G"
    secret_key = "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"
}

resource "aws instance" "sever" {
AMI           = "ami-0c7217cdde317cfec"
instance_type = "t2.micro"
key_name      = "bot"
count         = 3
tags          = {
    name      = "websever"
} 
}