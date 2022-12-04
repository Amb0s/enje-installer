# Change directory
cd
cd enje-installer

# Import backgrounds
FILE="backgrounds.csv"
DESTINATION="/usr/share/backgrounds/gnome"

while IFS=, read -r link name; do 
    sudo curl "$link" -o "$DESTINATION/$name"; 
done < $FILE

# Copy configuration
cp -r .config/wal/colorschemes/dark/ ~/.config/wal/colorschemes/dark/
cp -r .local/bin/ ~/.local/bin/
chmod +x ~/.local/bin/ctheme


