.class public Lcom/android/server/sensors/NothSensorHelper;
.super Ljava/lang/Object;
.source "NothSensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;,
        Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_INVALID_VAR:I = -0x1

.field private static final BACKLIGHT_POLL_INTERVAL:I = 0x64

.field private static final CUSTOMER_CMD_SET_BACKLIGHT_STATE:I = 0x11174

.field private static final CUSTOMER_CMD_SET_BRIGHTNESS:I = 0x11171

.field private static final MSG_START_NOTIFY_BRIGHTNESS:I = 0x1

.field private static final SYS_BACKLIGHT_NODE:Ljava/lang/String; = "/sys/class/backlight/panel0-backlight/brightness"

.field private static final TAG:Ljava/lang/String; = "NothSensorHelper"

.field private static sInstance:Lcom/android/server/sensors/NothSensorHelper;


# instance fields
.field private DEBUG:Z

.field private mAmbientLightSensorActive:Z

.field private final mAmbientLightSensorActiveListener:Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBacklight:I

.field private mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

.field private final mNotifyBrightnessRunnable:Ljava/lang/Runnable;

.field private mNotifyDisplayInfoEnabled:Z

.field private final mNotifyScreenStateRunnable:Ljava/lang/Runnable;

.field private mScreenBrightnessModeSetting:I

.field private mScreenState:Z

.field private mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

.field private mSettingsObserver:Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetDEBUG(Lcom/android/server/sensors/NothSensorHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sensors/NothSensorHelper;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmbientLightSensorActive(Lcom/android/server/sensors/NothSensorHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sensors/NothSensorHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBacklight(Lcom/android/server/sensors/NothSensorHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mCurrentBacklight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNothSensorHelperHandler(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyBrightnessRunnable(Lcom/android/server/sensors/NothSensorHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyBrightnessRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyDisplayInfoEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/sensors/NothSensorHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenBrightnessModeSetting:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/sensors/NothSensorHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorExtensionImpl(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensorextension/INtSensorExtension;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/NothSensorHelper;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAmbientLightSensorActive(Lcom/android/server/sensors/NothSensorHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentBacklight(Lcom/android/server/sensors/NothSensorHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/sensors/NothSensorHelper;->mCurrentBacklight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyDisplayInfoEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenBrightnessModeSetting(Lcom/android/server/sensors/NothSensorHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenBrightnessModeSetting:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetScreenBacklight(Lcom/android/server/sensors/NothSensorHelper;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/sensors/NothSensorHelper;->getScreenBacklight()I

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .line 89
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    .line 70
    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/sensors/NothSensorHelper;->DEBUG:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyDisplayInfoEnabled:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActive:Z

    .line 117
    new-instance v1, Lcom/android/server/sensors/NothSensorHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/NothSensorHelper$1;-><init>(Lcom/android/server/sensors/NothSensorHelper;)V

    iput-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActiveListener:Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    .line 183
    new-instance v1, Lcom/android/server/sensors/NothSensorHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/NothSensorHelper$2;-><init>(Lcom/android/server/sensors/NothSensorHelper;)V

    iput-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyBrightnessRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v1, Lcom/android/server/sensors/NothSensorHelper$3;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/NothSensorHelper$3;-><init>(Lcom/android/server/sensors/NothSensorHelper;)V

    iput-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyScreenStateRunnable:Ljava/lang/Runnable;

    .line 91
    :try_start_0
    iput-object p1, p0, Lcom/android/server/sensors/NothSensorHelper;->mContext:Landroid/content/Context;

    .line 92
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_SENSOR_EXTENSION:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sensorextension/INtSensorExtension;

    iput-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "NothSensorHelper"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v3, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;-><init>(Lcom/android/server/sensors/NothSensorHelper;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/sensors/NothSensorHelper;->mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    .line 97
    new-instance v3, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/sensors/NothSensorHelper;->mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;-><init>(Lcom/android/server/sensors/NothSensorHelper;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/sensors/NothSensorHelper;->mSettingsObserver:Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;

    .line 98
    iget-object v3, p0, Lcom/android/server/sensors/NothSensorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 99
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sensors/NothSensorHelper;->mSettingsObserver:Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    const/4 v4, -0x2

    invoke-static {v3, v0, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenBrightnessModeSetting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "thread":Landroid/os/HandlerThread;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/sensors/NothSensorHelper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/sensors/NothSensorHelper;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/android/server/sensors/NothSensorHelper;->sInstance:Lcom/android/server/sensors/NothSensorHelper;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/android/server/sensors/NothSensorHelper;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/NothSensorHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/sensors/NothSensorHelper;->sInstance:Lcom/android/server/sensors/NothSensorHelper;

    goto :goto_0

    .line 110
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 114
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/sensors/NothSensorHelper;->sInstance:Lcom/android/server/sensors/NothSensorHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 110
    .end local p0    # "ctx":Landroid/content/Context;
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getScreenBacklight()I
    .locals 4

    .line 167
    const/4 v0, -0x1

    .line 169
    .local v0, "backlight":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/backlight/panel0-backlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "nodeString":Ljava/lang/String;
    const-string v2, "\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .end local v1    # "nodeString":Ljava/lang/String;
    .local v2, "nodeString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "backlight":I
    .end local v2    # "nodeString":Ljava/lang/String;
    .local v1, "backlight":I
    :goto_0
    goto :goto_3

    .line 175
    .end local v1    # "backlight":I
    .restart local v0    # "backlight":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 172
    :catch_1
    move-exception v1

    goto :goto_2

    .line 175
    :goto_1
    nop

    .line 176
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const/4 v0, -0x1

    move v1, v0

    goto :goto_3

    .line 172
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_2
    nop

    .line 173
    .local v1, "ioException":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    const/4 v1, -0x1

    .end local v0    # "backlight":I
    .local v1, "backlight":I
    goto :goto_0

    .line 180
    :goto_3
    return v1
.end method


# virtual methods
.method public getAmbientLightSensorActiveListener()Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActiveListener:Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    return-object v0
.end method

.method public notifyScreenState(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .line 143
    iget-boolean v0, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenState:Z

    if-eq p1, v0, :cond_2

    .line 144
    iput-boolean p1, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenState:Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyScreenState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " screen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenBrightnessModeSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NothSensorHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v0, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenState:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sensors/NothSensorHelper;->mCurrentBacklight:I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper;->mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyScreenStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "notifyDisplayInfoEnabled":Z
    iget-boolean v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mAmbientLightSensorActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mScreenState:Z

    if-eqz v1, :cond_1

    .line 155
    const/4 v0, 0x1

    .line 156
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNotifyDisplayInfoEnabled:Z

    if-eq v0, v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper;->mNothSensorHelperHandler:Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 159
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 160
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 161
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    .end local v0    # "notifyDisplayInfoEnabled":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
