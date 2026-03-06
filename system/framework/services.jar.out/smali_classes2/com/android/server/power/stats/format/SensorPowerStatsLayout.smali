.class public Lcom/android/server/power/stats/format/SensorPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "SensorPowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_SENSOR_HANDLES:Ljava/lang/String; = "dshs"

.field private static final EXTRA_DEVICE_SENSOR_HANDLES_COMPAT:Ljava/lang/String; = "dsh"

.field private static final EXTRA_UID_SENSOR_POSITIONS:Ljava/lang/String; = "usp"

.field private static final EXTRA_UID_SENSOR_POSITIONS_COMPAT:Ljava/lang/String; = "usps"

.field private static final TAG:Ljava/lang/String; = "SensorPowerStatsLayout"


# instance fields
.field private final mSensorPositions:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 7
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    .line 51
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 52
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "dshs"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I

    move-result-object v1

    .line 53
    .local v1, "handlers":[I
    if-nez v1, :cond_0

    .line 54
    const-string v2, "dsh"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 56
    :cond_0
    const-string/jumbo v2, "usp"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I

    move-result-object v2

    .line 57
    .local v2, "uidDurationPositions":[I
    if-nez v2, :cond_1

    .line 58
    const-string/jumbo v3, "usps"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 61
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 62
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 63
    iget-object v4, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    aget v5, v1, v3

    aget v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "idToLabelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 39
    .local v0, "keys":[Ljava/lang/Integer;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 42
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->addUidSensorSection(ILjava/lang/String;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 44
    .end local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 46
    return-void
.end method

.method private addUidSensorSection(ILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    return-void
.end method


# virtual methods
.method public addUidSensorDuration([JIJ)V
    .locals 3
    .param p1, "stats"    # [J
    .param p2, "handle"    # I
    .param p3, "durationMs"    # J

    .line 100
    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 101
    .local v0, "position":I
    if-ne v0, v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SensorPowerStatsLayout"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 105
    :cond_0
    aget-wide v1, p1, v0

    add-long/2addr v1, p3

    aput-wide v1, p1, v0

    .line 106
    return-void
.end method

.method public getUidSensorDurationPosition(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 93
    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 73
    .local v0, "handlers":[I
    iget-object v1, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 75
    .local v1, "uidDurationPositions":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 77
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 80
    .end local v2    # "i":I
    const-string v2, "dshs"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    .line 81
    const-string/jumbo v2, "usp"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    .line 82
    return-void
.end method
