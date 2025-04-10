locals {
  allow_rule_enabled = (
    timestamp(var.current_time) >= timestamp(var.start_time) &&
    timestamp(var.current_time) <= timestamp(var.end_time)
  )
}