# oci-consumtion-tf
Terraform scripts to control the consumption in Oracle Cloud Infrastructure. They leverage the Resource Manager feature.
The scripts create a budget, a notification topic and an event rule.
Mail gets sent to teh specified address in case of hitting the configured budget alert rule.
Scripts can be used just by creating a new Stack in Resource Manager with the provided zip file, witch just archives all the other files (tf + yaml).
Instructions can be found at the following link: https://docs.cloud.oracle.com/en-us/iaas/Content/ResourceManager/Tasks/managingstacksandjobs.htm#.
Run the steps inder "To create a Stack from a file" followed by the steps under "To run an apply job".
