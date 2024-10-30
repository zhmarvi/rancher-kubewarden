#Environment Secrets Scanner Policy

resource "kubernetes_manifest" "env-secrets-policy" {
  manifest = yamldecode(file("./policy-manifests/env-secrets-policy.yaml"))
}

# Trusted Repos Policy
resource "kubernetes_manifest" "trusted-repos-policy" {
  manifest = yamldecode(file("./policy-manifests/trusted-repos-policy.yaml"))
}
