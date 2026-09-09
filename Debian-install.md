# Debian installation
### Init
Install `sudo` and add user to this groups
```bash
su -
apt update -y
apt install sudo -y

usermod -aG sudo <username>
```
Exit `root` user
> 
### Basic desktop env
```bash
sudo apt install xorg lightdm i3 -y
```
> reboot...

### Input & keyboard
```bash
sudo apt install im-config fcitx5 fcitx5-chinese-addons fcitx5-config-qt fcitx5-rime -y

echo 'export XMODIFIERS=@im=fcitx' >> ~/.profile
echo 'export GTK_IM_MODULE=fcitx' >> ~/.profile
echo 'export QT_IM_MODULE=fcitx' >> ~/.profile

im-config -n fcitx5
```
> logout

### File Manager & USB auto detect
```bash
sudo apt install dolphin udisks2 udiskie -y
```

### Firefox Browser 
```bash
sudo apt install firefox-esr -y 
```

### General tools
```bash
sudo apt install alacritty rofi zsh vim vim-gtk3 git curl -y

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Program
```bash

```
