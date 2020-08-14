# Notification

resource "oci_ons_notification_topic" "notification_topic_default_oracle" {
    #Required
    compartment_id = "${var.compartment_ocid}"
    name = "${var.notification_topic_name}"

    #Optional
    description = "${var.notification_topic_description}"
}

resource "oci_ons_subscription" "notification_subscription_default_oracle" {
    #Required
    compartment_id = "${var.compartment_ocid}"
    endpoint = "${var.subscription_endpoint}"
    protocol = "${var.subscription_protocol}"
    topic_id = "${oci_ons_notification_topic.notification_topic_default_oracle.id}"
}
