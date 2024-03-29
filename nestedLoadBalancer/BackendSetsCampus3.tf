// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

//DashboardServlet Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5550_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5550
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "DashboardServlet_${var.campusName.three}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5550_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5550_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5550
}

//Scribe Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5650_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5650
        return_code = "200"
        url_path = "/dwShell/${var.campusName.three}_PROD/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Scribe_${var.campusName.three}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5650_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5650_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5650
}

//Controler Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5750_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5750
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Controler_${var.campusName.three}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5750_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5750_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5750
}

//TransitUI Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5850_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5850
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "TransitUI_${var.campusName.three}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5850_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5850_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5850
}


//Composer Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_5950_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 5950
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Composer_${var.campusName.three}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_5950_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_5950_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 5950
}

//Dashboard Backend Set Configuration
resource "oci_load_balancer_backend_set" "priLB2_6050_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        port = 6050
        return_code = "200"
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "Dashboard_${var.campusName.three}"
    policy = "LEAST_CONNECTIONS"
}

resource "oci_load_balancer_backend" "priLB2_6050_backend" {
    
    #Required
    backendset_name = oci_load_balancer_backend_set.priLB2_6050_backend_set.name   
    ip_address = var.server_ip_address
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    port = 6050
}

