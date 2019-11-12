#--------------------------------------------------------------
# Network Peering
#--------------------------------------------------------------

resource "azurerm_virtual_network_peering" "virtual_network_peering_requester" {
  name = "${format("%s_%s_network_peering_%s",
                var.requester_network_name,
                var.accepter_network_name,
                var.deploy_environment
  )}"

  resource_group_name = "${var.requester_network_resource_group_name}"

  remote_virtual_network_id    = "${var.accepter_network_id}"
  virtual_network_name         = "${var.requester_network_name}"
  allow_forwarded_traffic      = "${var.allow_forwarded_traffic}"
  allow_virtual_network_access = "${var.allow_virtual_network_access}"
}

resource "azurerm_virtual_network_peering" "virtual_network_peering_accepter" {
  name = "${format("%s_%s_network_peering_%s",
                var.accepter_network_name,
                var.requester_network_name,
                var.deploy_environment
  )}"

  resource_group_name = "${var.accepter_network_resource_group_name}"

  remote_virtual_network_id    = "${var.requester_network_id}"
  virtual_network_name         = "${var.accepter_network_name}"
  allow_forwarded_traffic      = "${var.allow_forwarded_traffic}"
  allow_virtual_network_access = "${var.allow_virtual_network_access}"
}
