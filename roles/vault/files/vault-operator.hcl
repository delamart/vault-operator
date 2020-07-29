#
# Policy used by vault-operator
#

# Full admin
path "*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}