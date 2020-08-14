variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

# Budget
variable "budget_amount" {}

variable "budget_reset_period" {
  default = "MONTHLY"
}

variable "budget_description" {
  default = "Budget preconfigured by Oracle Cloud Architects"
}

variable "budget_display_name" {
  default = "BudgetOracle"
}

variable "budget_target_type" {
  default = "COMPARTMENT"
}

# Budget rule
variable "alert_rule_threshold" {
  default = "95"
}

variable "alert_rule_threshold_type" {
  default = "PERCENTAGE"
}

variable "alert_rule_type" {
  default = "FORECAST"
}

variable "alert_rule_description" {
  default = "Budget Rule preconfigured by Oracle Cloud Architects"
}

variable "alert_rule_display_name" {
  default = "BudgetRuleOracle"
}


# Notification topic
variable "notification_topic_name" {
  default = "NotificationTopicOracle"
}

variable "notification_topic_description" {
  default = "Notification topic preconfigured by Oracle Cloud Architects"
}

# Notification subscription
variable "subscription_endpoint" {
}

variable "subscription_protocol" {
  default = "EMAIL"
}

# Event
variable "rule_actions_actions_action_type" {
  default = "ONS"
}

variable "rule_actions_actions_is_enabled" {
  default = "true"
}

variable "rule_actions_actions_description" {
  default = "Event preconfigured by Oracle Cloud Architects"
}

variable "rule_display_name" {
  default = "EventRuleOracle"
}

variable "rule_is_enabled" {
  default = "true"
}

variable "rule_description" {
  default = "Event rule preconfigured by Oracle Cloud Architects"
}


provider "oci" {
  tenancy_ocid     = "${var.tenancy_ocid}"
  region           = "${var.region}"
}
