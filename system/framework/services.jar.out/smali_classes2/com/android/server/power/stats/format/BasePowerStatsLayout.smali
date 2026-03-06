.class public Lcom/android/server/power/stats/format/BasePowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "BasePowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_BATTERY_DISCHARGE:Ljava/lang/String; = "d-bd"

.field private static final EXTRA_DEVICE_BATTERY_DISCHARGE_DURATION:Ljava/lang/String; = "d-bdd"

.field private static final EXTRA_DEVICE_BATTERY_DISCHARGE_PCT:Ljava/lang/String; = "d-bdp"


# instance fields
.field private final mDeviceBatteryDischargeDurationPosition:I

.field private final mDeviceBatteryDischargePercentPosition:I

.field private final mDeviceBatteryDischargePosition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionUsageDuration()V

    .line 35
    const-string v0, "discharge"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    .line 37
    const-string v0, "discharge-pct"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    .line 39
    const-string v0, "discharge-duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 44
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 45
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "d-bd"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    .line 46
    const-string v1, "d-bdp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    .line 47
    nop

    .line 48
    const-string v1, "d-bdd"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    .line 49
    return-void
.end method


# virtual methods
.method public addBatteryDischargeDuration([JJ)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "durationMs"    # J

    .line 96
    iget v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    aget-wide v1, p1, v0

    add-long/2addr v1, p2

    aput-wide v1, p1, v0

    .line 97
    return-void
.end method

.method public addBatteryDischargePercent([JI)V
    .locals 7
    .param p1, "stats"    # [J
    .param p2, "dischargePct"    # I

    .line 81
    iget v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    aget-wide v1, p1, v0

    int-to-long v3, p2

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 82
    return-void
.end method

.method public addBatteryDischargeUah([JJ)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "dischargeUah"    # J

    .line 66
    iget v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    aget-wide v1, p1, v0

    add-long/2addr v1, p2

    aput-wide v1, p1, v0

    .line 67
    return-void
.end method

.method public getBatteryDischargeDuration([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 103
    iget v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    aget-wide v0, p1, v0

    long-to-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getBatteryDischargePercent([J)D
    .locals 4
    .param p1, "stats"    # [J

    .line 89
    iget v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    aget-wide v0, p1, v0

    long-to-int v0, v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryDischargeUah([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 73
    iget v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 56
    const-string v0, "d-bd"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v0, "d-bdp"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v0, "d-bdd"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    return-void
.end method
