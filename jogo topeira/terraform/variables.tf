variable "stage" {
  description = "(Required) The stage you want to deploy (dev|prod)."
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.stage)
    error_message = "The stage must be one of dev or prod."
  }
}