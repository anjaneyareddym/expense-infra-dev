module "bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami= data.aws_ami.learnDevops.id
  name = local.resource_name

  instance_type          = "t3.micro"
    subnet_id              = local.public_subnet_id
  vpc_security_group_ids = [local.bastion_sg_id]


  tags = merge(
    var.common_tags,
    var.bastion_tags,
    {
        Name = local.resource_name
    }

  )
}