.class public interface abstract Lcom/android/server/charge/INtCharge;
.super Ljava/lang/Object;
.source "INtCharge.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/charge/INtCharge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/server/charge/INtCharge$1;

    invoke-direct {v0}, Lcom/android/server/charge/INtCharge$1;-><init>()V

    sput-object v0, Lcom/android/server/charge/INtCharge;->DEFAULT:Lcom/android/server/charge/INtCharge;

    return-void
.end method


# virtual methods
.method public mGetNtData(I)I
    .locals 1
    .param p1, "Type"    # I

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public mNtLightOnSystemReady()V
    .locals 0

    .line 29
    return-void
.end method

.method public mNtLightUpdateChargeLightsLocked(ZIZ)V
    .locals 0
    .param p1, "charging"    # Z
    .param p2, "batteryLevel"    # I
    .param p3, "reOpen"    # Z

    .line 31
    return-void
.end method

.method public mNtLightregisterSensorListener(I)V
    .locals 0
    .param p1, "plugType"    # I

    .line 32
    return-void
.end method

.method public mReverseChargeTimerThreadUpdateStateIfNeed()V
    .locals 0

    .line 30
    return-void
.end method

.method public nTsendGoToSleepThermalCtrl()V
    .locals 0

    .line 28
    return-void
.end method

.method public ntGetScreenThermalConfig()V
    .locals 0

    .line 26
    return-void
.end method

.method public ntTrackingData(Landroid/hardware/health/HealthInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "tempHealthInfo"    # Landroid/hardware/health/HealthInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 25
    return-void
.end method

.method public registerSensorListener(I)V
    .locals 0
    .param p1, "plugType"    # I

    .line 24
    return-void
.end method

.method public reverseChargeOnSystemReady()V
    .locals 0

    .line 21
    return-void
.end method

.method public sendWakeUpThermalCtrl()V
    .locals 0

    .line 27
    return-void
.end method

.method public uPdateStatus(Landroid/hardware/health/HealthInfo;)V
    .locals 0
    .param p1, "tempHealthInfo"    # Landroid/hardware/health/HealthInfo;

    .line 22
    return-void
.end method

.method public updateChargeLightsLocked(ZIZ)V
    .locals 0
    .param p1, "charging"    # Z
    .param p2, "batteryLevel"    # I
    .param p3, "reOpen"    # Z

    .line 23
    return-void
.end method
