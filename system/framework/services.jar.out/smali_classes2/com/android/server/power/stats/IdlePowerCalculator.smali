.class public Lcom/android/server/power/stats/IdlePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "IdlePowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IdlePowerCalculator"


# instance fields
.field private final mAveragePowerCpuIdleMahPerUs:D

.field private final mAveragePowerCpuSuspendMahPerUs:D

.field public mDurationMs:J

.field public mPowerMah:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 38
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 39
    nop

    .line 40
    const-string v0, "cpu.suspend"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    .line 42
    nop

    .line 43
    const-string v0, "cpu.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    .line 45
    return-void
.end method

.method private calculatePowerAndDuration(Landroid/os/BatteryStats;JJI)V
    .locals 14
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "rawUptimeUs"    # J
    .param p6, "statsType"    # I

    .line 72
    move-object v0, p1

    move/from16 v1, p6

    move-wide/from16 v2, p2

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    .line 73
    .local v4, "batteryRealtimeUs":J
    move-wide/from16 v6, p4

    invoke-virtual {p1, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v8

    .line 79
    .local v8, "batteryUptimeUs":J
    long-to-double v10, v4

    iget-wide v12, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    mul-double/2addr v10, v12

    .line 80
    .local v10, "suspendPowerMah":D
    long-to-double v12, v8

    iget-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    mul-double/2addr v12, v0

    .line 81
    .local v12, "idlePowerMah":D
    add-double v0, v10, v12

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    .line 88
    const-wide/16 v0, 0x3e8

    div-long v0, v4, v0

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    .line 89
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 55
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .end local p2    # "batteryStats":Landroid/os/BatteryStats;
    .end local p3    # "rawRealtimeUs":J
    .end local p5    # "rawUptimeUs":J
    .local v1, "batteryStats":Landroid/os/BatteryStats;
    .local v2, "rawRealtimeUs":J
    .local v4, "rawUptimeUs":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/IdlePowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats;JJI)V

    .line 57
    iget-wide p2, v0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const-wide/16 p4, 0x0

    cmpl-double p2, p2, p4

    if-eqz p2, :cond_0

    .line 58
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p2

    iget-wide p3, v0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    .line 60
    const/16 p5, 0x10

    invoke-virtual {p2, p5, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p2

    check-cast p2, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p3, v0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    .line 61
    invoke-virtual {p2, p5, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 63
    :cond_0
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 49
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
