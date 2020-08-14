# Budget

resource "oci_budget_budget" "budget_default_oracle" {
    #Required
    amount = "${var.budget_amount}"
    compartment_id = "${var.tenancy_ocid}"
    reset_period = "${var.budget_reset_period}"
    #Optional
    description = "${var.budget_description}"
    display_name = "${var.budget_display_name}"
    target_type = "${var.budget_target_type}"
    targets = ["${var.tenancy_ocid}"]
}

resource "oci_budget_alert_rule" "rule_default_oracle" {
    #Required
    budget_id = "${oci_budget_budget.budget_default_oracle.id}"
    threshold = "${var.alert_rule_threshold}"
    threshold_type = "${var.alert_rule_threshold_type}"
    type = "${var.alert_rule_type}"
    #Optional
    description = "${var.alert_rule_description}"
    display_name = "${var.alert_rule_display_name}"
}
