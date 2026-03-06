.class public interface abstract Lcom/android/server/am/INtMemoryManager;
.super Ljava/lang/Object;
.source "INtMemoryManager.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/am/INtMemoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/server/am/INtMemoryManager$1;

    invoke-direct {v0}, Lcom/android/server/am/INtMemoryManager$1;-><init>()V

    sput-object v0, Lcom/android/server/am/INtMemoryManager;->DEFAULT:Lcom/android/server/am/INtMemoryManager;

    return-void
.end method


# virtual methods
.method public boostCamera(Z)V
    .locals 0
    .param p1, "isColdStart"    # Z

    .line 30
    return-void
.end method

.method public getOptiAdjs()[I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 33
    const/4 v0, -0x1

    return v0
.end method

.method public isEnableOptHighUsed()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableOptHighUsed(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isEnablePreFork(I)Z
    .locals 1
    .param p1, "memoryLevel"    # I

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public loadProcessMemory(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public releaseMemoryAtScreenOn()V
    .locals 0

    .line 31
    return-void
.end method

.method public setForkProcAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 26
    return-void
.end method

.method public setHighPressureScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setOptAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 29
    return-void
.end method

.method public systemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "context"    # Landroid/content/Context;

    .line 25
    return-void
.end method

.method public tuneLmkdParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 37
    return-void
.end method
