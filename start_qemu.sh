# SPICE 127.0.0.1:17474
echo 'WARNING: Closing this terminal window will stop the virtual machine !'
qemu-system-x86_64 -L qemu -spice unix=off,addr=127.0.0.1,port=17474,disable-ticketing=on,image-compression=off,playback-compression=off,streaming-video=off,gl=off -chardev spiceport,name=org.qemu.monitor.qmp.0,id=org.qemu.monitor.qmp -mon chardev=org.qemu.monitor.qmp,mode=control -nodefaults -vga none -device virtio-vga -smp 2 -machine q35,vmport=off,i8042=off,hpet=off -accel kvm -global PIIX4_PM.disable_s3=1 -global ICH9-LPC.disable_s3=1 -drive if=pflash,format=raw,unit=0,file.filename=qemu/edk2-x86_64-code.fd,file.locking=off,readonly=on -drive "if=pflash,unit=1,file=iPod Clickwheel Games Preservation Project.utm/Data/efi_vars.fd" -m 2048 -audiodev spice,id=audio0 -device intel-hda -device hda-duplex,audiodev=audio0 -usb -device usb-tablet,bus=usb-bus.0 -device usb-mouse,bus=usb-bus.0 -device usb-kbd,bus=usb-bus.0 -device nec-usb-xhci,id=usb-controller-0 -chardev spicevmc,name=usbredir,id=usbredirchardev0 -device usb-redir,chardev=usbredirchardev0,id=usbredirdev0,bus=usb-controller-0.0 -chardev spicevmc,name=usbredir,id=usbredirchardev1 -device usb-redir,chardev=usbredirchardev1,id=usbredirdev1,bus=usb-controller-0.0 -chardev spicevmc,name=usbredir,id=usbredirchardev2 -device usb-redir,chardev=usbredirchardev2,id=usbredirdev2,bus=usb-controller-0.0 -device ide-hd,bus=ide.0,drive=driveA973B7BF-F17A-44C5-A6D7-B6D819938FDC,bootindex=0 -drive "if=none,media=disk,id=driveA973B7BF-F17A-44C5-A6D7-B6D819938FDC,file.filename=iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2,discard=unmap,detect-zeroes=unmap" -device virtio-serial -device virtserialport,chardev=org.qemu.guest_agent,name=org.qemu.guest_agent.0 -chardev spiceport,name=org.qemu.guest_agent.0,id=org.qemu.guest_agent -device virtserialport,chardev=vdagent,name=com.redhat.spice.0 -chardev spicevmc,id=vdagent,debug=0,name=vdagent -name "iPod Clickwheel Games Preservation Project" -uuid A9FC3197-EE40-4EF9-A948-461B0B194755 -rtc base=localtime -device virtio-rng-pci -cpu host
