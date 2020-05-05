make
mkdir iso
mkdir iso/boot
mkdir iso/boot/grub
cp mykernel.bin iso/boot/mykernel.bin
echo 'set timeout=0'                      > iso/boot/grub/grub.cfg
echo 'set default=0'                     >> iso/boot/grub/grub.cfg
echo ''                                  >> iso/boot/grub/grub.cfg
echo 'menuentry "My Operating System" {' >> iso/boot/grub/grub.cfg
echo '  multiboot /boot/mykernel.bin'    >> iso/boot/grub/grub.cfg
echo '  boot'                            >> iso/boot/grub/grub.cfg
echo '}'                                 >> iso/boot/grub/grub.cfg
grub-mkrescue --output=mykernel.iso iso
rm -rf iso
