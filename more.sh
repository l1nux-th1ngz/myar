check for errors #!/bin/bash

# Remove carriage return characters
tr -d '\r' <<EOF
# Remove
EOF
tr -d '\r' < "$0" > temp.sh && mv temp.sh "$0"

# Install packages
yay -S --noconfirm --needed xdg-base-dir-env xdg-desktop-portal-git xdg-desktop-portal-gtk-git xdg-desktop-portal-wlr-git vim-devicon xdg-desktop-portal-hyprland-git gvfs-udisks2-volume-monitor gvfs-mtp-volume-monitor nodejs spicetify-cli spicetify-custom-apps-and-extensions-git spicetify-themes-git emojione xdg-ninja-git polkit-qt6 polkit-qt5 ffmpeg wlr-brightness-git kio kio-admin pipewire aylurs-gtk-shell-git gjs-git python-pywalfox pywal-git gtk-layer-shell-git zlip python-lz4 lsd alsa alsa-utils alsamixer amixer pango-git wlroots-git wlogout-git wf-recorder-git wl-clipboard-git wayland-git gvfs-git gstreamer qt6-multimedia-gstreamer intltool helix ranger_devicons-git lib32-gstreamer vim-ranger-git hyprpicker-git wlroots-asan-git swaybg-git clipman nvchad-git

# Remove the script after installation
rm "$0"
