# Copy configuration
cd
cd enje-installer

# Import backgrounds
FILE="backgrounds.csv"
DESTINATION="/usr/share/backgrounds/gnome"

while IFS=, read -r link name; do 
    sudo curl "$link" -o "$DESTINATION/$name"; 
done < $FILE

cp -r .config/wal/colorschemes/dark/ ~/.config
cp -r .local/bin/ ~/.local
chmod +x ~/.local/bin/ctheme


