cd /usr/share/X11/xkb/rules
sudo cp evdev.xml evdev.xml.pre-usqwertz.backup
sudo sed -i 's/  <\/layoutList>/    <layout>\n      <configItem>\n  <name>custom<\/name>\n        <shortDescription>custom<\/shortDescription>\n        <description>A user-defined custom Layout<\/description>\n      <\/configItem>\n      <variantList\/>\n    <\/layout>\n  <\/layoutList>/' evdev.xml

