# Terraform module for installing VCSA
# Give path to mounted/extracted VCSA ISO

variable "VCSAPath" {
  description = "Path to location of mounted or extracted VCSA iso; defaults to \"<module path>/iso\""
  type = string
  default = "${path.module}/iso/"
}
variable "VIJSONTemplate" {
  description = "Name of JSON template file to use for interpolation" 
  type = string
  default = "embedded_vCSA_on_ESXi.json.tmpl"
  # default = "embedded_vCSA_on_VCSA.json.tmpl"
}
variable "VIServer" {
  description = "Target system (ESX or VC) to deploy VCSA to"
  type = string
}
variable "VIUsername" {
  description = "Username on system deploying VCSA to (defaults to "root" for ESX)"
  type = string
  default = "root"
}
variable "VIPassword" {
  description = "Password on system deploying VCSA to"
  type = string
  default = "VMware1!"
}
variable "VINetwork" {
  description = "Network on system deploying VCSA to"
  type = string
  default = "VM Network"
}
variable "VIDatastore" {
  description = "Datastore to use on system deploying VCSA to"
  type = string
}
variable "VIDatacenter" {
  description = "Detacenter on system deploying VCSA to\n(Leave blank when deploying to ESXi, not used)"
  type = string
  default = ""
}
variable "VCSADiskMode" {
  description = "Disk format for VCSA deployment"
  type = string
  default = "thin"
}
variable "VCSASize" {
  description = "VCSA Deployment size; choose from one of \"tiny\", \"small\", \"medium\", \"large\",\"xlarge\""
  type = string
  default = "tiny"
}
variable "VCSADisplayName" {
  description = "Name of VCSA VM on target system"
  type = string
}
variable "VCSAIPAddress" {
  description = "VCSA IP Address"
  type = string
}
variable "VCSADNS" {
  description = "VCSA DNS; Ensure this can resolve the FQDN forward and reverse lookups\nIf you do not have DNS available use the VCSA IP Address here"
  type = string
  default = ${VCSAIPAddress}
}
variable "VCSAPrefix" {
  description = "Prefix for the netmask e.g. for 255.255.255.0m enter \"24\""
  type = string
  default = "24"
}
variable "VCSAGateway" {
  description = "VCSA Gateway address"
  type = string
}
variable "VCSAFQDN" {
  description = "VCSA Fully Qualified Domain Name; ensure this is resolvable in DNS"
  type = string
}
variable "VCSARootPass" {
  description = "VCSA Root User password"
  type = string
  default = "VMware1!"
}
variable "VCSANTP" {
  description = "NTP server to use for VCSA"
  type = string
  default = "pool.ntp.org"
}
variable "VCSASSHEnable" {
  description = "Enable SSH access to the VCSA (true/false)"
  type = string
  default = "true"
}
variable "VCSASSOPass" {
  description = "Password for the SSO account"
  type = string
  default = "VMware1!"
},
variable "VCSASSODomain" {
  description = "Domain for the SSO account"
  type = string
  default = "vsphere.local"
}
variable "VCSACEIPEnable" {
  description = "Join the VMware Customer Experience Improvement Program (true/false)"
  type = string
  default = "false"
}
