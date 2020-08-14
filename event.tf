resource "oci_events_rule" "rule_default_oracle" {
    #Required
    actions {
        #Required
        actions {
            #Required
            action_type = "${var.rule_actions_actions_action_type}"
            is_enabled = "${var.rule_actions_actions_is_enabled}"

            #Optional
            description = "${var.rule_actions_actions_description}"
            topic_id = "${oci_ons_notification_topic.notification_topic_default_oracle.id}"
        }
    }
    compartment_id = "${var.compartment_ocid}"
    condition = "{\"eventType\":[\"com.oraclecloud.budgets.createtriggeredalert\"],\"data\":{\"additionalDetails\":{\"budgetId\":[\"${oci_budget_budget.budget_default_oracle.id}\"]}}}"
    display_name = "${var.rule_display_name}"
    is_enabled = "${var.rule_is_enabled}"

    #Optional
    description = "${var.rule_description}"
}