#!/usr/bin/env bash
# ==============================================================================
# Installer for Cyber-Brutalist Desktop HUD
# Author: Patrick Isles (https://github.com/patrick-isles)
# License: MIT
# ==============================================================================

set -eo pipefail

echo -e "\033[1m\033[38;5;196m[Cyber-Brutalist Desktop HUD]\033[0m Initializing installation..."

INSTALL_BIN="${HOME}/.local/bin"
SYSTEMD_USER="${HOME}/.config/systemd/user"
WALLPAPERS="${HOME}/Pictures/Wallpapers"

mkdir -p "${INSTALL_BIN}" "${SYSTEMD_USER}" "${WALLPAPERS}"

# Install engine
echo -e "  \033[38;5;242mInstalling HUD generator to ${INSTALL_BIN}/update-desktop-hud...\033[0m"
cp bin/update-desktop-hud "${INSTALL_BIN}/"
chmod +x "${INSTALL_BIN}/update-desktop-hud"

# Install systemd user services
echo -e "  \033[38;5;242mInstalling systemd timer...\033[0m"
cp systemd/desktop-hud.service "${SYSTEMD_USER}/"
cp systemd/desktop-hud.timer "${SYSTEMD_USER}/"

systemctl --user daemon-reload
systemctl --user enable --now desktop-hud.timer

# Run initial render
echo -e "  \033[38;5;242mGenerating initial 4K HUD canvas...\033[0m"
"${INSTALL_BIN}/update-desktop-hud"

echo -e "\033[1m\033[38;5;196m[SUCCESS]\033[0m Cyber-Brutalist HUD is live and automated via desktop-hud.timer!"
