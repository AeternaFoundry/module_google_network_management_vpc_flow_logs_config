resource "google_network_management_vpc_flow_logs_config" "network_management_vpc_flow_logs_configs" {
  for_each = var.network_management_vpc_flow_logs_configs

  location                = each.value.location
  vpc_flow_logs_config_id = each.value.vpc_flow_logs_config_id
  aggregation_interval    = each.value.aggregation_interval
  deletion_policy         = each.value.deletion_policy
  description             = each.value.description
  filter_expr             = each.value.filter_expr
  flow_sampling           = each.value.flow_sampling
  interconnect_attachment = each.value.interconnect_attachment
  labels                  = each.value.labels
  metadata                = each.value.metadata
  metadata_fields         = each.value.metadata_fields
  network                 = each.value.network
  project                 = each.value.project
  state                   = each.value.state
  subnet                  = each.value.subnet
  vpn_tunnel              = each.value.vpn_tunnel

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

