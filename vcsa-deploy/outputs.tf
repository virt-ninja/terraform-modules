output "VC Username" {
  description = "Administrator account"
  adminuser = "administrator@${VCSASSODomain}"
}

output "VC Password" {
  description = "Administrator password"
  sensitive   = true
  adminpassword = "${VCSASSOPass}"
}

output "VC URL" {
  description = "vCenter URL (FQDN)"
  vcurl = "${VCSAFQDN}"
}
