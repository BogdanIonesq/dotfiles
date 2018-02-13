# Arch Linux dotfiles and setup

## Current Setup
![alt text](https://github.com/BogdanIonesq/dotfiles/blob/master/clean.png)

![alt text](https://github.com/BogdanIonesq/dotfiles/blob/master/busy.png)

## Installing Arch on a new machine
**DISCLAIMER: These guidelines were written specifically for my machine and _might_ not work on yours. Always follow [the official Installation guide](https://wiki.archlinux.org/index.php/Installation_guide).**

First check if you booted in UEFI mode:
```
ls /sys/firmware/efi/efivars
```

Check internet connection:
```
ping google.com
```

Update clock:
```
timedatectl set-ntp true
timedatectl status
```

Erase disk and create 3 new partitions.
- **sd _x_ 1** EFI partition (about 260-512 MB, code `ef00`)
- **sd _x_ 2** swap partition (more than 512 MB, code `8200`)
- **sd _x_ 3** root partition (code `8304`)
```
cgdisk /dev/sdx
```

Format the boot partition:
```
mkfs.fat -F32 /dev/sdx1
```

Activate the swap partiton:
```
mkswap /dev/sdx2
swapon /dev/sdx2
```

Format the data partition and mount it:
```
mkfs.ext4 /dev/sdx3
mount /dev/sdx3 /mnt
```

Mount the boot partition:
```
mkdir /mnt/boot
mount /dev/sdx1 /mnt/boot
```

Install the base and base-devel packages:
```
pacstrap /mnt base base-devel
```

Generate fstab:
```
genfstab -U /mnt >> /mnt/etc/fstab
```

Chroot in the new environment:
```
arch-chroot /mnt
```

Set the time zone:
```
ln -sf /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
```

Run hwclock:
```
hwclock --systohc
```

Uncomment `en_US.UTF-8 UTF-8` in `/etc/locale.gen`:
```
nano /etc/locale.gen
```

Export the language (`LANG=en_US.UTF-8`):
```
nano /etc/locale.conf
```

Create the hostname:
```
nano /etc/hostname
nano /etc/hosts
```

Set root password:
```
passwd
```

Install and configure the boot loader:
```
pacman -S grub efibootmgr intel-ucode
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg
```

Exit and reboot:
```
exit
reboot
```

Install sudo:
```
pacman -S sudo
```

Create user and grant sudo:
```
useradd -m -G wheel MY_USERNAME
passwd MY_USERNAME
export EDITOR=nano && visudo
```

Logout and login into the new user:
```
logout
```

Install xorg and check it:
```
sudo pacman -S xorg xorg-xinit xterm
startx
```

Follow [General recommendations](https://wiki.archlinux.org/index.php/general_recommendations), install [i3-gaps](https://github.com/Airblader/i3), [polybar](https://github.com/jaagr/polybar), [Office Code Pro font](https://github.com/nathco/Office-Code-Pro) and [more](https://wiki.archlinux.org/index.php/List_of_applications).
