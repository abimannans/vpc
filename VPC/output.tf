# modules/vpc/outputs.tf
output "vpc_network_self_link" {
  description = "The self_link of the created VPC network."
  value       = google_compute_network.vpc_network.self_link
}

output "subnets_self_links" {
  description = "A map of subnet names to their self_links."
  value       = { for s in google_compute_subnetwork.custom_subnets : s.name => s.self_link }
}