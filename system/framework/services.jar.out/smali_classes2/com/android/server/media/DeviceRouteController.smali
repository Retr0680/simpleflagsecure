.class interface abstract Lcom/android/server/media/DeviceRouteController;
.super Ljava/lang/Object;
.source "DeviceRouteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;
    }
.end annotation


# direct methods
.method public static createInstance(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)Lcom/android/server/media/DeviceRouteController;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "onDeviceRouteChangedListener"    # Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    .line 54
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 55
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/server/media/AudioRoutingUtils;->getMediaAudioProductStrategy()Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v1

    .line 57
    .local v1, "strategyForMedia":Landroid/media/audiopolicy/AudioProductStrategy;
    const-class v2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 59
    .local v2, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 65
    .local v3, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 67
    nop

    .line 68
    nop

    .line 69
    invoke-static {p0, v0, p1, v1, v3}, Lcom/android/server/media/AudioManagerRouteController;->getInstance(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)Lcom/android/server/media/AudioManagerRouteController;

    move-result-object v4

    .line 71
    .local v4, "controller":Lcom/android/server/media/AudioManagerRouteController;
    invoke-virtual {v4, p2}, Lcom/android/server/media/AudioManagerRouteController;->registerRouteChangeListener(Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V

    .line 72
    return-object v4

    .line 74
    .end local v4    # "controller":Lcom/android/server/media/AudioManagerRouteController;
    :cond_1
    nop

    .line 76
    const-string v4, "audio"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 75
    invoke-static {v4}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4

    .line 77
    .local v4, "audioService":Landroid/media/IAudioService;
    new-instance v5, Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {v5, p0, v0, v4, p2}, Lcom/android/server/media/LegacyDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V

    return-object v5
.end method

.method public static getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    nop

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    const v1, 0x10e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 96
    .local v0, "availabilityStatus":I
    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v1, 0x0

    return v1

    .line 100
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract getAvailableRoutes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolume(I)Z
.end method
