.class public interface abstract Lcom/nothing/server/ext/INtBoostAdjuster;
.super Ljava/lang/Object;
.source "INtBoostAdjuster.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtBoostAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/nothing/server/ext/INtBoostAdjuster$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtBoostAdjuster$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtBoostAdjuster;->DEFAULT:Lcom/nothing/server/ext/INtBoostAdjuster;

    return-void
.end method


# virtual methods
.method public adjustCpusetCpus(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "cpus"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 29
    return-void
.end method

.method public animationBoost(IIJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "renderTid"    # I
    .param p3, "duration"    # J

    .line 30
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 26
    return-void
.end method

.method public enablePerformanceMode(I)V
    .locals 0
    .param p1, "enable"    # I

    .line 31
    return-void
.end method

.method public getProcessesAndFrozen(Ljava/lang/String;)V
    .locals 0
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 27
    return-void
.end method

.method public inputBoost()V
    .locals 0

    .line 34
    return-void
.end method

.method public onReportResumedActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortComponentName"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public scenarioBoost(ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "scenarioId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 35
    const/4 v0, -0x1

    return v0
.end method

.method public scenarioBoostRelease(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 36
    return-void
.end method

.method public setThreadAffinity(II)V
    .locals 0
    .param p1, "tid"    # I
    .param p2, "setAffinity"    # I

    .line 28
    return-void
.end method

.method public systemReady(Landroid/content/Context;Lcom/android/server/am/ProcessList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;

    .line 25
    return-void
.end method
