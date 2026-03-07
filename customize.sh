#!/sbin/sh
#Require DI v4.8+

# To avoid compatibility issues with future implementations
SKIPUNZIP=0

# Which variables should be shared with the DI
SHARED_VARS="

MODPATH
SKIPUNZIP
SKIPMOUNT
PROPFILE
POSTFSDATA
LATESTARTSERVICE
KSU
KSU_VER
KSU_VER_CODE
KSU_KERNEL_VER_CODE

"

#Exporting the SPECIAL VARIABLES ensures that they are also shared with the DI
export SHARED_VARS $SHARED_VARS
#Get update-binary
binary="META-INF/com/google/android/update-binary"
binaryout="$TMPDIR/$binary"
unzip -qo "$ZIPFILE" "$binary" -d "$TMPDIR"
if [ -f "$binaryout" ]; then
   . "$binaryout"
else
    abort "SETUP: Can't get update-binary"
fi