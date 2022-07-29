// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5590_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5590
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "DashboardServlet_${var.campusName.four}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5590_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5590_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5590
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5690_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5690
        return_code = "200"
        url_path = "/dwShell/${var.campusName.four}_PROD/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Scribe_${var.campusName.four}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5690_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5690_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5690
}

//Controler Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5790_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5790
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Controler_${var.campusName.four}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5790_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5790_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5790
}

//TransitUI Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5890_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5890
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "TransitUI_${var.campusName.four}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5890_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5890_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5890
}


//Composer Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5990_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5990
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Composer_${var.campusName.four}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5990_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5990_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5990
}

//Dashboard Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_6090_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 6090
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Dashboard_${var.campusName.four}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_6090_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_6090_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 6090
}

