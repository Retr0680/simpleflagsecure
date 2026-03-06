.class public Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingIssueLogger.java"


# static fields
.field static final DEVICE_STATE_AUTO_ROTATE_SETTING_ISSUE_THRESHOLD_MILLIS:J = 0x5dcL

.field private static final TIME_NOT_SET:J = -0x1L


# instance fields
.field private final mElapsedTimeMillisSupplier:Ljava/util/function/LongSupplier;

.field private mLastDeviceStateAutoRotateSettingChangeTime:J

.field private mLastDeviceStateChangeTime:J


# direct methods
.method public constructor <init>(Ljava/util/function/LongSupplier;)V
    .locals 2
    .param p1, "elapsedTimeMillisSupplier"    # Ljava/util/function/LongSupplier;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateChangeTime:J

    .line 54
    iput-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateAutoRotateSettingChangeTime:J

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mElapsedTimeMillisSupplier:Ljava/util/function/LongSupplier;

    .line 60
    return-void
.end method

.method private onStateChange()V
    .locals 7

    .line 76
    iget-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateChangeTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateAutoRotateSettingChangeTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 80
    :cond_1
    iget-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateAutoRotateSettingChangeTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateChangeTime:J

    sub-long/2addr v0, v4

    .line 82
    .local v0, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 84
    .local v4, "isDeviceStateChangeFirst":Z
    :goto_0
    long-to-float v5, v0

    invoke-static {v5}, Landroid/util/MathUtils;->abs(F)F

    move-result v5

    const v6, 0x44bb8000    # 1500.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 86
    long-to-float v5, v0

    .line 88
    invoke-static {v5}, Landroid/util/MathUtils;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 86
    const/16 v6, 0x3f3

    invoke-static {v6, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 92
    iput-wide v2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateAutoRotateSettingChangeTime:J

    .line 93
    iput-wide v2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateChangeTime:J

    goto :goto_1

    .line 96
    :cond_3
    if-eqz v4, :cond_4

    .line 97
    iput-wide v2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateChangeTime:J

    goto :goto_1

    .line 99
    :cond_4
    iput-wide v2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateAutoRotateSettingChangeTime:J

    .line 103
    :goto_1
    return-void

    .line 78
    .end local v0    # "duration":J
    .end local v4    # "isDeviceStateChangeFirst":Z
    :goto_2
    return-void
.end method


# virtual methods
.method public onDeviceStateAutoRotateSettingChange()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mElapsedTimeMillisSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateAutoRotateSettingChangeTime:J

    .line 71
    invoke-direct {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->onStateChange()V

    .line 72
    return-void
.end method

.method public onDeviceStateChange()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mElapsedTimeMillisSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->mLastDeviceStateChangeTime:J

    .line 65
    invoke-direct {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingIssueLogger;->onStateChange()V

    .line 66
    return-void
.end method
