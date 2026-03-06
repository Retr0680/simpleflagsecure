.class public interface abstract Lcom/nothing/server/INtExtServiceFactory;
.super Ljava/lang/Object;
.source "INtExtServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/server/INtExtServiceFactory$ExtType;
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;
.end method

.method public abstract getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;
.end method

.method public injectActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 362
    return-void
.end method

.method public injectBatteryStatsDumpHelper(Landroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 0
    .param p1, "bbsdh"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 363
    return-void
.end method

.method public injectBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0
    .param p1, "bss"    # Lcom/android/server/am/BatteryStatsService;

    .line 366
    return-void
.end method

.method public injectPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 364
    return-void
.end method

.method public injectWindowManagerService(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 365
    return-void
.end method

.method public startOtherServices()V
    .locals 0

    .line 360
    return-void
.end method
