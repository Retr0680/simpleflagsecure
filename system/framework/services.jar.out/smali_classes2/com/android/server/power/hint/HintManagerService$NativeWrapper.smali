.class public Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCloseHintSession(J)V
.end method

.method private static native nativeCreateHintSession(II[IJ)J
.end method

.method private static native nativeCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J
.end method

.method private static native nativeGetHintSessionPreferredRate()J
.end method

.method private native nativeInit()V
.end method

.method private static native nativePauseHintSession(J)V
.end method

.method private static native nativeReportActualWorkDuration(J[J[J)V
.end method

.method private static native nativeReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V
.end method

.method private static native nativeResumeHintSession(J)V
.end method

.method private static native nativeSendHint(JI)V
.end method

.method private static native nativeSetMode(JIZ)V
.end method

.method private static native nativeSetThreads(J[I)V
.end method

.method private static native nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public halCloseHintSession(J)V
    .locals 0
    .param p1, "halPtr"    # J

    .line 841
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCloseHintSession(J)V

    .line 842
    return-void
.end method

.method public halCreateHintSession(II[IJ)J
    .locals 2
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "tids"    # [I
    .param p4, "durationNanos"    # J

    .line 820
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSession(II[IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J
    .locals 2
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "tids"    # [I
    .param p4, "durationNanos"    # J
    .param p6, "tag"    # I
    .param p7, "config"    # Landroid/hardware/power/SessionConfig;

    .line 826
    invoke-static/range {p1 .. p7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    move-result-wide v0

    return-wide v0
.end method

.method public halGetHintSessionPreferredRate()J
    .locals 2

    .line 815
    invoke-static {}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeGetHintSessionPreferredRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public halInit()V
    .locals 0

    .line 810
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeInit()V

    .line 811
    return-void
.end method

.method public halPauseHintSession(J)V
    .locals 0
    .param p1, "halPtr"    # J

    .line 831
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativePauseHintSession(J)V

    .line 832
    return-void
.end method

.method public halReportActualWorkDuration(J[J[J)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "actualDurationNanos"    # [J
    .param p4, "timeStampNanos"    # [J

    .line 852
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[J[J)V

    .line 854
    return-void
.end method

.method public halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "workDurations"    # [Landroid/hardware/power/WorkDuration;

    .line 873
    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    .line 874
    return-void
.end method

.method public halResumeHintSession(J)V
    .locals 0
    .param p1, "halPtr"    # J

    .line 836
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeResumeHintSession(J)V

    .line 837
    return-void
.end method

.method public halSendHint(JI)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "hint"    # I

    .line 858
    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSendHint(JI)V

    .line 859
    return-void
.end method

.method public halSetMode(JIZ)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "mode"    # I
    .param p4, "enabled"    # Z

    .line 868
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSetMode(JIZ)V

    .line 869
    return-void
.end method

.method public halSetThreads(J[I)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "tids"    # [I

    .line 863
    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSetThreads(J[I)V

    .line 864
    return-void
.end method

.method public halUpdateTargetWorkDuration(JJ)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "targetDurationNanos"    # J

    .line 846
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeUpdateTargetWorkDuration(JJ)V

    .line 847
    return-void
.end method
