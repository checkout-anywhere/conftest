package main
import rego.v1

import data.kubernetes

name := input.metadata.name

violation := [{"msg": msg, "details": {}}] if {
	kubernetes.is_deployment
	msg := sprintf("Found deployment %s but deployments are not allowed", [name])
}
