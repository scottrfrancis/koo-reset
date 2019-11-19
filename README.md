WiFi Reset Service for Kootek WiFi (RTL8188CUS USB Adapter)
==================

Systemd service to reset (via usb_modeswitch) the KOOTEK wireless interface on boot.  Greatly improves reliability of wifi adapters on the BeagleBone Green.

Forked from Adafruit's very handy WiFi Reset service that uses ifup/ifdown, but wasn't working for my setup... which only responded to unplugging the adapter and plugging it back in. This service automates that.

Installation
============

This *must* be run on a BeagleBone Green running the Debian operating system.  Get the latest image from: http://beagleboard.org/latest-images

Next make sure you've upgraded to the latest kernel available by executing once (be sure you device has internet access first):

````
cd /opt/scripts/tools/
./update_kernel.sh
````

Once the kernel has updated and the device restarted, install the service by entering the directory where this repository was cloned and executing:

````
./install.sh
````

You should see the following response:

````
Installing koo reset service to /opt/koo-reset.
Installing systemd service to run at boot.
Enabling systemd service.
````

That's it!  On boot the service will reset (usb_modeswitch) the KOOTEK interface identified by VID:PID

If you'd ever like to disable the service, run the command:

````
systemctl disable wifi-reset.service
````
