.class public Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameworkStatsLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batteryLevelChanged(I)V
    .locals 1
    .param p1, "level"    # I

    .line 2135
    const/16 v0, 0x1e

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2136
    return-void
.end method

.method public batterySaverModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 2112
    nop

    .line 2113
    if-eqz p1, :cond_0

    .line 2114
    const/4 v0, 0x1

    goto :goto_0

    .line 2115
    :cond_0
    const/4 v0, 0x0

    .line 2112
    :goto_0
    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2116
    return-void
.end method

.method public chargingStateChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .line 2127
    const/16 v0, 0x1f

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2128
    return-void
.end method

.method public deviceIdleModeStateChanged(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2123
    const/16 v0, 0x15

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2124
    return-void
.end method

.method public deviceIdlingModeStateChanged(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2119
    const/16 v0, 0x16

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2120
    return-void
.end method

.method public gpsScanStateChanged(ILandroid/os/WorkSource$WorkChain;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "workChain"    # Landroid/os/WorkSource$WorkChain;
    .param p3, "stateOn"    # Z

    .line 2099
    if-eqz p3, :cond_0

    .line 2100
    const/4 v0, 0x1

    goto :goto_0

    .line 2101
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2102
    .local v0, "event":I
    const/4 v1, 0x6

    if-eqz p2, :cond_1

    .line 2103
    nop

    .line 2104
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v3

    .line 2103
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;I)V

    goto :goto_1

    .line 2106
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 2109
    :goto_1
    return-void
.end method

.method public kernelWakeupReported(JLjava/lang/String;J)V
    .locals 6
    .param p1, "deltaUptimeUs"    # J
    .param p3, "lastWakeupReason"    # Ljava/lang/String;
    .param p4, "lastWakeupElapsedTimeMs"    # J

    .line 2094
    const/16 v0, 0x24

    move-wide v2, p1

    move-object v1, p3

    move-wide v4, p4

    .end local p1    # "deltaUptimeUs":J
    .end local p3    # "lastWakeupReason":Ljava/lang/String;
    .end local p4    # "lastWakeupElapsedTimeMs":J
    .local v1, "lastWakeupReason":Ljava/lang/String;
    .local v2, "deltaUptimeUs":J
    .local v4, "lastWakeupElapsedTimeMs":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJ)V

    .line 2096
    return-void
.end method

.method public phoneServiceStateChanged(III)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "simState"    # I
    .param p3, "strengthBin"    # I

    .line 2139
    const/16 v0, 0x5e

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 2141
    return-void
.end method

.method public phoneSignalStrengthChanged(I)V
    .locals 1
    .param p1, "strengthBin"    # I

    .line 2144
    const/16 v0, 0x28

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2146
    return-void
.end method

.method public pluggedStateChanged(I)V
    .locals 1
    .param p1, "plugType"    # I

    .line 2131
    const/16 v0, 0x20

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 2132
    return-void
.end method

.method public uidProcessStateChanged(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 2074
    nop

    .line 2075
    invoke-static {p2}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v0

    .line 2074
    const/16 v1, 0x1b

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 2076
    return-void
.end method

.method public wakelockStateChanged(ILandroid/os/WorkSource$WorkChain;Ljava/lang/String;IZI)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "wc"    # Landroid/os/WorkSource$WorkChain;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "procState"    # I
    .param p5, "acquired"    # Z
    .param p6, "powerManagerWakeLockLevel"    # I

    .line 2080
    if-eqz p5, :cond_0

    .line 2081
    const/4 v0, 0x1

    goto :goto_0

    .line 2082
    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 2083
    .local v6, "event":I
    if-eqz p2, :cond_1

    .line 2084
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v2

    .line 2085
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v3

    .line 2084
    const/16 v1, 0xa

    move-object v5, p3

    move v7, p4

    move v4, p6

    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "procState":I
    .end local p6    # "powerManagerWakeLockLevel":I
    .local v4, "powerManagerWakeLockLevel":I
    .local v5, "name":Ljava/lang/String;
    .local v7, "procState":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;II)V

    move v2, p1

    goto :goto_1

    .line 2087
    .end local v4    # "powerManagerWakeLockLevel":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "procState":I
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "procState":I
    .restart local p6    # "powerManagerWakeLockLevel":I
    :cond_1
    move-object v5, p3

    move v7, p4

    move v4, p6

    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "procState":I
    .end local p6    # "powerManagerWakeLockLevel":I
    .restart local v4    # "powerManagerWakeLockLevel":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "procState":I
    const/16 v1, 0xa

    const/4 v3, 0x0

    move v2, p1

    .end local p1    # "uid":I
    .local v2, "uid":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;ILjava/lang/String;II)V

    .line 2090
    :goto_1
    return-void
.end method

.method public writeCommitSysConfigFile(Ljava/lang/String;J)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "durationMs"    # J

    .line 2152
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    .line 2154
    return-void
.end method
