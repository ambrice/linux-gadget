The linux kernel provides windows .inf files for to support CDC ACM and RNDIS
linux gadget devices:

https://www.kernel.org/doc/Documentation/usb/linux-cdc-acm.inf
https://www.kernel.org/doc/Documentation/usb/linux.inf

To install those, you have to attach a device, wait for it to fail, find it in
the Device Manager, manually update the driver from a location....

This project uses WiX (http://wixtoolset.org/) to create a .msi installer that
can be used to preload the drivers.  Install WiX and DIFxApp (part of the WDK at
http://msdn.microsoft.com/en-US/windows/hardware/gg454513) and run build.cmd.
Output is linux-gadget.msi
