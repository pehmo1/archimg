My configuration files for [Archiso](https://wiki.archlinux.org/title/Archiso).

Generates a live Arch Linux .iso which includes an [automated Arch Linux installer](https://github.com/pehmo1/ArchTitus) that installs [my config](https://github.com/pehmo1/config).

## How to use
Install Archiso.

Clone this repo with ```git clone https://github.com/pehmo1/archimg.git```

airootfs/root/ArchTitus contains the automatic installer as a submodule so ```cd``` into the cloned repo and run ```git submodule update --init airootfs/root/ArchTitus``` to clone it as well.

To generate the .iso file into the home directory run ```sudo mkarchiso -v -w /tmp/archiso-tmp -o ~ .``` See the arch [wiki page](https://wiki.archlinux.org/title/Archiso) on Archiso for more info.