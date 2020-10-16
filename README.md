# Build a standalone pinctrl-amd module

1. You have should have kernel headers installed
```bash
# For gentoo
emerge --ask sys-kernel/linux-headers
# For Arch-based distributions,
sudo pacman -S linux-headers
# For Debian-based distrubtions
sudo apt install linux-headers-$(uname -r)
```
2. Clone this repo and run make to build this module,

3. Copy pinctrl-amd.ko to override the current one whose path can be found by modinfo
```bash
$ modinfo pinctrl-amd
filename: /lib/modules/5.9.0-rc7-MANJARO+/kernel/drivers/pinctrl-amd/pinctrl-amd.ko.xz
$ cp pinctrl-amd.ko /lib/modules/5.9.0-rc7-MANJARO+/kernel/drivers/pinctrl-amd/pinctrl-amd.ko.xz
```
4. Reboot the system
