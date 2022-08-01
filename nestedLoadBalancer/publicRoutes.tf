// Copyright (c) 2017, 2021, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

resource "oci_load_balancer_load_balancer_routing_policy" "pubLB_main_routing_policy" {

    condition_language_version = "V1"
    load_balancer_id = oci_load_balancer_load_balancer.pubLB.id
    name = "${var.publicLB1.display_name}Main"
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.one}_prod'), http.request.url.path sw (i '/dwShell/${var.campusName.one}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.one}_PROD'), http.request.url.path sw (i '/Controller_${var.campusName.one}'), http.request.url.path sw (i '/TransitUI_${var.campusName.one}'), http.request.url.path sw (i '/Composer_${var.campusName.one}'), http.request.url.path sw (i '/Dashboard_${var.campusName.one}'))"
        name = "${var.campusName.one}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.pubLB_priLB1_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.two}_prod'), http.request.url.path sw (i '/dwShell/${var.campusName.two}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.two}_PROD'), http.request.url.path sw (i '/Controller_${var.campusName.two}'), http.request.url.path sw (i '/TransitUI_${var.campusName.two}'), http.request.url.path sw (i '/Composer_${var.campusName.two}'), http.request.url.path sw (i '/Dashboard_${var.campusName.two}'))"
        name = "${var.campusName.two}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.pubLB_priLB2_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.three}_prod'), http.request.url.path sw (i '/dwShell/${var.campusName.three}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.three}_PROD'), http.request.url.path sw (i '/Controller_${var.campusName.three}'), http.request.url.path sw (i '/TransitUI_${var.campusName.three}'), http.request.url.path sw (i '/Composer_${var.campusName.three}'), http.request.url.path sw (i '/Dashboard_${var.campusName.three}'))"
        name = "${var.campusName.three}"
    }
    rules {
        actions {
            name = "FORWARD_TO_BACKENDSET"
            backend_set_name = oci_load_balancer_backend_set.pubLB_priLB2_backend_set.name
        }
        condition = "any(http.request.url.path sw (i '/DashboardServlet/${var.campusName.four}_prod'), http.request.url.path sw (i '/dwShell/${var.campusName.four}_PROD'), http.request.url.path sw (i '/ScribeUI/${var.campusName.four}_PROD'), http.request.url.path sw (i '/Controller_${var.campusName.four}'), http.request.url.path sw (i '/TransitUI_${var.campusName.four}'), http.request.url.path sw (i '/Composer_${var.campusName.four}'), http.request.url.path sw (i '/Dashboard_${var.campusName.four}'))"
        name = "${var.campusName.four}"
    }
}
