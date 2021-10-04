# --- platform/outputs.tf ---
# LAYER 2
output "webapp-loadbalancer-dns" {
  value = aws_elb.webapp-load-balancer.dns_name
}

output "backend-loadbalancer-dns" {
  value = aws_elb.backend-load-balancer.dns_name
}

output "webapp-instance-ips" {
  value = data.aws_instances.web-app-production-instances.public_ips
}

output "backend-instance-private-ips" {
  value = data.aws_instances.backend-production-instances.private_ips
}
