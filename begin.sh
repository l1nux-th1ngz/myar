# Update System
Pacman -Syu --noconfirm needed

# Install some tools
if dependcies are missing install and continue installation
pacman -S --noconfirm -needed git curl wget

# Get Aur helpers
mkdir AUR
cd AUR
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd
cd AUR
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
cd

# Choose an AUR helper to continue install
# install Prerequistes
choosen install -S --noconfirm --needed automake autoconf gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio python wlroots python-pipx python-pip autoconf-archive base-devel multilib-devel wayland wayland-protocols wayland-utils waylandpp pypy pypy3 pyperclip sddm-git parallel jo jq fish reflector reflector-simple zsh glibc glib glib2 ascii i2pd fcitx fcitx-qt5 fcitx-qt6 gum fcitx5 fcitx5-gtk qt5-wayland qt6-wayland aalib lib32-aalibxdg-user-dirs

# Update Directories
xdg-user-dirs-update

# Install RustUp set rustup stable as default allow rust to change if needed change back to stable when task is complete
 -S rustup --noconfirm needed

#Install Hyprland Desktop
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install

# Make Hyprland usable
echo "Installing requested software..."
choosen install -S --noconfirm --needed waybar-hyprland-cava-git dunst cmus ncmpcpp mpv mpd mpris vlc kitty alacritty ranger btop htop marker geany geany-plugins firefox thunderbird neofetch network-manager cava dunst network-manager-applet plymouth-git python-pywal npm mako vim neovim mailspring-bin bluefish bluemail visual-studio code-bin brave-bin google-chrome aylurs-gtk-shell-git eww-wayland playerctl brightnessctl rofi-lbonn-wayland-git rofi-greenclip rofi-power-menu-git rofi-bluetooth-git spotify-wayland  spotify-adblock rofi-spotify-git spicetify-cli spicetify-marketplace-bin spicetify-custom-apps-and-extensions-git

# Configure Hyprland Desktop
echo "Configuring Hyprland Desktop..."
mkdir -p ~/.config/hyprland
cp /usr/share/doc/hyprland/config ~/.config/hyprland/config

# Set Hyprland as default desktop
echo "Setting Hyprland as default desktop..."
echo "export XDG_SESSION_TYPE=wayland" >> ~/.profile
echo "export XDG_CURRENT_DESKTOP=hyprland" >> ~/.profile
echo "export GDK_BACKEND=wayland" >> ~/.profile
echo "export QT_QPA_PLATFORM=wayland" >> ~/.profile
echo "exec hyprland" >> ~/.xinitrc

# Installation complete
echo "Installation complete. Please continue to the next script."
