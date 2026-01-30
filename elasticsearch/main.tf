terraform {
  backend "s3" {
    bucket = "kdevops-terraform"
    key    = "misc/elk/terraform.tfstate"
    region = "us-east-1"

  }

}

data "aws_ami" "centos8" {
  most_recent  = true
  name_regex   = "Centos-8-DevOps-Practice"
  owners       = ["973714476881"]
}

resource "aws_instance" "elasticsearch" {
    ami                    = data.aws_ami.centos8.image_id
    instance_type          = "m6in.large"
    vpc_security_group_ids = ["sg-0a13f9496e8f730c7"]
    subnet_id              = "subnet-0e8409904c6916c58"
  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "stop"
      spot_instance_type             = "persistent"
    }
  }
    tags = {
        Name = "elasticsearch"
    }
}

resource "aws_route53_record" "elasticsearch" {
  zone_id = "Z0266758558URTEO39RC"
  name    = "prometheus"
  type    = "A"
  ttl     = 30
  records = [aws_instance.elasticsearch.public_ip]
}





