.class Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDataAdvancedProtectionHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;


# direct methods
.method public static synthetic $r8$lambda$IpkQrIvwQabk52ZOno8Oi1LFTso(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->lambda$updateDelayedDisableTask$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private dumpUsbDevices()V
    .locals 8

    .line 191
    const-string v0, "dumpUsbDevices: "

    const-string v1, "AdvancedProtectionUsb"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmUsbManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 193
    .local v0, "portStatusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 194
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v3    # "device":Landroid/hardware/usb/UsbDevice;
    goto :goto_0

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmUsbManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v2

    .line 197
    .local v2, "accessoryList":[Landroid/hardware/usb/UsbAccessory;
    if-eqz v2, :cond_1

    .line 198
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    nop

    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 199
    .local v5, "accessory":Landroid/hardware/usb/UsbAccessory;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Accessory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v5    # "accessory":Landroid/hardware/usb/UsbAccessory;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :cond_1
    return-void
.end method

.method private synthetic lambda$updateDelayedDisableTask$0()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V

    .line 175
    :cond_0
    return-void
.end method

.method private updateDelayedDisableTask(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->usbPortIsConnectedAndDataEnabled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_1
    :goto_0
    return-void
.end method

.method private usbPortIsConnectedAndDataEnabled(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 180
    const-class v0, Landroid/hardware/usb/UsbPortStatus;

    .line 181
    const-string/jumbo v1, "portStatus"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPortStatus;

    .line 183
    .local v0, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 142
    :try_start_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    goto :goto_1

    .line 147
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V

    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->dumpUsbDevices()V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->updateDelayedDisableTask(Landroid/content/Intent;)V

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msendNotificationIfDeviceLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_4
    :goto_0
    goto :goto_2

    .line 161
    :goto_1
    nop

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB Data protection failed with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdvancedProtectionUsb"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
