.class public interface abstract Lcom/nothing/server/ext/INtExService;
.super Ljava/lang/Object;
.source "INtExService.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtExService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/nothing/server/ext/INtExService$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtExService$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtExService;->DEFAULT:Lcom/nothing/server/ext/INtExService;

    return-void
.end method


# virtual methods
.method public getFlingSceneId(I)I
    .locals 1
    .param p1, "flingSceneType"    # I

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 50
    return-void
.end method

.method public inputBoost()V
    .locals 0

    .line 52
    return-void
.end method

.method public isCtsRunning()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isSceneIdExist(I)Z
    .locals 1
    .param p1, "sceneId"    # I

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public needBatteryRestrict(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 37
    return-void
.end method

.method public noteScreenState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 38
    return-void
.end method

.method public onDisplayFocusWindowChange(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 58
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;ILandroid/content/pm/SigningInfo;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "signingInfo"    # Landroid/content/pm/SigningInfo;

    .line 40
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 41
    return-void
.end method

.method public onProfileRemoved(IILjava/lang/String;)V
    .locals 0
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I
    .param p3, "userType"    # Ljava/lang/String;

    .line 45
    return-void
.end method

.method public onReportResumedActivity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortComponentName"    # Ljava/lang/String;

    .line 56
    return-void
.end method

.method public randomSampling(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0
    .param p1, "batteryStatsImpl"    # Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 39
    return-void
.end method

.method public recordBatteryLevelSteps(Landroid/os/BatteryStats$LevelStepTracker;Landroid/os/BatteryStats$LevelStepTracker;)V
    .locals 0
    .param p1, "charge"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p2, "discharge"    # Landroid/os/BatteryStats$LevelStepTracker;

    .line 36
    return-void
.end method

.method public sceneBoostAcquire(ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "sceneId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 48
    const/4 v0, -0x1

    return v0
.end method

.method public sceneBoostRelease(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 49
    return-void
.end method

.method public systemReady(Landroid/content/Context;Lcom/android/server/am/ProcessList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;

    .line 51
    return-void
.end method
