# Magisk / KernelSU module installer
# Flag Secure Disabler
# Author: Retr0

ui_print " "
ui_print "--------------------------------------"
ui_print " Flag Secure Disabler"
ui_print " System Screenshot Unlock"
ui_print "--------------------------------------"
ui_print " "

disable='
.locals 1
const/4 v0, 0x0
return v0
'

dummy='
.registers 6
return-void
'

PATCHES=false

for jar_dir in "/system/framework" "/system_ext/framework"; do
  for jar_name in "services" "miui-services"; do

    jar_path="$jar_dir/$jar_name.jar"

    if [ ! -f "$jar_path" ]; then
      continue
    fi

    ui_print ">> Found $jar_path"

    mod_jar_path="$MODPATH$jar_path"
    mkdir -p "$(dirname "$mod_jar_path")"

    ui_print ">> Decompiling $jar_name.jar"
    dynamic_apktool -decompile "$jar_path" -o "$TMP/services"

    PATCH=false

    ui_print ">> Patching FLAG_SECURE checks"

    smali_kit -c -m "isSecureLocked" \
      -re "$disable" \
      -d "$TMP/services" \
      -name "WindowManagerService*" \
      -name "WindowState*" && PATCH=true

    smali_kit -c -m "notAllowCaptureDisplay" \
      -re "$disable" \
      -d "$TMP/services" \
      -name "WindowManagerService*" \
      -name "WindowState*" && PATCH=true

    smali_kit -c -m "preventTakingScreenshotToTargetWindow" \
      -re "$disable" \
      -d "$TMP/services" \
      -name "ScreenshotController*" && PATCH=true

    smali_kit -c -m "registerScreenCaptureObserver" \
      -re "$dummy" \
      -d "$TMP/services" \
      -name "IActivityTaskManager*" \
      -name "ActivityTaskManagerService*" && PATCH=true

    if $PATCH; then

      ui_print ">> Recompiling $jar_name.jar"
      dynamic_apktool -preserve-signature -recompile "$TMP/services" -o "$mod_jar_path"

      if [ ! -f "$mod_jar_path" ]; then
        abort "Recompile failed"
      fi

      set_perm 0 0 0644 "$mod_jar_path"

      PATCHES=true
      ui_print ">> Patch applied"

    else
      ui_print ">> No patches found"
    fi

    rm -rf "$TMP/services"

  done
done

if ! $PATCHES; then
  abort "No patch targets found on this device"
fi

ui_print " "
ui_print "Installation finished"
ui_print "Reboot required"
ui_print " "
```
