# Wait what?
Run the powershell script to build an Ubuntu 22.04.2 server with docker and KMS Server

# Required to build

- Windows box with Hyper-V: `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All`
- Chocolatey (in an Admin PS): `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`
- Packer : `choco install packer`
- Git: `choco install git`
- Create a working directory
- Open a shell in your working directory
- Clone git repo: `git clone https://github.com/WinSCaP/hyperv-ubuntu-kms.git`
- Plugins (Windows Images only): `packer init --upgrade config.pkr.hcl`
- Vagrant: `choco install vagrant -y`
- Some firewall rules (in an Admin PS): `New-NetFirewallRule -DisplayName "Packer_http_server" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 8000-9000`
- Create a External vSwitch named `vSwitch` in Hyper-V
- In an Admin PS: `hv_ubuntu2204.ps1`

# Now what?
- Import the machine into Hyper-V or convert to your hypervisor
- Login using `ubuntu`/`password` 
- Start docker container using `sudo docker start vlmcsd` (once)
- `slmgr -skms [VM IP]`
- `slmgr -ato`
