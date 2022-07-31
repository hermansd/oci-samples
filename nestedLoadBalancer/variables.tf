// Copyright (c) 2017, 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}

variable "net_compartment_ocid" { type = string }
variable "vcn_ocid" { type = string }
variable "lb_security_group_name" { type = string }
variable "server_security_group_name" { type = string }
variable "server_ip_address" { type = string }

//Needed information for creating first private Load Balancer
variable "privateLB1" {
    type = object({
        display_name = string
        subnet_ocid = string
        compartment_ocid = string
        maximum_bandwidth_in_mbps = number
        minimum_bandwidth_in_mbps = number
        ca_certificate = string
        private_key = string
        certificate_name = string
        public_certificate = string
    })
}   

//Needed information for creating secound private Load Balancer
variable "privateLB2" {
    type = object({
        display_name = string
        subnet_ocid = string
        compartment_ocid = string
        maximum_bandwidth_in_mbps = number
        minimum_bandwidth_in_mbps = number
        ca_certificate = string
        private_key = string
        certificate_name = string
        public_certificate = string
    })
}   
//Needed information for creating public Load Balancer
variable "publicLB1" {
    type = object({
        display_name = string
        subnet_ocid = string
        compartment_ocid = string
        maximum_bandwidth_in_mbps = number
        minimum_bandwidth_in_mbps = number
        ca_certificate = string
        private_key = string
        certificate_name = string
        public_certificate = string
    })
}   

variable "campusName" {
    type = object({
        one = string
        two = string
        three = string
        four = string
    })
}