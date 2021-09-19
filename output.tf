output "vpc" {
  value = aws_vpc.vpc.id
}
output "subnet" {
  value = aws_subnet.public.id
}
output "igw" {
  value = aws_internet_gateway.internet_gateway.id
}
output "asg" {
  value = aws_autoscaling_group.asg.id
}
output "rt" {
  value = aws_route_table.rt1.id
}
output "default_rt" {
  value = aws_default_route_table.defrt.id
}
output "instance" {
  value = aws_vpc.vpc.id
}
output "launch_template" {
  value = aws_launch_template.frontend.id
}
output "iam_instance_profile" {
  value = aws_iam_instance_profile.node.id
}
output "iam_role" {
  value = aws_iam_role.node.id
}
output "iam_role_policy_attachment" {
  value = aws_iam_role_policy_attachment.node
}
output "aws_sg" {
  value = aws_security_group.node
}
output "aws_sg_role" {
  value = aws_security_group_rule.node_ingress
}

