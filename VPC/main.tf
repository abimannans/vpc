# modules/vpc/main.tf
resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  mtu                     = var.mtu
  routing_mode            = var.routing_mode
}

resource "google_compute_subnetwork" "custom_subnets" {
  for_each      = { for s in var.subnets : s.name => s }
  project       = var.project_id
  name          = each.value.name
  ip_cidr_range = each.value.ip_cidr_range
  region        = each.value.region
  network       = google_compute_network.vpc_network.self_link
  stack_type    = each.value.stack_type
  purpose       = each.value.purpose
  role          = each.value.role
}