resource "google_compute_network" "default" {
  name                    = "${var.application_name}-${var.application_env}-vpc"
  auto_create_subnetworks = false   
}

resource "google_compute_subnetwork" "vm_subnet" {
  name          = "${var.application_name}-${var.application_env}-vm-subnet"
  ip_cidr_range = var.subnet_vm_address
  region        = var.region
  network       = google_compute_network.default.id
}