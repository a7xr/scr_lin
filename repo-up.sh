#if mount LABEL="Nouveau nom"; then

# Bind all the loop devices to the distro DVD images
iso_path='/media/hdd_sda7/ms'

for x in 1 2 3 4; do 
losetup "/dev/loop$((x-1))" "$iso_path/debian-7.0.0-i386-DVD-$x.iso"
done

# Now mount all the loop devices on the (above pre-created)
# directories of the same names.
for x in 1 2 3 4; do 
mount -t iso9660 -o ro,user "/dev/loop$((x-1))" "/media/debian-7.0.0-i386-DVD-$x"
done
