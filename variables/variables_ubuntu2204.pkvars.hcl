boot_command=["<wait3>c<wait3>","linux /casper/vmlinuz quiet autoinstall net.ifnames=0 biosdevname=0 ip=dhcp ipv6.disable=1 ds=nocloud-net\\;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ <enter>","initrd /casper/initrd <enter>","boot <enter>"]
disk_additional_size=["150000"]
disk_size="10000"
http_directory="./extra/files/gen2-ubuntu2204"
iso_checksum_type="sha256"
iso_checksum="5e38b55d57d94ff029719342357325ed3bda38fa80054f9330dc789cd2d43931"
iso_url="https://releases.ubuntu.com/22.04/ubuntu-22.04.2-live-server-amd64.iso"
output_directory="output-ubuntu2204"
output_vagrant="./vbox/packer-ubuntu2204-g2.box"
provision_script_options="-z false -h true"
ssh_password="password"
ssh_username="ubuntu"
switch_name="vSwitch"
vagrantfile_template="./vagrant/hv_ubuntu2204_g2.template"
# No VLAN needed
vlan_id=""
vm_name="packer-ubuntu2204-g2"