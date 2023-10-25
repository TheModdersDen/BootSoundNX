# Copyright (c) 2023 TheModdersDen | https://github.com/TheModdersDen

# Install all the 'switch-' dkp packages
# Usage: ./install_dkp_switch_linux.sh

# Ask to escelate to sudo mode:
sudo -v -p "Please enter your password to run this script as root: " || exit 1

# Download the devkitPro installer:
wget https://apt.devkitpro.org/install-devkitpro-pacman ~/
chmod +x ~/install-devkitpro-pacman

# Install the switch dkp packages
echo "Installing switch dkp packages..."

# Install devkitPro:
bash -c "~/install-devkitpro-pacman -y"

# Install the switch dkp packages (all of them that start with 'switch-'):
sudo dkp-pacman -Ssq | grep -E '^switch-' | sudo dkp-pacman -S -

# Ask if we should add the devkitPro to the PATH:
read -p "Do you want to add devkitPro to the PATH? (Y/n): " -n 1 -r
# If the reply is "N", "n", "no", "No", or "NO" then skip adding devkitPro to the PATH:
if [[ $REPLY =~ ^[Nn][Oo]?$ ]]; then
    echo "Skipping adding devkitPro to the PATH..."
    sleep 3

    # Remove the dkp installer:
    echo "Removing installer..."
    rm ~/install-devkitpro-pacman
    echo "Installed removed!"
    sleep 1
else
    echo "Adding devkitPro to the PATH..."

    # Add devkitPro to the PATH:
    echo "export PATH=\"\$PATH:/opt/devkitpro/devkitA64/bin:/opt/devkitpro/tools/bin\"" >>~/.bashrc

    # Re-source the bashrc file:
    source ~/.bashrc

    # Remove the dkp installer:
    echo "Removing installer..."
    rm ~/install-devkitpro-pacman
    echo "Installed removed!"
    sleep 1
fi

# Exit the script:
echo "Done!"
exit 0
