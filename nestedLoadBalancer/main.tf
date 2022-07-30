// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

/*
 * This example creates a private load balancer on one subnet in a single AD.
 */


provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}


/* Load Balancer */

resource "oci_load_balancer_load_balancer" "priLB1" {
  shape          = "flexible"
  shape_details{
    maximum_bandwidth_in_mbps = var.privateLB1.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.privateLB1.minimum_bandwidth_in_mbps
  }
  compartment_id = var.privateLB1.compartment_ocid
  subnet_ids     = [var.privateLB1.subnet_ocid]
  display_name   = var.privateLB1.display_name
  is_private                 = true
  network_security_group_ids = [oci_core_network_security_group.lb_security_group.id]
}

resource "oci_load_balancer_load_balancer" "priLB2" {
  shape          = "flexible"
  shape_details{
    maximum_bandwidth_in_mbps = var.privateLB2.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.privateLB2.minimum_bandwidth_in_mbps
  }
  compartment_id = var.privateLB2.compartment_ocid
  subnet_ids     = [var.privateLB2.subnet_ocid]
  display_name   = var.privateLB2.display_name
  is_private                 = true
  network_security_group_ids = [oci_core_network_security_group.lb_security_group.id]
}

resource "oci_load_balancer_load_balancer" "pubLB" {
  shape          = "flexible"
  shape_details{
    maximum_bandwidth_in_mbps = var.publicLB1.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.publicLB1.minimum_bandwidth_in_mbps
  }
  compartment_id = var.publicLB1.compartment_ocid
  subnet_ids     = [var.publicLB1.subnet_ocid]
  display_name   = var.publicLB1.display_name
  is_private                 = false
  network_security_group_ids = [oci_core_network_security_group.lb_security_group.id]
}

resource "oci_core_network_security_group" "lb_security_group" {
    compartment_id = var.net_compartment_ocid
    vcn_id = var.vcn_ocid
    display_name = var.lb_security_group_name
}

resource "oci_core_network_security_group" "server_security_group_name" {
    compartment_id = var.net_compartment_ocid
    vcn_id = var.vcn_ocid
    display_name = var.server_security_group_name
}


resource "oci_load_balancer_listener" "priLB1_http_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.priLB1_5559_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.priLB1.id
    name = "DeegreeWorksHTTP"
    port = "80"
    protocol = "HTTP"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.priLB1_main_routing_policy.name
}

resource "oci_load_balancer_listener" "priLB2_http_listener" {
    default_backend_set_name = oci_load_balancer_backend_set.priLB2_5550_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "DeegreeWorksHTTP"
    port = "80"
    protocol = "HTTP"
    routing_policy_name = oci_load_balancer_load_balancer_routing_policy.priLB2_main_routing_policy.name
}