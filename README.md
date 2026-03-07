# SimpleFlagSecure

Disable Android `FLAG_SECURE` restrictions and take screenshots or record screens in apps that normally block it.

This module dynamically patches the Android framework during installation so the system no longer treats windows as **secure**, allowing screenshots and screen recordings in restricted apps.

---

## Features

* Disable `FLAG_SECURE` screenshot restriction
* Enable screenshots in restricted apps
* Block screenshot detection on newer Android versions
* Dynamic patching of `services.jar`
* Lightweight module with minimal footprint
* Works with multiple root managers

---

## Supported Root Managers

* Magisk
* KernelSU
* APatch

---

## Supported Android Versions

Tested primarily on modern Android versions where screenshot restrictions are enforced through framework checks.

Compatibility may vary depending on OEM modifications.

---

## How It Works

Android apps can prevent screenshots by setting a secure window flag:

```
WindowManager.LayoutParams.FLAG_SECURE
```

When this flag is present, the system blocks:

* Screenshots
* Screen recording
* Screen sharing

This module modifies framework methods responsible for checking this flag and forces them to return `false`, making the system behave as if no window is secure.

Instead of shipping a pre-patched framework file, the module:

1. Extracts the device's framework `services.jar`
2. Decompiles it during installation
3. Patches relevant methods
4. Rebuilds the modified jar
5. Overlays it through the module system

This approach improves compatibility across devices and ROMs.

---

## Installation

1. Download the latest module release.
2. Open your root manager:

   * Magisk
   * KernelSU
   * APatch
3. Go to **Modules → Install from storage**.
4. Select the module zip.
5. Reboot your device.

---

## Testing

After reboot:

Try taking screenshots in apps that normally block them, such as:

* Banking apps
* Incognito mode in browsers
* Messaging apps with secure chats

If the screenshot is no longer black or blocked, the module is working.

---

## Troubleshooting

### Module Installed but Screenshots Still Black

Some apps use deeper DRM protections that cannot be bypassed by framework patches alone.

Try testing with:

* Chrome Incognito
* WhatsApp profile photos
* Telegram secret chats

If those work but a specific app does not, that app likely uses hardware DRM layers.

---

### Bootloop

If the device fails to boot:

1. Boot into recovery
2. Navigate to:

```
/data/adb/modules/
```

3. Delete the module folder
4. Reboot the system

---

## Disclaimer

This module modifies Android framework behavior.
Use it at your own risk.

Some applications rely on screenshot blocking for security purposes.

---

## Credits

* Android open-source community
* Developers of previous FLAG_SECURE bypass modules
* Contributors and testers

---

## License

MIT License
