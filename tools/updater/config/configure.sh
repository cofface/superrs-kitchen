#!/sbin/sh

SLOT=$(cat /proc/cmdline 2>/dev/null | tr ' ' '\n' | grep slot | cut -d'=' -f2)
BYNAME="$(find /dev -name by-name 2>/dev/null | grep -m 1 by-name)"
byname=""
for i in /etc/twrp.fstab /etc/*.fstab /etc/fstab.*; do
    if [ -f "$i" ]; then
		if [ "$BYNAME" = "" ]; then
			BYNAME="$(grep by-name "$i" 2>/dev/null | grep system)"
	        for b in $(echo "$BYNAME" | tr -s ' ' | cut -d' ' -f1-); do
	            if [ $(echo "$b" | grep by-name) != "" ]; then
	                byname=$(echo "$b" | rev | cut -d'/' -f2- | rev)
	            fi
	        done
		fi
		if [ $(grep boot_a "$i" 2>/dev/null) != "" ]; then
			SLOT="_a"
		fi
	fi
done
echo "slotnum=$SLOT" > /tmp/config

if [ "$byname" = "" ]; then
    byname="$BYNAME"
fi
echo "byname=$byname" >> /tmp/config
