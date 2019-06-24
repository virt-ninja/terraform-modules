## VCSA deployment Terraform module

This module can be used to bootstrap a VCSA install prior to using the Terraform vSphere provider. Use the outputs as the variables for setting up the provider to create a soft dependancy or use depends on to ensure it is deployed first.

__This is new code, **USE AT YOUR OWN RISK**. Try it out in a lab first!__

### Notes:

  - Extract the VCSA ISO to a local copy of the module directory in a folder called ISO, or point the path variable to a mounted or extracted ISO elsewhere
  - Ensure you use the correct target specification (ESX or vCenter). 
  - Some sensible defaults have been choosen to reduce the number of manadatory variables required.
  - Changing the FQDN of the vCenter will trigger a redeployment. Once run, and as long as the FQDN doesn't change in state, it shouldn't run again. This has not been tested yet!

This version is for vCenter 6.7, and has only been tested with deploying 6.7 U2 onto an ESXi host so far. 
Feel free comment with other working versions or to submit a pull request to extend the version coverage.
