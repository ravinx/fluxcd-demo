# Bootstrap fluxcd by entering the token for github repo
flux bootstrap github \ \n  --owner=ravinx \\n  --repository=fluxcd-demo \\n  --branch=master2 \\n  --path=flux/clusters/dev \\n  --components-extra=image-reflector-controller,image-automation-controller \\n  --token-auth
