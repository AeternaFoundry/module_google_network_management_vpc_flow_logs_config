variable "network_management_vpc_flow_logs_configs" {
  description = <<EOT
Map of network_management_vpc_flow_logs_configs, attributes below
Required:
    - location
    - vpc_flow_logs_config_id
Optional:
    - aggregation_interval
    - deletion_policy
    - description
    - filter_expr
    - flow_sampling
    - interconnect_attachment
    - labels
    - metadata
    - metadata_fields
    - network
    - project
    - state
    - subnet
    - vpn_tunnel
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                = string
    vpc_flow_logs_config_id = string
    aggregation_interval    = optional(string)
    deletion_policy         = optional(string)
    description             = optional(string)
    filter_expr             = optional(string)
    flow_sampling           = optional(number)
    interconnect_attachment = optional(string)
    labels                  = optional(map(string))
    metadata                = optional(string)
    metadata_fields         = optional(list(string))
    network                 = optional(string)
    project                 = optional(string)
    state                   = optional(string)
    subnet                  = optional(string)
    vpn_tunnel              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

