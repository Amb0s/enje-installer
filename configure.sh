# Regenerates the fonts cache.
sudo fc-cache -fsv

# Adds Japanese locales.
echo "ja_JP.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen

# Import backgrounds
FILE="./backgrounds.csv"
DESTINATION="/usr/share/backgrounds/gnome"

while IFS=, read -r link name; do 
    sudo curl "$link" -o "$DESTINATION/$name"; 
done < $FILE

# Copy configuration
cp -r ./.config/wal/colorschemes/dark/ ~/.config/wal/colorschemes/dark/
cp -r ./.local/bin/ ~/.local/bin/
chmod +x ~/.local/bin/ctheme

