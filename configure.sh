# Regenerates the fonts cache.
sudo fc-cache -fsv

# Adds Japanese locales.
echo "ja_JP.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen

# Import backgrounds
FILE="./backgrounds.csv"
DESTINATION="$HOME/Pictures/Wallpapers"

while IFS=, read -r link name; do 
    curl "$link" -o "$DESTINATION/$name"; 
done < $FILE

# Copy configuration
mkdir -p ~/.config/wal/colorschemes/dark/
cp -r ./.config/wal/colorschemes/dark/ ~/.config/wal/colorschemes/
cp -r ./.local/bin/ ~/.local/
chmod +x ~/.local/bin/ctheme
export PATH="$PATH:$HOME/.local/bin"

