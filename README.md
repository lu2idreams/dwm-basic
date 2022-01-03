# dwm-basic
A basic build of dwm including only few patches and modifications, mostly for personal use.

# Installation

## Preparation

Make sure you have the dependencies of dwm installed (https://packages.gentoo.org/packages/x11-wm/dwm/dependencies). You will also need git and the build-essentials to be able to build this (which should go without saying). Dwm (in this configuration) relies on urxvt (rxvt-unicode) as default terminal and dmenu as launcher (These may be changed in the config.h, however). It is also recommended to install the "suckless-tools"-package. First, clone the repository: 

```git clone https://github.com/lu2idreams/dwm-basic```

"dwm_hidden" should be moved to your $HOME directory and renamed to ".dwm". 

```cd dwm-basic/```
```mv dwm_hidden ~/.dwm```

"xsession_hidden" should also be moved there and renamed to ".xsession". 

```mv xsession_hidden ~/.xsession```

Now, move the "dwm" directory to $HOME as well.

```mv dwm ~/dwm```

OPTIONAL: Move Xresources_hidden (if you plan to use urxvt):

```mv Xresources_hidden ~/.Xresources```

## Installation

Go to "dwm" directory:

```cd dwm/```

Build it:

```sudo make clean install```

Mark the autostart-script as executable 

```cd ~/.dwm/```

```sudo chmod +x autostart.sh```

You should now be able to log into the dwm session from your display manager. To run dwm using "startx", add this line to your .xinitrc:

```exec dwm```
