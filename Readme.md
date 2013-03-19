#Building:
##MCF Way:
The devices in the meta-rock layer can be built using a slightly tweaked version of the stock OWOS build scripts.  Namely, we have a slightly modified mcf with tweaked git logic.  The entire build can be done with stock tools, but the slightly modified script helps the process along.

1. First, we need to grab the modified build-webos folder:<br>`git clone git://github.com/halfhalo/build-webos.git`

2. Next, we need to change into that directory:<br/>`cd build-webos`
3. We need to switch to the modified branch:<br/>`git checkout remote-layers`
4. To install any build dependencies, run:<br>`sudo scripts/prerequisites.sh`
5. To setup the build environment, run:<br>`./mcf -p0 -b0 -r https://raw.github.com/halfhalo/rock-layers/master/weboslayers.py rock`<br>`./mcf -p0 -b0 -r https://raw.github.com/halfhalo/rock-layers/master/weboslayers.py slate`<br>`./mcf -p0 -b0 -r https://raw.github.com/halfhalo/rock-layers/master/weboslayers.py envy`<br> depending on what machine you want to build
6. Finally, type `make webos-image` to start the build!

#Installing:
Installing is easy.  Grab unetbootin and a flash drive, and use unetbootin to flash one of the iso files located in BUILD-*/deploy/images/webos-image-*.iso.  Once flashed to a usb drive, you can boot straight from it.  Be warned, however, that the install option will wipe the device completely to install OWOS

#Needs to be done:    
##General:
###Nyx:
+ Tie uinput into nyx for proper power/keyboard/vol/unified input
  +  Right now Nyx expects a single keyboard with power, volume, and the home key among other items.  This is not the case with x86 devices however, which generally have power on its own keyboard input, the other devices on the system on another input, and finally an integrated keyboard on its own, and thats not even counting any usb keyboards.  A uinput program to merge all these into a single input for nyx to properly support devices.
+ Have fully working Battery/Charger reporting
  + Nyx right now has a very minimal integration with udev/apci on x86 devices.  It can find the first Charger/Battery, but only has proper logic for getting the battery percentage at the moment, and has (mostly) reversed charger detection.  This just needs its battery/charging logic updated for apci.
+ Fix the mtdev multitouch segfault with LSM
  + With the -ports mtdev multitouch changes in nyx, LSM will segfault loading nyx when LD_Preload is set in LSM.
+ Get generic docking support in nyx
  + Nyx should have some knowledge of when a dock, whether it be a dock-dock, keyboard dock, or phone dock, is attached.  General support should include dock charger detection, ethernet, and video out.


###LSM/QT:
+ Get Mesa working with QT without X11
  + Most X86 video drivers for EGL/GLES run through mesa.  We need to get QT and Mesa playing nice with each other for EGL/GLES and not have X11 integrated at the same time.  Right now all video is via software rendering.
+ Get proper Flick Gesture working
  + The bottom Gesture flick is not currently being properly recognized.  This should be a relatively small fix.

###Misc:
+ Get power/suspend integrated
  +  Right now there is no support for power states or suspend to ram.  Having proper suspend to ram would drasticly improve the usability on mobile x86 devices.
+ Get some sound system working
  + Right now there is a lack of any sort of media playpack.  Having basic sound support is a big part of that.
+ Get display/brightness support
  + Right now the system has no control over the brightness of the display, or whether the display is on or off.  This needs to be integrated into either LSM or Nyx depending on the more appropriate location

##Samsung Series 7 Slate (slate):
###Nyx:
+ Get the accelerometer enabled in the kernel and talking with nyx
  + The kernel accelerometer driver needs to be enabled and tied into nyx.
+ Get the Slate Specific dock features working
  + Having the Slate properly recognize its dock and set its ethernet connection, properly setup any external displays, and properly recognize usb devices

##HP Envy X2 (envy):
###Nyx:

##Rock (Other/Generic):
###Misc:
+ General Build issues.

