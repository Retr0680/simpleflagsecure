.class public Lcom/android/server/wm/DeviceStateAutoRotateSettingController;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateAutoRotateSettingIssueLogger:Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceStateAutoRotateSettingIssueLogger"    # Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSettingIssueLogger:Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->registerDeviceStateAutoRotateSettingObserver()V

    .line 54
    return-void
.end method

.method private registerDeviceStateAutoRotateSettingObserver()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    const-string v1, "device_state_rotation_lock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;

    iget-object v3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Landroid/os/Handler;)V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onDeviceStateChange(Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 0
    .param p1, "deviceState"    # Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 58
    nop

    .line 61
    return-void
.end method
