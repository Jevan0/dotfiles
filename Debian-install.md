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
sudo apt install xorg lightdm i3 -y # lightdm provide login page
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
> logout to apply these configs   

`im-config` set fcitx5 as default 

### File Manager & USB auto detect
```bash
sudo apt install dolphin udisks2 udiskie -y
```

### Font
```bash
sudo apt install fonts-jetbrains-mono fonts-noto-cjk -y
```

### Audio
```bash
sudo apt install pipewire-audio pulseaudio-utils -y

systemctl --user enable --now pipewire pipewire-pulse wireplumber
```
### screen bright control
```bash
sudo apt instlal -y brightnessctl
```

### Firefox Browser 
```bash
sudo apt install firefox-esr -y
```
set true:  about:config -> gfx.webrender.all 

### General tools
```bash
sudo apt install alacritty rofi zsh vim vim-gtk3 xclip git curl btop -y

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
`vim-gtk3` provide vim clipboard supported

### Program
Dev env
```bash
sudo apt install openjdk-21-jdk -y # Java
sudo apt install python3 python3-dev python3-pip python3-venv -y # Python
sudo apt install build-essential libssl-dev libffi-dev manpages-dev clang lldb lld libc++-dev libc++abi-dev cmake -y # C C++ Cmake
```
- c
- cpp
- cmake
- java
- python
