.class public interface abstract Lcom/nothing/server/ext/INtPerfTraceManager;
.super Ljava/lang/Object;
.source "INtPerfTraceManager.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtPerfTraceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/nothing/server/ext/INtPerfTraceManager$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtPerfTraceManager$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtPerfTraceManager;->DEFAULT:Lcom/nothing/server/ext/INtPerfTraceManager;

    return-void
.end method


# virtual methods
.method public handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 26
    return-void
.end method

.method public initAutoTrace()V
    .locals 0

    .line 31
    return-void
.end method

.method public recordAnrTraceIfNeeded(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 28
    return-void
.end method

.method public recordStartTimeoutTraceIfNeeded(ILjava/lang/String;)V
    .locals 0
    .param p1, "drawTime"    # I
    .param p2, "packagName"    # Ljava/lang/String;

    .line 27
    return-void
.end method

.method public recordTombstoneTraceIfNeeded(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public recordWatchdog(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public registerTaskFpsCallback(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .line 32
    return-void
.end method

.method public startPerfTracing(Ljava/lang/String;I)V
    .locals 0
    .param p1, "traceType"    # Ljava/lang/String;
    .param p2, "startTrace"    # I

    .line 30
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    return-void
.end method
