.class public interface abstract Lcom/android/server/am/INtAmDebugHelper;
.super Ljava/lang/Object;
.source "INtAmDebugHelper.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/am/INtAmDebugHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/am/INtAmDebugHelper$1;

    invoke-direct {v0}, Lcom/android/server/am/INtAmDebugHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/am/INtAmDebugHelper;->DEFAULT:Lcom/android/server/am/INtAmDebugHelper;

    return-void
.end method


# virtual methods
.method public dumpBroadcastsLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 35
    return-void
.end method

.method public dumpIfWdt()V
    .locals 0

    .line 37
    return-void
.end method

.method public enableDynamicLog(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public handleTombstoneForDebug(Ljava/io/File;)V
    .locals 0
    .param p1, "tombstonePath"    # Ljava/io/File;

    .line 41
    return-void
.end method

.method public recordExceedReceivers(Lcom/android/server/am/ProcessReceiverRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/am/ProcessReceiverRecord;

    .line 34
    return-void
.end method

.method public skipCheckShellCommandUid([Ljava/lang/String;)Z
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public startPreDump(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public startPreDump(ILjava/lang/String;Landroid/app/IApplicationThread;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appThread"    # Landroid/app/IApplicationThread;

    .line 39
    return-void
.end method

.method public waitFor(ILjava/util/UUID;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "errorId"    # Ljava/util/UUID;

    .line 40
    return-void
.end method
