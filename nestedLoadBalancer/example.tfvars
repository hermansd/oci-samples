// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

net_compartment_ocid = "ocid1.compartment.oc1..aaaa"
vcn_ocid = "ocid1.vcn.oc1.phx.amaa"
lb_security_group_name = "DWLoadBalancersSG"
server_security_group_name = "DWServerSG"
server_ip_address = "10.0.1.209"

campusName = {
    one   = "campus1"
    two   = "campus2"
    three = "campus3"
    four  = "campus4"
}

privateLB1 = {
    display_name = "DegreeworksWestLB"
    dns = "DegreeworksWestLB.nosquabble.com"
    subnet_ocid = "ocid1.subnet.oc1.phx.aaaaa"
    compartment_ocid = "ocid1.compartment.oc1..aaaaa"
    maximum_bandwidth_in_mbps = 10
    minimum_bandwidth_in_mbps = 10
    ca_certificate = "-----BEGIN CERTIFICATE-----q7hHwg==\n-----END CERTIFICATE-----\n"
    certificate_name = "DegreeworksWestLB"
    private_key = "-----BEGIN PRIVATE KEY-----\n=\n-----END PRIVATE KEY-----"
    public_certificate = "-----BEGIN CERTIFICATE-----\n=\n-----END CERTIFICATE-----"
}

privateLB2 = {
    display_name = "DegreeworksEastLB"
    dns = "DegreeworksEastLB.nosquabble.com"
    subnet_ocid = "ocid1.subnet.oc1.phx.aaaa"
    compartment_ocid = "ocid1.compartment.oc1..aaaaaa"
    maximum_bandwidth_in_mbps = 10
    minimum_bandwidth_in_mbps = 10
        ca_certificate = "-----BEGIN CERTIFICATE-----q7hHwg==\n-----END CERTIFICATE-----\n"
    certificate_name = "DegreeworksWestLB"
    private_key = "-----BEGIN PRIVATE KEY-----\n=\n-----END PRIVATE KEY-----"
    public_certificate = "-----BEGIN CERTIFICATE-----\n=\n-----END CERTIFICATE-----"
}

publicLB1 = {
    display_name = "DegreeworksMain"
    subnet_ocid = "ocid1.subnet.oc1.phx.aaaaa"
    dns = "degreeworks.nosuqabble.com"
    compartment_ocid = "ocid1.compartment.oc1..aaaaaaa"
    reserved_ip_ocid = "ocid1.publicip.oc1.phx.amaaaaa"
    maximum_bandwidth_in_mbps = 10
    minimum_bandwidth_in_mbps = 10
       ca_certificate = "-----BEGIN CERTIFICATE-----q7hHwg==\n-----END CERTIFICATE-----\n"
    certificate_name = "DegreeworksWestLB"
    private_key = "-----BEGIN PRIVATE KEY-----\n=\n-----END PRIVATE KEY-----"
    public_certificate = "-----BEGIN CERTIFICATE-----\n=\n-----END CERTIFICATE-----"
}