.class public Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "MobileRadioPowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_CALL_POWER_POSITION:Ljava/lang/String; = "dp-call"

.field private static final EXTRA_DEVICE_CALL_TIME_POSITION:Ljava/lang/String; = "dt-call"

.field private static final EXTRA_DEVICE_IDLE_TIME_POSITION:Ljava/lang/String; = "dt-idle"

.field private static final EXTRA_DEVICE_SCAN_TIME_POSITION:Ljava/lang/String; = "dt-scan"

.field private static final EXTRA_DEVICE_SLEEP_TIME_POSITION:Ljava/lang/String; = "dt-sleep"

.field private static final EXTRA_STATE_RX_TIME_POSITION:Ljava/lang/String; = "srx"

.field private static final EXTRA_STATE_TX_TIMES_COUNT:Ljava/lang/String; = "stxc"

.field private static final EXTRA_STATE_TX_TIMES_POSITION:Ljava/lang/String; = "stx"

.field private static final EXTRA_UID_RX_BYTES_POSITION:Ljava/lang/String; = "urxb"

.field private static final EXTRA_UID_RX_PACKETS_POSITION:Ljava/lang/String; = "urxp"

.field private static final EXTRA_UID_TX_BYTES_POSITION:Ljava/lang/String; = "utxb"

.field private static final EXTRA_UID_TX_PACKETS_POSITION:Ljava/lang/String; = "utxp"

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerStatsLayout"


# instance fields
.field private mDeviceCallPowerPosition:I

.field private mDeviceCallTimePosition:I

.field private mDeviceIdleTimePosition:I

.field private mDeviceScanTimePosition:I

.field private mDeviceSleepTimePosition:I

.field private mStateRxTimePosition:I

.field private mStateTxTimesCount:I

.field private mStateTxTimesPosition:I

.field private mUidRxBytesPosition:I

.field private mUidRxPacketsPosition:I

.field private mUidTxBytesPosition:I

.field private mUidTxPacketsPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "energyConsumerCount"    # I

    .line 61
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 62
    invoke-direct {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addDeviceMobileActivity()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addStateStats()V

    .line 65
    invoke-direct {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addUidNetworkStats()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 73
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 74
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "dt-sleep"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 75
    const-string v1, "dt-idle"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 76
    const-string v1, "dt-scan"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 77
    const-string v1, "dt-call"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 78
    const-string v1, "dp-call"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 79
    const-string/jumbo v1, "srx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 80
    const-string/jumbo v1, "stx"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 81
    const-string/jumbo v1, "stxc"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 82
    const-string/jumbo v1, "urxb"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 83
    const-string/jumbo v1, "utxb"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 84
    const-string/jumbo v1, "urxp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 85
    const-string/jumbo v1, "utxp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 86
    return-void
.end method

.method private addDeviceMobileActivity()V
    .locals 2

    .line 137
    const-string/jumbo v0, "sleep"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 138
    const-string/jumbo v0, "idle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 139
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 140
    const-string v0, "call"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 141
    return-void
.end method

.method private addStateStats()V
    .locals 2

    .line 144
    const/4 v0, 0x1

    const-string/jumbo v1, "rx"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addStateSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 145
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 146
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    const-string/jumbo v1, "tx"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addStateSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 147
    return-void
.end method

.method private addUidNetworkStats()V
    .locals 2

    .line 150
    const-string/jumbo v0, "rx-pkts"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 151
    const-string/jumbo v0, "rx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 152
    const-string/jumbo v0, "tx-pkts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 153
    const-string/jumbo v0, "tx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 154
    return-void
.end method

.method public static makeStateKey(II)I
    .locals 1
    .param p0, "rat"    # I
    .param p1, "freqRange"    # I

    .line 108
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 109
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    return v0

    .line 111
    :cond_0
    return p0
.end method

.method public static mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I
    .locals 3
    .param p0, "networkType"    # I

    .line 118
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled RadioAccessNetworkType ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), mapping to OTHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileRadioPowerStatsLayout"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0

    .line 120
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 122
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 128
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addDeviceSectionPowerEstimate()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 160
    const-string v0, "call-power"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 161
    return-void
.end method

.method public addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V
    .locals 11
    .param p2, "networkType"    # I
    .param p3, "freqRange"    # I
    .param p4, "rxTime"    # J
    .param p6, "txTime"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[J>;IIJ[I)V"
        }
    .end annotation

    .line 253
    .local p1, "stateStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    move-object/from16 v0, p6

    array-length v1, v0

    iget v2, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    if-eq v1, v2, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TX time array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileRadioPowerStatsLayout"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 259
    .local v1, "nonZero":Z
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    .line 260
    const/4 v1, 0x1

    goto :goto_1

    .line 262
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 263
    aget v3, v0, v2

    if-eqz v3, :cond_2

    .line 264
    const/4 v1, 0x1

    .line 265
    goto :goto_1

    .line 262
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 271
    return-void

    .line 274
    :cond_4
    invoke-static {p2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I

    move-result v2

    .line 275
    .local v2, "rat":I
    invoke-static {v2, p3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->makeStateKey(II)I

    move-result v3

    .line 276
    .local v3, "stateKey":I
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 277
    .local v4, "stats":[J
    if-nez v4, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getStateStatsArrayLength()I

    move-result v5

    new-array v4, v5, [J

    .line 279
    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    :cond_5
    iget v5, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aget-wide v6, v4, v5

    add-long/2addr v6, p4

    aput-wide v6, v4, v5

    .line 283
    iget v5, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_6

    .line 284
    iget v6, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr v6, v5

    aget-wide v7, v4, v6

    aget v9, v0, v5

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v4, v6

    .line 283
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_6
    nop

    .line 286
    .end local v5    # "i":I
    return-void
.end method

.method public getDeviceCallPowerEstimate([J)D
    .locals 4
    .param p1, "stats"    # [J

    .line 200
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    aget-wide v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getDeviceCallTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 192
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceIdleTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 176
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceScanTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 184
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDeviceSleepTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 168
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getStateRxTime([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 208
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getStateTxTime([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "level"    # I

    .line 216
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidRxBytes([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 224
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidRxPackets([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 240
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTxBytes([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 232
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTxPackets([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 248
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public setDeviceCallPowerEstimate([JD)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "power"    # D

    .line 196
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, p2

    double-to-long v1, v1

    aput-wide v1, p1, v0

    .line 197
    return-void
.end method

.method public setDeviceCallTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 188
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    aput-wide p2, p1, v0

    .line 189
    return-void
.end method

.method public setDeviceIdleTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 172
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide p2, p1, v0

    .line 173
    return-void
.end method

.method public setDeviceScanTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 180
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide p2, p1, v0

    .line 181
    return-void
.end method

.method public setDeviceSleepTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 164
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    aput-wide p2, p1, v0

    .line 165
    return-void
.end method

.method public setStateRxTime([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMillis"    # J

    .line 204
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aput-wide p2, p1, v0

    .line 205
    return-void
.end method

.method public setStateTxTime([JII)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "level"    # I
    .param p3, "durationMillis"    # I

    .line 212
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr v0, p2

    int-to-long v1, p3

    aput-wide v1, p1, v0

    .line 213
    return-void
.end method

.method public setUidRxBytes([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 220
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide p2, p1, v0

    .line 221
    return-void
.end method

.method public setUidRxPackets([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 236
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aput-wide p2, p1, v0

    .line 237
    return-void
.end method

.method public setUidTxBytes([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 228
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide p2, p1, v0

    .line 229
    return-void
.end method

.method public setUidTxPackets([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "count"    # J

    .line 244
    iget v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aput-wide p2, p1, v0

    .line 245
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 93
    const-string v0, "dt-sleep"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v0, "dt-call"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v0, "dp-call"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "srx"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v0, "stx"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "stxc"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v0, "urxb"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "utxb"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v0, "urxp"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string/jumbo v0, "utxp"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    return-void
.end method
