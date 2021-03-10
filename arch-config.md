Persian keyboard
create `/etc/X11/xorg.conf.d/00-keyboard.conf`
```
Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,ir"
        Option "XkbModel" "pc105"
        Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
```
Enable font presets by creating symbolic links:
`sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d`
`sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d`
`sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d`

Enable FreeType subpixel hinting mode by editing:

`/etc/profile.d/freetype2.sh`

Create `/etc/fonts/local.conf` with following:

```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <match>
	  <edit mode="prepend" name="family"><string>Roboto</string></edit>
	  <edit mode="prepend" name="family"><string>Vazir</string></edit>
  </match>
  <match target="pattern">
	  <test qual="any" name="family"><string>serif</string></test>
	  <edit name="family" mode="assign" binding="same"><string>Roboto Slab</string></edit>
	  <edit name="family" mode="assign" binding="same"><string>Vazir</string></edit>
  </match>
  <match target="pattern">
	  <test qual="any" name="family"><string>sans-serif</string></test>
	  <edit name="family" mode="assign" binding="same"><string>Roboto Slab</string></edit>
	  <edit name="family" mode="assign" binding="same"><string>Vazir</string></edit>
  </match>
  <match target="pattern">
	  <test qual="any" name="family"><string>monospace</string></test>
	  <edit name="family" mode="assign" binding="same"><string>Roboto Mono</string></edit>
  </match>
</fontconfig>
```

