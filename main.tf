resource "github_dependabot_secret" "dependabot_secrets" {
  for_each = var.dependabot_secrets

  repository      = each.value.repository
  secret_name     = each.value.secret_name
  encrypted_value = each.value.encrypted_value
  key_id          = each.value.key_id
  plaintext_value = each.value.plaintext_value
  value           = each.value.value
  value_encrypted = each.value.value_encrypted
}

