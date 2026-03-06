.class public interface abstract Lcom/android/server/am/INtMemoryStatusReporter;
.super Ljava/lang/Object;
.source "INtMemoryStatusReporter.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/am/INtMemoryStatusReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/server/am/INtMemoryStatusReporter$1;

    invoke-direct {v0}, Lcom/android/server/am/INtMemoryStatusReporter$1;-><init>()V

    sput-object v0, Lcom/android/server/am/INtMemoryStatusReporter;->DEFAULT:Lcom/android/server/am/INtMemoryStatusReporter;

    return-void
.end method


# virtual methods
.method public checkLowMemory(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "dieApp"    # Lcom/android/server/am/ProcessRecord;

    .line 25
    return-void
.end method

.method public getAppColdTime(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "time"    # I

    .line 29
    return-void
.end method

.method public getBackgroundProcesses(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 28
    return-void
.end method

.method public silentKillSystemui()V
    .locals 0

    .line 26
    return-void
.end method

.method public systemReady(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 23
    return-void
.end method

.method public updateColdStart(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 27
    return-void
.end method

.method public updatePsi(I)V
    .locals 0
    .param p1, "pressure"    # I

    .line 24
    return-void
.end method
