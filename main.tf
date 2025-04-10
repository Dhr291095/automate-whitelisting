resource "google_compute_security_policy" "cloud_armor_policy" {
  name = "my-cloud-armor-policy"
}

resource "google_compute_security_policy_rule" "allow_temp_cidr" {
  count           = local.allow_rule_enabled ? 1 : 0
  security_policy = google_compute_security_policy.cloud_armor_policy.name
  priority        = 1000
  action          = "allow"
  description     = "Temporary CIDR allow rule"

  match {
    versioned_expr = "SRC_IPS_V1"
    config {
      src_ip_ranges = ["203.0.113.0/24"]
    }
  }
}