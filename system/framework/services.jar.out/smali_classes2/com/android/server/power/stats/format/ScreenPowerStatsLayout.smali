.class public Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "ScreenPowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_BRIGHTNESS_DURATION_POSITIONS:Ljava/lang/String; = "dbds"

.field private static final EXTRA_DEVICE_BRIGHTNESS_DURATION_POSITIONS_COMPAT:Ljava/lang/String; = "dbd"

.field private static final EXTRA_DEVICE_DOZE_DURATION_POSITION:Ljava/lang/String; = "ddd"

.field private static final EXTRA_DEVICE_DOZE_POWER_POSITION:Ljava/lang/String; = "ddp"

.field private static final EXTRA_DEVICE_SCREEN_COUNT:Ljava/lang/String; = "dsc"

.field private static final EXTRA_DEVICE_SCREEN_ON_DURATION_POSITION:Ljava/lang/String; = "dsd"

.field private static final EXTRA_UID_FOREGROUND_DURATION:Ljava/lang/String; = "uf"


# instance fields
.field private mDeviceBrightnessDurationPositions:[I

.field private mDeviceScreenDozeDurationPosition:I

.field private mDeviceScreenDozePowerPosition:I

.field private mDeviceScreenOnDurationPosition:I

.field private mDisplayCount:I

.field private mUidTopActivityTimePosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "energyConsumerCount"    # I
    .param p2, "displayCount"    # I

    .line 45
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 46
    invoke-direct {p0, p2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addDeviceScreenUsageDurationSection(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 49
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 50
    invoke-direct {p0}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addUidTopActivitiyDuration()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 3
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 56
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 57
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "dsc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    .line 58
    const-string v1, "dsd"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    .line 59
    const-string v1, "dbds"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    .line 61
    iget-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    if-nez v1, :cond_0

    .line 64
    const-string v1, "dbd"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    .line 67
    :cond_0
    const-string v1, "ddd"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    .line 68
    const-string v1, "ddp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    .line 69
    const-string/jumbo v1, "uf"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    .line 70
    return-void
.end method

.method private addDeviceScreenUsageDurationSection(I)V
    .locals 4
    .param p1, "displayCount"    # I

    .line 85
    iput p1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    .line 86
    const-string/jumbo v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    .line 87
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    .line 88
    const/4 v1, 0x0

    .local v1, "level":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    sget-object v3, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 90
    invoke-virtual {p0, p1, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 92
    .end local v1    # "level":I
    const-string v0, "doze"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    .line 93
    return-void
.end method

.method private addUidTopActivitiyDuration()V
    .locals 2

    .line 164
    const/4 v0, 0x1

    const-string/jumbo v1, "top"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    .line 165
    return-void
.end method


# virtual methods
.method protected addDeviceSectionPowerEstimate()V
    .locals 3

    .line 97
    invoke-super {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 99
    const-string v0, "doze-power"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    .line 100
    return-void
.end method

.method public getBrightnessLevelDuration([JII)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "display"    # I
    .param p3, "brightnessLevel"    # I

    .line 132
    iget-object v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    aget v0, v0, p3

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDisplayCount()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    return v0
.end method

.method public getScreenDozeDuration([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "display"    # I

    .line 146
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getScreenDozePowerEstimate([J)D
    .locals 4
    .param p1, "stats"    # [J

    .line 160
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    aget-wide v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getScreenOnDuration([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "display"    # I

    .line 117
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTopActivityDuration([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 178
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public setBrightnessLevelDuration([JIIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "display"    # I
    .param p3, "brightnessLevel"    # I
    .param p4, "durationMs"    # J

    .line 125
    iget-object v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    aget v0, v0, p3

    add-int/2addr v0, p2

    aput-wide p4, p1, v0

    .line 126
    return-void
.end method

.method public setScreenDozeDuration([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "display"    # I
    .param p3, "durationMs"    # J

    .line 139
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 140
    return-void
.end method

.method public setScreenDozePowerEstimate([JD)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "power"    # D

    .line 153
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, p2

    double-to-long v1, v1

    aput-wide v1, p1, v0

    .line 154
    return-void
.end method

.method public setScreenOnDuration([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "display"    # I
    .param p3, "durationMs"    # J

    .line 110
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 111
    return-void
.end method

.method public setUidTopActivityDuration([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMs"    # J

    .line 171
    iget v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aput-wide p2, p1, v0

    .line 172
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 75
    const-string v0, "dsc"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v0, "dsd"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v0, "dbds"

    iget-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    .line 79
    const-string v0, "ddd"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v0, "ddp"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v0, "uf"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    return-void
.end method
