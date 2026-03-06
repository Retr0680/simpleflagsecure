.class public Lcom/android/server/power/FrameworkStatsLogger;
.super Ljava/lang/Object;
.source "FrameworkStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .locals 8
    .param p1, "ownerUid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "powerManagerWakeLockLevel"    # I
    .param p4, "eventType"    # Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    .line 33
    sget-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    if-ne p4, v0, :cond_0

    .line 34
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 36
    .local v6, "event":I
    const/4 v3, 0x0

    const/16 v7, 0x3e7

    const/16 v1, 0xa

    move v2, p1

    move-object v5, p2

    move v4, p3

    .end local p1    # "ownerUid":I
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "powerManagerWakeLockLevel":I
    .local v2, "ownerUid":I
    .local v4, "powerManagerWakeLockLevel":I
    .local v5, "tag":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;ILjava/lang/String;II)V

    .line 44
    return-void
.end method

.method public wakelockStateChanged(Ljava/lang/String;Landroid/os/WorkSource$WorkChain;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "wc"    # Landroid/os/WorkSource$WorkChain;
    .param p3, "powerManagerWakeLockLevel"    # I
    .param p4, "eventType"    # Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    .line 50
    sget-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    if-ne p4, v0, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 53
    .local v6, "event":I
    nop

    .line 55
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v3

    .line 53
    const/16 v1, 0xa

    const/16 v7, 0x3e7

    move-object v5, p1

    move v4, p3

    .end local p1    # "tag":Ljava/lang/String;
    .end local p3    # "powerManagerWakeLockLevel":I
    .local v4, "powerManagerWakeLockLevel":I
    .local v5, "tag":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;II)V

    .line 61
    return-void
.end method
