.class Lcom/android/server/display/DisplayManagerService$Injector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDefaultDisplayDelayTimeout()J
    .locals 2

    .line 4045
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method getDisplayPowerController(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayPowerController;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/DisplayPowerController$Injector;
    .param p3, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p6, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p7, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;
    .param p8, "brightnessTracker"    # Lcom/android/server/display/BrightnessTracker;
    .param p9, "brightnessSetting"    # Lcom/android/server/display/BrightnessSetting;
    .param p10, "onBrightnessChangeRunnable"    # Ljava/lang/Runnable;
    .param p11, "hbmMetadata"    # Lcom/android/server/display/HighBrightnessModeMetadata;
    .param p12, "bootCompleted"    # Z
    .param p13, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 4083
    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object v0
.end method

.method getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .locals 1

    .line 4073
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    return-object v0
.end method

.method getHdrOutputConversionSupport()Z
    .locals 1

    .line 4064
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result v0

    return v0
.end method

.method getHdrOutputTypesWithLatency()[I
    .locals 1

    .line 4060
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputTypesWithLatency()[I

    move-result-object v0

    return-object v0
.end method

.method getLocalDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)Lcom/android/server/display/LocalDisplayAdapter;
    .locals 7
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "displayAdapterListener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p6, "displayNotificationManager"    # Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 4040
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "syncRoot":Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "displayAdapterListener":Lcom/android/server/display/DisplayAdapter$Listener;
    .end local p5    # "flags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .end local p6    # "displayNotificationManager":Lcom/android/server/display/notifications/DisplayNotificationManager;
    .local v1, "syncRoot":Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .local v2, "context":Landroid/content/Context;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "displayAdapterListener":Lcom/android/server/display/DisplayAdapter$Listener;
    .local v5, "flags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .local v6, "displayNotificationManager":Lcom/android/server/display/notifications/DisplayNotificationManager;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    return-object v0
.end method

.method getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 2

    .line 4068
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4069
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    return-object v1
.end method

.method getSupportedHdrOutputTypes()[I
    .locals 1

    .line 4056
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    return-object v0
.end method

.method getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/VirtualDisplayAdapter;
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "displayAdapterListener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 4032
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "syncRoot":Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "displayAdapterListener":Lcom/android/server/display/DisplayAdapter$Listener;
    .end local p5    # "flags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .local v1, "syncRoot":Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .local v2, "context":Landroid/content/Context;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "displayAdapterListener":Lcom/android/server/display/DisplayAdapter$Listener;
    .local v5, "flags":Lcom/android/server/display/feature/DisplayManagerFlags;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object v0
.end method

.method setHdrConversionMode(II[I)I
    .locals 1
    .param p1, "conversionMode"    # I
    .param p2, "preferredHdrOutputType"    # I
    .param p3, "allowedHdrOutputTypes"    # [I

    .line 4050
    invoke-static {p1, p2, p3}, Lcom/android/server/display/DisplayControl;->setHdrConversionMode(II[I)I

    move-result v0

    return v0
.end method
