# Terraform module for installing VCSA
# Give path to mounted/extracted VCSA ISO

resource "null_resource" "VCSA" {
  # Changes to the vCenter FQDN require redeployment
  triggers = {
    VCSAName = "${VCSADisplayName}"
  }
  provisioner "local-exec" {
    command = "cat ${templatefile("${path.module}/${VIJSONTemplate}", { 
    VCSAPath        = ${VCSAPath}
    VIServer        = ${VIServer}
    VIUsername      = ${VIUsername}
    VIPassword      = ${VIPassword}
    VINetwork       = ${VINetwork}
    VIDatastore     = ${VIDatastore}
    VIDatacenter    = ${VIDatacenter}
    VCSADiskMode    = ${VCSADiskMode}
    VCSASize        = ${VCSASize}
    VCSADisplayName = ${VCSADisplayName}
    VCSAIPAddress   = ${VCSAIPAddress}
    VCSADNS         = ${VCSADNS}
    VCSAPrefix      = ${VCSAPrefix}
    VCSAGateway     = ${VCSAGateway}
    VCSAFQDN        = ${VCSAFQDN}
    VCSARootPass    = ${VCSARootPass}
    VCSANTP         = ${VCSANTP}# Terraform module for installing VCSA
# Give path to mounted/extracted VCSA ISO

resource "null_resource" "VCSA" {
  # Changes to the vCenter FQDN require redeployment
  triggers = {
    VCSAName = "${VCSADisplayName}"
  }
  provisioner "local-exec" {
    command = "cat ${templatefile("${path.module}/${VIJSONTemplate}", { 
    VCSAPath        = ${VCSAPath}
    VIServer        = ${VIServer}
    VIUsername      = ${VIUsername}
    VIPassword      = ${VIPassword}
    VINetwork       = ${VINetwork}\
    VIDatastore     = ${VIDatastore}
    VIDatacenter    = ${VIDatacenter}
    VCSADiskMode    = ${VCSADiskMode}
    VCSASize        = ${VCSASize}
    VCSADisplayName = ${VCSADisplayName}
    VCSAIPAddress   = ${VCSAIPAddress}
    VCSADNS         = ${VCSADNS}
    VCSAPrefix      = ${VCSAPrefix}
    VCSAGateway     = ${VCSAGateway}
    VCSAFQDN        = ${VCSAFQDN}
    VCSARootPass    = ${VCSARootPass}
    VCSANTP         = ${VCSANTP}
    VCSASSHEnable   = ${VCSASSHEnable}
    VCSASSOPass     = ${VCSASSOPass}
    VCSASSODomain   = ${VCSASSODomain}
    VCSACEIPEnable  = ${VCSACEIPEnable}
}} > ${module.path}/vcsa_install_rendered.json"

  provisioner "local-exec" {
    # Use the VCSA cli deployment tool to deploy and configure vCenter VM
    command = "${VCSAInstallerPath}/vcsa-cli-installer/win32/vcsa-deploy.exe install --no-ssl-certificate-verification --accept-eula --acknowledge-ceip ${module.path}/vcsa_install_rendered.json)}"
  }
}
    VCSASSHEnable   = ${VCSASSHEnable}
    VCSASSOPass     = ${VCSASSOPass}
    VCSASSODomain   = ${VCSASSODomain}
    VCSACEIPEnable  = ${VCSACEIPEnable}
}} > ${module.path}/vcsa_install_rendered.json"

  provisioner "local-exec" {
    # Use the VCSA cli deployment tool to deploy and configure vCenter VM
    command = "${VCSAInstallerPath}\vcsa-cli-installer\win32\vcsa-deploy.exe install --no-ssl-certificate-verification --accept-eula --acknowledge-ceip ${module.path}/vcsa_install_rendered.json)}"
  }
}
