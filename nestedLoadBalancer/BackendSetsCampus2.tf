// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5570_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5570
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "DashboardServlet_Campus2"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5570_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5570_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5570
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5670_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5670
        return_code = "200"
        url_path = "/dwShell/campus2_PROD"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Scribe_Campus2"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5670_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5670_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5670
}

//Controler Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5770_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5770
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Controler_Campus2"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5770_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5770_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5770
}

//TransitUI Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5870_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5870
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "TransitUI_Campus2"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5870_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5859_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5870
}


//Composer Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_5970_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5970
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Composer_Campus2"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_5970_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_5959_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 5970
}

//Dashboard Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLb1_6070_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 6070
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    name = "Dashboard_Campus2"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLb1_6070_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLb1_6070_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLb1.id
    port = 6070
}

