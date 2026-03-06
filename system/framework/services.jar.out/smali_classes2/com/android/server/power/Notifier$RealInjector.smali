.class Lcom/android/server/power/Notifier$RealInjector;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/android/server/power/Notifier$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealInjector"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 1623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1633
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
    .locals 1

    .line 1638
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    return-object v0
.end method

.method public getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;
    .locals 1

    .line 1643
    new-instance v0, Lcom/android/server/power/FrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/power/FrameworkStatsLogger;-><init>()V

    return-object v0
.end method

.method public getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1628
    new-instance v0, Lcom/android/server/power/WakeLockLog;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
