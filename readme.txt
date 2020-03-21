YANG 2020 v1.0

Based on YANG release version 0.91.

A few directories/folders which might be useful:

* Settings directory:
On Windows 2000/XP, assuming it's installed in drive X:
X:\Documents and Settings\Username\Application Data\yang
NON-ENGLISH VERSIONS OF WINDOWS MAY NAME "Application Data" DIFFERENTLY!
On Windows Vista/7, again assuming drive X:
X:\Users\Username\AppData\Roaming\yang
On Mac OS X:
~/Library/Application Support/yang
On Linux, FreeBSD and possibly other kinds of Unix (excluding Mac OS X):
~/.yang
* DN3D maps folder (inside the above settings directory): dn3dmaps
* SW maps folder: swmaps
* Blood maps folder: bloodmaps
* Descent maps folder: descentmaps
* Descent 2 maps folder: descent2maps
* DN3D TC/MOD files: dn3dmods
* SW TC/MOD files: swmods
* DEMO PLAYBACK (*.dmo) FILES: For each source port individually.

Known issues:

* At least on Linux, there may be "grabbed mouse cursor issues", at least
with applications that use SDL (and not launched using e.g. Wine).
Two different(?) cases of these have been found:

* At least in the latest version of JFSW (October 9th, 2005),
the mouse cursor may get stuck while the GTK startup window is displayed.
It may still be possible to use the keyboard to navigate (e.g. ALT-TAB),
and if you want to close JFSW and not launch a game,
you can probably just press ALT+F4 while the startup window is focused.

* Another issue, seems to be related to SDL, is that while the mouse is grabbed
in the game, you can't use shortcut keys like ALT-TAB. The only way to force
a game shutdown is, unfortunately, not very user friendly.
The way I can do it, at least (shortcut keys may differ on your Linux distro!):
- Press CTRL-ALT-F1 to switch to some kind of a "virtual console", and login
(enter your usual username and password).
- Afterwards, type the following command and then press enter:
killall -KILL eduke32
If you want to be sure it's named eduke32, you can type the following
while the game is still running:
ps ax | grep eduke32
- Anyway, after killing EDuke32, CTRL-ALT-F7 returns me to the desktop.
But now the mouse cursor is stuck. A possible workaround is to launch some
SDL application which grabs the mouse.
I can type ALT-F2, type the EDuke32 executable with full path
(examples: /usr/games/eduke32, /home/ny00123/eduke32/eduke32),
and afterwards quit the game.

* Usually when an executable is selected, it may be in a directory hierarchy
which contains spaces. On Windows that should always be the case.
On other platforms, Wine and the graphical terminal
are exceptions, as extra parameters may be provided
(e.g. gnome-terminal -x, konsole -e, aoss wine, padsp wine).
Currently the command ONLY (e.g. konsole without -e) should be enclosed in
double-quotes "" if you want to write a path and/or executable with spaces.
For instance: "/my path with spaces/to/konsole" -e

* According to Qbix (Main DOSBox developer), the following has never been
prepared to be supported in DOSBox, but still mentioning...
If you want a real device like /dev/cdrom to be used as an emulated CD-ROM
drive in DOSBox, make sure it's not a symlink.
At least here DOSBox has failed mounting it when it has been a symlink,
and even if itisn't, I can't guarantee it'll work.

* On platforms other than Windows, a graphical terminal has to be set.
On non-Mac platforms an auto-detection process tries to find one,
but it may not be what you expect. On OS X, "open" command is used by default.
You can tell YANG to use another one in the advanced settings section.
Make sure an appropriate command line argument is provided as well.
Examples: gnome-terminal -x, konsole -e, open.
You can also ignore that, but it's HIGHLY RECOMMENDED TO PROVIDE A TERMINAL.
The main reason for that is that an application or script may expect a working
terminal (e.g. for getting some input from the user).
As an example, a trial to launch a multiplayer game with EDuke32 resulted in a
GTK startup getting stuck due to that (even though no user input is required).

License Agreement:

You're allowed to distribute the YANG executable as-is.
You may not make modifications of the YANG executables. This includes
(but not limited to) disengineering, disassembling and decompiling.

IN ADDITION, YANG IS PROVIDED WITHOUT ANY KIND OF WARRANTY,
WHETHER EXPRESSED OR IMPLIED.


- NY00123
