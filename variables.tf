variable "start_time" {
  description = "Start timestamp in RFC3339 format"
  type        = string
}

variable "end_time" {
  description = "End timestamp in RFC3339 format"
  type        = string
}

variable "current_time" {
  description = "Current time in RFC3339 format"
  type        = string
}

variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}