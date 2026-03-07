# Disable FLAG_SECURE (KernelSU Module)

A simple KernelSU module that disables Android's `FLAG_SECURE` restriction, allowing screenshots and screen recording in apps that normally block them.

This module works by patching the Android framework so the system always reports that a window is **not secure**. As a result, the system compositor allows screenshots even if an app tries to block them.

---

## How It Works

Android applications can set a flag called `FLAG_SECURE` in their window parameters:

```
WindowManager.LayoutParams.FLAG_SECURE
```

When this flag is enabled, Android prevents:

* Screenshots
* Screen recording
* Screen sharing

This module modifies the system framework method responsible for checking secure windows:

```
com.android.server.wm.WindowState.isSecureLocked()
```

The method is patched to always return:

```
false
```

Meaning the system behaves as if **no window is secure**, allowing screenshots everywhere.

---

## Features

* Works system-wide
* No LSPosed required
* KernelSU compatible
* Lightweight (framework override only)

---

## Requirements

* Root access
* KernelSU installed
* Android device with compatible framework structure

---

## Installation

1. Download the module zip.
2. Open **KernelSU Manager**.
3. Go to **Modules**.
4. Tap **Install from storage**.
5. Select the module zip.
6. Reboot the device.

---

## Module Structure

```
flagsecure-disable/
├── module.prop
└── system/
    └── framework/
        └── services.jar
```

The module overlays a patched `services.jar` over the system framework during boot.

---

## Building From Source

1. Pull the framework file:

```
adb pull /system/framework/services.jar
```

2. Decompile it using apktool:

```
apktool d services.jar
```

3. Edit:

```
smali_classes*/com/android/server/wm/WindowState.smali
```

4. Modify the method:

```
.method isSecureLocked()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method
```

5. Rebuild:

```
apktool b services
```

6. Place the rebuilt jar in:

```
system/framework/services.jar
```

---

## Limitations

Some apps may still block screenshots using deeper protection mechanisms such as:

* DRM protected buffers
* Hardware secure layers
* MediaProjection detection

Examples include certain streaming apps.

---

## Disclaimer

This module modifies Android framework behavior. Use at your own risk. The author is not responsible for any damage or misuse.

---

## License

MIT License
