.class public Lcom/android/server/power/stats/format/PowerStatsLayout;
.super Ljava/lang/Object;
.source "PowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_DURATION_POSITION:Ljava/lang/String; = "dd"

.field private static final EXTRA_DEVICE_ENERGY_CONSUMERS_COUNT:Ljava/lang/String; = "dec"

.field private static final EXTRA_DEVICE_ENERGY_CONSUMERS_POSITION:Ljava/lang/String; = "de"

.field private static final EXTRA_DEVICE_POWER_POSITION:Ljava/lang/String; = "dp"

.field private static final EXTRA_UID_DURATION_POSITION:Ljava/lang/String; = "ud"

.field private static final EXTRA_UID_ENERGY_CONSUMERS_COUNT:Ljava/lang/String; = "uec"

.field private static final EXTRA_UID_ENERGY_CONSUMERS_POSITION:Ljava/lang/String; = "ue"

.field private static final EXTRA_UID_POWER_POSITION:Ljava/lang/String; = "up"

.field protected static final FLAG_FORMAT_AS_POWER:I = 0x4

.field protected static final FLAG_HIDDEN:I = 0x2

.field protected static final FLAG_OPTIONAL:I = 0x1

.field protected static final MILLI_TO_NANO_MULTIPLIER:D = 1000000.0

.field private static final TAG:Ljava/lang/String; = "PowerStatsLayout"

.field public static final UNSUPPORTED:I = -0x1


# instance fields
.field protected mDeviceDurationPosition:I

.field private mDeviceEnergyConsumerCount:I

.field private mDeviceEnergyConsumerPosition:I

.field private final mDeviceFormat:Ljava/lang/StringBuilder;

.field private mDevicePowerEstimatePosition:I

.field private mDeviceStatsArrayLength:I

.field private final mStateFormat:Ljava/lang/StringBuilder;

.field private mStateStatsArrayLength:I

.field private mUidDurationPosition:I

.field private mUidEnergyConsumerCount:I

.field private mUidEnergyConsumerPosition:I

.field private final mUidFormat:Ljava/lang/StringBuilder;

.field private mUidPowerEstimatePosition:I

.field private mUidStatsArrayLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 56
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 57
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 58
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 60
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 56
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 57
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 58
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 60
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 66
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 67
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "dd"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 68
    const-string v1, "de"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 69
    const-string v1, "dec"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 70
    const-string v1, "dp"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 71
    const-string/jumbo v1, "ud"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 72
    const-string/jumbo v1, "ue"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 73
    const-string/jumbo v1, "uec"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    .line 74
    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 75
    return-void
.end method

.method private appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "position"    # I
    .param p3, "length"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 111
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    .line 122
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_3

    .line 125
    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_3
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_4

    .line 128
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_4
    return-void
.end method


# virtual methods
.method protected addDeviceSection(ILjava/lang/String;)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected addDeviceSection(ILjava/lang/String;I)I
    .locals 6
    .param p1, "length"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 133
    iget v2, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 134
    .local v2, "position":I
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 135
    iget-object v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "length":I
    .end local p2    # "label":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v3, "length":I
    .local v4, "label":Ljava/lang/String;
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 136
    return v2
.end method

.method protected addDeviceSectionEnergyConsumers(I)V
    .locals 2
    .param p1, "energyConsumerCount"    # I

    .line 195
    const-string v0, "energy"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 197
    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 198
    return-void
.end method

.method protected addDeviceSectionPowerEstimate()V
    .locals 3

    .line 224
    const-string/jumbo v0, "power"

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 226
    return-void
.end method

.method protected addDeviceSectionUsageDuration()V
    .locals 2

    .line 170
    const/4 v0, 0x1

    const-string/jumbo v1, "usage"

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 171
    return-void
.end method

.method protected addStateSection(ILjava/lang/String;)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addStateSection(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected addStateSection(ILjava/lang/String;I)I
    .locals 6
    .param p1, "length"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 144
    iget v2, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 145
    .local v2, "position":I
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 146
    iget-object v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "length":I
    .end local p2    # "label":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v3, "length":I
    .local v4, "label":Ljava/lang/String;
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 147
    return v2
.end method

.method protected addUidSection(ILjava/lang/String;)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected addUidSection(ILjava/lang/String;I)I
    .locals 6
    .param p1, "length"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 156
    iget v2, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 157
    .local v2, "position":I
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 158
    iget-object v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "length":I
    .end local p2    # "label":Ljava/lang/String;
    .end local p3    # "flags":I
    .local v3, "length":I
    .local v4, "label":Ljava/lang/String;
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 159
    return v2
.end method

.method protected addUidSectionEnergyConsumers(I)V
    .locals 2
    .param p1, "energyConsumerCount"    # I

    .line 289
    const-string v0, "energy"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 291
    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    .line 292
    return-void
.end method

.method protected addUidSectionPowerEstimate()V
    .locals 3

    .line 257
    const-string/jumbo v0, "power"

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 258
    return-void
.end method

.method protected addUidSectionUsageDuration()V
    .locals 2

    .line 250
    const/4 v0, 0x1

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 251
    return-void
.end method

.method public getConsumedEnergy([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "index"    # I

    .line 217
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getDevicePowerEstimate([J)D
    .locals 4
    .param p1, "stats"    # [J

    .line 240
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 241
    const-wide/16 v0, 0x0

    return-wide v0

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    aget-wide v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getDeviceStatsArrayLength()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    return v0
.end method

.method public getEnergyConsumerCount()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    return v0
.end method

.method protected getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I
    .locals 8
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 348
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 350
    return-object v1

    .line 352
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    .line 354
    .local v3, "result":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 356
    :try_start_0
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    nop

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    :catch_0
    move-exception v5

    .line 358
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CSV format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PowerStatsLayout"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v1

    .line 354
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    nop

    .line 362
    .end local v4    # "i":I
    return-object v3
.end method

.method public getStateStatsArrayLength()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    return v0
.end method

.method public getUidConsumedEnergy([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "index"    # I

    .line 311
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidEnergyConsumerCount()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    return v0
.end method

.method public getUidPowerEstimate([J)D
    .locals 4
    .param p1, "stats"    # [J

    .line 326
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 327
    const-wide/16 v0, 0x0

    return-wide v0

    .line 329
    :cond_0
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    aget-wide v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getUidStatsArrayLength()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    return v0
.end method

.method public getUidUsageDuration([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 278
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 279
    const-wide/16 v0, 0x0

    return-wide v0

    .line 281
    :cond_0
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUsageDuration([J)J
    .locals 2
    .param p1, "stats"    # [J

    .line 184
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    return-wide v0

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public isUidPowerAttributionSupported()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 333
    if-nez p3, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p3, v2

    .line 339
    .local v3, "value":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 340
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public setConsumedEnergy([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "index"    # I
    .param p3, "energy"    # J

    .line 209
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 210
    return-void
.end method

.method public setDevicePowerEstimate([JD)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "power"    # D

    .line 233
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, p2

    double-to-long v1, v1

    aput-wide v1, p1, v0

    .line 234
    return-void
.end method

.method public setUidConsumedEnergy([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "index"    # I
    .param p3, "energy"    # J

    .line 303
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 304
    return-void
.end method

.method public setUidPowerEstimate([JD)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "power"    # D

    .line 319
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, p2

    double-to-long v1, v1

    aput-wide v1, p1, v0

    .line 320
    return-void
.end method

.method public setUidUsageDuration([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "durationMs"    # J

    .line 271
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aput-wide p2, p1, v0

    .line 272
    return-void
.end method

.method public setUsageDuration([JJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "value"    # J

    .line 177
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide p2, p1, v0

    .line 178
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 81
    const-string v0, "dd"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v0, "de"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v0, "dec"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v0, "dp"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v0, "ud"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v0, "ue"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v0, "uec"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v0, "up"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format-device"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format-state"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format-uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
