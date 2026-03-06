.class public Lcom/android/server/am/OomAdjuster$Injector;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method batchSetOomAdj(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p1, "procsToOomAdj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-static {p1}, Lcom/android/server/am/ProcessList;->batchSetOomAdj(Ljava/util/ArrayList;)V

    .line 545
    return-void
.end method

.method batchSetOomAdjExt(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 548
    .local p1, "procsToOomAdj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-static {p1}, Lcom/android/server/am/ProcessList;->batchSetOomAdjExt(Ljava/util/ArrayList;)V

    .line 549
    return-void
.end method

.method getElapsedRealtimeMillis()J
    .locals 2

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getUptimeMillis()J
    .locals 2

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 1
    .param p1, "cachedCompatChangeId"    # I
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "defaultValue"    # Z

    .line 531
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 532
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    .line 531
    return v0
.end method

.method setOomAdj(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "adj"    # I

    .line 552
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 553
    return-void
.end method

.method setOomAdjExt(IIIII)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "adj"    # I
    .param p4, "isSystemApp"    # I
    .param p5, "isMainProc"    # I

    .line 556
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ProcessList;->setOomAdjExt(IIIII)V

    .line 557
    return-void
.end method

.method setThreadPriority(II)V
    .locals 0
    .param p1, "tid"    # I
    .param p2, "priority"    # I

    .line 560
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 561
    return-void
.end method
