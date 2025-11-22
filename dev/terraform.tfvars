project_id = "my-gcp-project"
network_name = "my-vpc-network"
region = "us-central1"
auto_create_subnetworks = false
mtu = 1460                      
routing_mode = "REGIONAL"
subnets = [
    "dev-subnet-1" = {
        name          = "subnet-1"
        ip_cidr_range = "10.0.0.0/24"
        region        = "us-central1"
  },
    "dev-subnet-2" = {
        name          = "subnet-2"
        ip_cidr_range = "10.0.1.0/24"
        region        = "us-central1"
    }
]