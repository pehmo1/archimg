#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="madislinux"
iso_label="MADISLINUX_$(date +%Y%m)"
iso_publisher="pehmo1"
iso_application="Madis Linux Live/Rescue/Installer CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="madis"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
	["/root/ArchTitus/archtitus.sh"]="0:0:755"
	["/root/ArchTitus/scripts/startup.sh"]="0:0:755"
	["/root/ArchTitus/scripts/0-preinstall.sh"]="0:0:755"
	["/root/ArchTitus/scripts/1-setup.sh"]="0:0:755"
	["/root/ArchTitus/scripts/2-user.sh"]="0:0:755"
	["/root/ArchTitus/scripts/3-post-setup.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
