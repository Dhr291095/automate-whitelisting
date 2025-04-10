terraform {
  backend "gcs" {
    bucket  = "my-terraform-bucket-6533"
    prefix  = "cloud-armor-timed-cidr"
  }
}