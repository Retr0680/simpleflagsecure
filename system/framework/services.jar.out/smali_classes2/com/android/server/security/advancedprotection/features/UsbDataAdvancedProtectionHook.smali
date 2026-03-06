.class public Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "UsbDataAdvancedProtectionHook.java"


# static fields
.field private static final APM_USB_FEATURE_CHANNEL_ID:I = 0x1

.field private static final APM_USB_FEATURE_NOTIF_CHANNEL:Ljava/lang/String; = "APM_USB_SERVICE_NOTIF_CHANNEL"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "BackgroundInstallUiNotificationChannel"

.field private static final DELAY_DISABLE_MS:I = 0x3e8

.field private static final OS_USB_DISABLE_REASON_LOCKDOWN_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdvancedProtectionUsb"


# instance fields
.field private mBroadcastReceiverIsRegistered:Z

.field private final mContext:Landroid/content/Context;

.field private final mDelayedDisableHandler:Landroid/os/Handler;

.field private mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

.field private mInitialPlugInNotificationSent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

.field private mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedDisableHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsbManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendNotificationIfDeviceLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->sendNotificationIfDeviceLocked(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->setUsbDataSignalIfPossible(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedDisableHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mInitialPlugInNotificationSent:Z

    .line 94
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 96
    const-class v0, Landroid/hardware/usb/IUsbManagerInternal;

    .line 97
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbManagerInternal;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    .line 99
    return-void
.end method

.method private canSetUsbDataSignal()Z
    .locals 2

    .line 305
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB_HAL_VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getUsbHalVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedProtectionUsb"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getUsbHalVersion()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private deviceHaveUsbDataConnection()Z
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 267
    .local v1, "usbPort":Landroid/hardware/usb/UsbPort;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 268
    nop

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbDataSignal: false, Port status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 271
    const-string/jumbo v2, "null"

    goto :goto_1

    .line 272
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    :goto_1
    const-string v3, "AdvancedProtectionUsb"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->usbPortIsConnectedWithDataEnabled(Landroid/hardware/usb/UsbPort;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_2
    nop

    .line 277
    .end local v1    # "usbPort":Landroid/hardware/usb/UsbPort;
    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private initialize()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 136
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->initializeNotifications()V

    .line 137
    new-instance v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    return-void
.end method

.method private initializeNotifications()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    .line 208
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "APM_USB_SERVICE_NOTIF_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "BackgroundInstallUiNotificationChannel"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 214
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 216
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 289
    .local v4, "filter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 290
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    .line 297
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const-string v2, "APM_USB_SERVICE_NOTIF_CHANNEL"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    const v1, 0x10805ce

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 223
    invoke-virtual {v1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 224
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 226
    .local v0, "notif":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "AdvancedProtectionUsb"

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 227
    return-void
.end method

.method private sendNotificationIfDeviceLocked(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 230
    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mInitialPlugInNotificationSent:Z

    if-nez v0, :cond_0

    .line 231
    const-class v0, Landroid/hardware/usb/UsbPortStatus;

    .line 232
    const-string/jumbo v1, "portStatus"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPortStatus;

    .line 233
    .local v0, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->usbPortIsConnectedWithDataDisabled(Landroid/hardware/usb/UsbPortStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 236
    const v2, 0x1040a64

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 238
    const v3, 0x1040a63

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-direct {p0, v1, v2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mInitialPlugInNotificationSent:Z

    .line 243
    .end local v0    # "portStatus":Landroid/hardware/usb/UsbPortStatus;
    :cond_0
    return-void
.end method

.method private setUsbDataSignalIfPossible(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 252
    const-string v0, "AdvancedProtectionUsb"

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->deviceHaveUsbDataConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/hardware/usb/IUsbManagerInternal;->enableUsbDataSignal(ZI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    const-string v1, "USB Data protection toggle failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    goto :goto_1

    .line 262
    :cond_1
    :goto_0
    goto :goto_2

    .line 260
    :goto_1
    nop

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException thrown when calling enableUsbDataSignal"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    .line 302
    return-void
.end method

.method private usbPortIsConnectedWithDataDisabled(Landroid/hardware/usb/UsbPortStatus;)Z
    .locals 2
    .param p1, "portStatus"    # Landroid/hardware/usb/UsbPortStatus;

    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0
.end method

.method private usbPortIsConnectedWithDataEnabled(Landroid/hardware/usb/UsbPort;)Z
    .locals 1
    .param p1, "usbPort"    # Landroid/hardware/usb/UsbPort;

    .line 282
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0
.end method


# virtual methods
.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->canSetUsbDataSignal()Z

    move-result v0

    return v0
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->isAvailable()Z

    move-result v0

    const-string v1, "AdvancedProtectionUsb"

    if-nez v0, :cond_0

    .line 114
    const-string v0, "AAPM USB data protection feature is disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvancedProtectionChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p1, :cond_2

    .line 119
    const-string/jumbo v0, "onAdvancedProtectionChanged: enabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->initialize()V

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    if-nez v0, :cond_4

    .line 124
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->registerReceiver()V

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->unregisterReceiver()V

    .line 130
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->setUsbDataSignalIfPossible(Z)V

    .line 132
    :cond_4
    :goto_0
    return-void
.end method
