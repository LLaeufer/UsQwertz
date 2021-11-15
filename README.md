# UsQwertz
 A mixture of the US Qwerty layout and the German Qwertz layout.
 In essence this layout is the classic US Qwerty layout, with Y and Z being swapped, and ä/Ä, ö/Ö, ß/ẞ, ü/Ü, °, µ, §, @ and € being reachable via a/A, o/O, s/S, u/U, d, m, p, q and e in combination with the right alt key.
 
# Warning
 Always keep in mind that this script modifies system data, if you aren't able to recover from a broken system, DO NOT USE THIS SCRIPT.

# Usage
 Execute either the install.sh or the installLocal.sh and switch to the "A user-defined custom Layout" option on the keyboard layout switcher of your desktop environment.
 Sometimes this layout is also found by it's abbreviation "custom".
 The regular install.sh is recommended for most users, since installLocal.sh needs explicit support of the desktop environment.
 
# Enabling the "A user-defined custom Layout" layout
 Some distributions don't ship with the "A user-defined custom Layout" option available. patchevdev.sh adds this option. You can also use revertevdev.sh to restore the original evdev file.
 Just be aware, that a broken evdev file could stop you from making keyboard inputs from your desktop environment. Switching to another tty and doing it from your console should work fine though.

# Tips
 If it doesn't work, you might want to restart your system, and make sure you selected the custom keyboard layout in the keyboard layout selector of your desktop environment.
 In case this script stops working after a system update, try to install it again.

