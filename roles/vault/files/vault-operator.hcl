#
# Policy used by vault-operator
#

# Manag Auth
path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

path "sys/auth" {
  capabilities = ["read"]
}

# Manage Policies
path "sys/policies/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "sys/policies" {
  capabilities = ["list"]
}