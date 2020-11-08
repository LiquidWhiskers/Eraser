pmagic_wipe
sleep 1
process=$(top -b -n 1 | grep [^grep][[:space:]]dc3dd)
device=$(echo $process | grep -m1 -o [^.]sd[a-z] | cut -c2-4 )
echo 'Selected Device: '$device
while [ -n "$(top -b -n 1 | grep [^grep][[:space:]]dc3dd)" ]
do
	continue
done
umount -A /dev/$partition
echo 'Making GPT on /dev/'$device
parted "/dev/"$device --script mklabel gpt		
sleep 3
sudo poweroff

















































