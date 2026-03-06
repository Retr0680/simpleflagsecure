.class public Lcom/android/server/power/stats/format/WifiPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "WifiPowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_ACTIVE_TIME_POSITION:Ljava/lang/String; = "dt-on"

.field private static final EXTRA_DEVICE_BASIC_SCAN_TIME_POSITION:Ljava/lang/String; = "dt-basic-scan"

.field private static final EXTRA_DEVICE_BATCHED_SCAN_TIME_POSITION:Ljava/lang/String; = "dt-batch-scan"

.field private static final EXTRA_DEVICE_IDLE_TIME_POSITION:Ljava/lang/String; = "dt-idle"

.field private static final EXTRA_DEVICE_RX_TIME_POSITION:Ljava/lang/String; = "dt-rx"

.field private static final EXTRA_DEVICE_SCAN_TIME_POSITION:Ljava/lang/String; = "dt-scan"

.field private static final EXTRA_DEVICE_TX_TIME_POSITION:Ljava/lang/String; = "dt-tx"

.field private static final EXTRA_POWER_REPORTING_SUPPORTED:Ljava/lang/String; = "prs"

.field private static final EXTRA_UID_BATCH_SCAN_TIME_POSITION:Ljava/lang/String; = "ut-bscan"

.field private static final EXTRA_UID_RX_BYTES_POSITION:Ljava/lang/String; = "urxb"

.field private static final EXTRA_UID_RX_PACKETS_POSITION:Ljava/lang/String; = "urxp"

.field private static final EXTRA_UID_SCAN_TIME_POSITION:Ljava/lang/String; = "ut-scan"

.field private static final EXTRA_UID_TX_BYTES_POSITION:Ljava/lang/String; = "utxb"

.field private static final EXTRA_UID_TX_PACKETS_POSITION:Ljava/lang/String; = "utxp"

.field private static final UNSPECIFIED:I = -0x1


# instance fields
.field private mDeviceActiveTimePosition:I

.field private mDeviceBasicScanTimePosition:I

.field private mDeviceBatchedScanTimePosition:I

.field private mDeviceIdleTimePosition:I

.field private mDeviceRxTimePosition:I

.field private mDeviceScanTimePosition:I

.field private mDeviceTxTimePosition:I

.field private mPowerReportingSupported:Z

.field private mUidBatchScanTimePosition:I

.field private mUidRxBytesPosition:I

.field private mUidRxPacketsPosition:I

.field private mUidScanTimePosition:I

.field private mUidTxBytesPosition:I

.field private mUidTxPacketsPosition:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "energyConsumerCount"    # I
    .param p2, "powerReportingSupported"    # Z

    .line 56
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 57
    invoke-direct {p0, p2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->addDeviceWifiActivity(Z)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 59
    invoke-direct {p0}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->addUidNetworkStats()V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 67
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 68
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "prs"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 69
    const-string v1, "dt-rx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 70
    const-string v1, "dt-tx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 71
    const-string v1, "dt-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 72
    const-string v1, "dt-basic-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 73
    const-string v1, "dt-batch-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 74
    const-string v1, "dt-idle"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 75
    const-string v1, "dt-on"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 76
    const-string/jumbo v1, "urxb"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 77
    const-string/jumbo v1, "utxb"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 78
    const-string/jumbo v1, "urxp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 79
    const-string/jumbo v1, "utxp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 80
    const-string/jumbo v1, "ut-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 81
    const-string/jumbo v1, "ut-bscan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 82
    return-void
.end method

.method private addDeviceWifiActivity(Z)V
    .locals 3
    .param p1, "powerReportingSupported"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 107
    iget-boolean v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 108
    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 109
    const-string/jumbo v0, "rx"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 110
    const-string/jumbo v0, "tx"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 111
    const-string/jumbo v0, "idle"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 112
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    goto :goto_0

    .line 114
    :cond_0
    const-string/jumbo v0, "rx-tx"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 115
    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 116
    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 117
    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 118
    iput v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 120
    :goto_0
    const-string v0, "basic-scan"

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 121
    const-string v0, "batched-scan"

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 122
    return-void
.end method

.method private addUidNetworkStats()V
    .locals 2

    .line 125
    const-string/jumbo v0, "rx-pkts"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 126
    const-string/jumbo v0, "rx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 127
    const-string/jumbo v0, "tx-pkts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 128
    const-string/jumbo v0, "tx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 129
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 130
    const-string v0, "batched-scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 131
    return-void
.end method


# virtual methods
.method public getDeviceActiveTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 190
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceBasicScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 166
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceBatchedScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 174
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceIdleTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 182
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceRxTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 142
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 158
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceTxTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 150
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidBatchedScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 238
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidRxBytes([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 198
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidRxPackets([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 214
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 230
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTxBytes([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 206
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTxPackets([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 222
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public isPowerReportingSupported()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    return v0
.end method

.method public setDeviceActiveTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 186
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    aput-wide p2, p1, v0

    .line 187
    return-void
.end method

.method public setDeviceBasicScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 162
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    aput-wide p2, p1, v0

    .line 163
    return-void
.end method

.method public setDeviceBatchedScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 170
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    aput-wide p2, p1, v0

    .line 171
    return-void
.end method

.method public setDeviceIdleTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 178
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide p2, p1, v0

    .line 179
    return-void
.end method

.method public setDeviceRxTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 138
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    aput-wide p2, p1, v0

    .line 139
    return-void
.end method

.method public setDeviceScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 154
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide p2, p1, v0

    .line 155
    return-void
.end method

.method public setDeviceTxTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 146
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    aput-wide p2, p1, v0

    .line 147
    return-void
.end method

.method public setUidBatchScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 234
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    aput-wide p2, p1, v0

    .line 235
    return-void
.end method

.method public setUidRxBytes([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 194
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide p2, p1, v0

    .line 195
    return-void
.end method

.method public setUidRxPackets([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 210
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aput-wide p2, p1, v0

    .line 211
    return-void
.end method

.method public setUidScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 226
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    aput-wide p2, p1, v0

    .line 227
    return-void
.end method

.method public setUidTxBytes([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 202
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide p2, p1, v0

    .line 203
    return-void
.end method

.method public setUidTxPackets([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 218
    iget v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aput-wide p2, p1, v0

    .line 219
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 88
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 89
    const-string/jumbo v0, "prs"

    iget-boolean v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const-string v0, "dt-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v0, "dt-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v0, "dt-basic-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v0, "dt-batch-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v0, "dt-on"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v0, "urxb"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "utxb"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v0, "urxp"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "utxp"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v0, "ut-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "ut-bscan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-void
.end method
