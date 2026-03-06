.class public Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "BluetoothPowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_IDLE_TIME_POSITION:Ljava/lang/String; = "dt-idle"

.field private static final EXTRA_DEVICE_RX_TIME_POSITION:Ljava/lang/String; = "dt-rx"

.field private static final EXTRA_DEVICE_SCAN_TIME_POSITION:Ljava/lang/String; = "dt-scan"

.field private static final EXTRA_DEVICE_TX_TIME_POSITION:Ljava/lang/String; = "dt-tx"

.field private static final EXTRA_UID_RX_BYTES_POSITION:Ljava/lang/String; = "ub-rx"

.field private static final EXTRA_UID_SCAN_TIME_POSITION:Ljava/lang/String; = "ut-scan"

.field private static final EXTRA_UID_TX_BYTES_POSITION:Ljava/lang/String; = "ub-tx"


# instance fields
.field private mDeviceIdleTimePosition:I

.field private mDeviceRxTimePosition:I

.field private mDeviceScanTimePosition:I

.field private mDeviceTxTimePosition:I

.field private mUidRxBytesPosition:I

.field private mUidScanTimePosition:I

.field private mUidTxBytesPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "energyConsumerCount"    # I

    .line 40
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->addDeviceBluetoothControllerActivity()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 45
    invoke-direct {p0}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->addUidTrafficStats()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 51
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 52
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "dt-rx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 53
    const-string v1, "dt-tx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 54
    const-string v1, "dt-idle"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 55
    const-string v1, "dt-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 56
    const-string/jumbo v1, "ub-rx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 57
    const-string/jumbo v1, "ub-tx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 58
    const-string/jumbo v1, "ut-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 59
    return-void
.end method

.method private addDeviceBluetoothControllerActivity()V
    .locals 2

    .line 76
    const-string/jumbo v0, "rx"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 77
    const-string/jumbo v0, "tx"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 78
    const-string/jumbo v0, "idle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 79
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 80
    return-void
.end method

.method private addUidTrafficStats()V
    .locals 2

    .line 83
    const-string/jumbo v0, "rx-B"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 84
    const-string/jumbo v0, "tx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 85
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 86
    return-void
.end method


# virtual methods
.method public getDeviceIdleTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 109
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceRxTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 93
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 117
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceTxTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 101
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidRxBytes([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 125
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 141
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTxBytes([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 133
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public setDeviceIdleTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 105
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide p2, p1, v0

    .line 106
    return-void
.end method

.method public setDeviceRxTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 89
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    aput-wide p2, p1, v0

    .line 90
    return-void
.end method

.method public setDeviceScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 113
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide p2, p1, v0

    .line 114
    return-void
.end method

.method public setDeviceTxTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 97
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    aput-wide p2, p1, v0

    .line 98
    return-void
.end method

.method public setUidRxBytes([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 121
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide p2, p1, v0

    .line 122
    return-void
.end method

.method public setUidScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 137
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aput-wide p2, p1, v0

    .line 138
    return-void
.end method

.method public setUidTxBytes([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 129
    iget v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide p2, p1, v0

    .line 130
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 65
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 66
    const-string v0, "dt-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v0, "dt-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v0, "ub-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string/jumbo v0, "ub-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v0, "ut-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-void
.end method
