// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

resource "oci_load_balancer_load_balancer_routing_policy" "priLB2_main_routing_policy" {
    condition_language_version = "V1"
    load_balancer_id = oci_load_balancer_load_balancer.priLB2.id
    name = "${var.privateLB1.display_name}Main"
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5550_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.three}_prod'))"
        name = "DashboardServlet_${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5650_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/dwShell/${var.campusName.three}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.three}_PROD'))"
        name = "Scribe_${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5750_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Controller_${var.campusName.three}'))"
        name = "Controller_${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5850_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/TransitUI_${var.campusName.three}'))"
        name = "TransitUI_${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5950_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Composer_${var.campusName.three}'))"
        name = "Composer_${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5690_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/dwShell/${var.campusName.four}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.four}_PROD'))"
        name = "Dashboard_${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5590_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Dashboard_${var.campusName.three}'))"
        name = "DashboardServlet_${var.campusName.four}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5690_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.four}_prod'))"
        name = "Scribe_${var.campusName.four}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5790_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Controller_${var.campusName.four}'))"
        name = "Controller_${var.campusName.four}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5890_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/TransitUI_${var.campusName.four}'))"
        name = "TransitUI_${var.campusName.four}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_5990_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Composer_${var.campusName.four}'))"
        name = "Composer_${var.campusName.four}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.priLB2_6090_backend_set.name
        }
        condition = "all(http.request.url.path sw (i '/Dashboard_${var.campusName.four}'))"
        name = "Dashboard_${var.campusName.four}"
    }
}