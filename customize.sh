#!/sbin/sh

# Set executable permissions
set_perm_recursive $MODPATH/system/xbin 0 0 0755 0755

# Fall back to bin if xbin isn't available
[ -d /system/bin ] && [ ! -d /system/xbin ] && mv $MODPATH/system/xbin $MODPATH/system/bin
