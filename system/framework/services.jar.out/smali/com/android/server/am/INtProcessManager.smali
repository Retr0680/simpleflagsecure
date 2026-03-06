.class public interface abstract Lcom/android/server/am/INtProcessManager;
.super Ljava/lang/Object;
.source "INtProcessManager.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/am/INtProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/server/am/INtProcessManager$1;

    invoke-direct {v0}, Lcom/android/server/am/INtProcessManager$1;-><init>()V

    sput-object v0, Lcom/android/server/am/INtProcessManager;->DEFAULT:Lcom/android/server/am/INtProcessManager;

    return-void
.end method


# virtual methods
.method public checkDelayRestartService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ServiceRecord;)Z
    .locals 1
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getDelayRestartDuration(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ServiceRecord;)J
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 24
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    return-wide v0
.end method

.method public systemReady(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 23
    return-void
.end method

.method public updateTopApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "topPackageName"    # Ljava/lang/String;

    .line 26
    return-void
.end method
