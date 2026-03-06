.class public Lcom/android/server/media/projection/FrameworkStatsLogWrapper;
.super Ljava/lang/Object;
.source "FrameworkStatsLogWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeStateChanged(IIIIIIIII)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "sessionId"    # I
    .param p3, "state"    # I
    .param p4, "previousState"    # I
    .param p5, "hostUid"    # I
    .param p6, "targetUid"    # I
    .param p7, "timeSinceLastActive"    # I
    .param p8, "creationSource"    # I
    .param p9, "stopSource"    # I

    .line 35
    invoke-static/range {p1 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIII)V

    .line 45
    return-void
.end method

.method public writeTargetChanged(IIIIIIIIIII)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "sessionId"    # I
    .param p3, "targetType"    # I
    .param p4, "hostUid"    # I
    .param p5, "targetUid"    # I
    .param p6, "windowingMode"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "centerX"    # I
    .param p10, "centerY"    # I
    .param p11, "targetChangeType"    # I

    .line 60
    invoke-static/range {p1 .. p11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    .line 72
    return-void
.end method
