.class public interface abstract Lcom/android/server/sensorextension/INtSensorMonitor;
.super Ljava/lang/Object;
.source "INtSensorMonitor.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/sensorextension/INtSensorMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/server/sensorextension/INtSensorMonitor$1;

    invoke-direct {v0}, Lcom/android/server/sensorextension/INtSensorMonitor$1;-><init>()V

    sput-object v0, Lcom/android/server/sensorextension/INtSensorMonitor;->DEFAULT:Lcom/android/server/sensorextension/INtSensorMonitor;

    return-void
.end method


# virtual methods
.method public acquireProximityScreenOffWakeLock(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public getProximitySensorPositiveDebounceTime()I
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    return-void
.end method

.method public isProximitySensorPositiveDebounceMoreTime()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public releaseProximityScreenOffWakeLock(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "releaseAll"    # Z

    .line 23
    return-void
.end method
