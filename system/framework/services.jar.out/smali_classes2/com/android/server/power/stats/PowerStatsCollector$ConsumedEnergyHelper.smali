.class Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/PowerStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConsumedEnergyHelper"
.end annotation


# instance fields
.field private final mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

.field private mEnergyConsumerIds:[I

.field private final mEnergyConsumerType:I

.field private mFirstCollection:Z

.field private mIsInitialized:Z

.field private mLastConsumedEnergyUws:[J

.field private final mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

.field private mLastVoltageMv:I

.field private final mPerUidAttributionSupported:Z

.field final synthetic this$0:Lcom/android/server/power/stats/PowerStatsCollector;


# direct methods
.method public static synthetic $r8$lambda$fE2HIS54stOPSgrdk0vdo4mgHPs(Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->lambda$onAfterIsolatedUidRemoved$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/stats/PowerStatsCollector;
    .param p2, "consumedEnergyRetriever"    # Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
    .param p3, "energyConsumerType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    .line 383
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    .line 384
    iput p3, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    .line 387
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/stats/PowerStatsCollector;
    .param p2, "consumedEnergyRetriever"    # Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
    .param p3, "energyConsumerId"    # I
    .param p4, "perUidAttributionSupported"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    .line 391
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    .line 393
    filled-new-array {p3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    .line 394
    iput-boolean p4, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    .line 395
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    .line 396
    return-void
.end method

.method private ensureInitialized()V
    .locals 3

    .line 399
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    iget v1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getEnergyConsumerIds(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    .line 405
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 406
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mIsInitialized:Z

    .line 409
    :cond_1
    return-void
.end method

.method private synthetic lambda$onAfterIsolatedUidRemoved$0(I)V
    .locals 1
    .param p1, "isolatedUid"    # I

    .line 501
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method private populatePowerStats(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[Landroid/hardware/power/stats/EnergyConsumerResult;II)V
    .locals 28
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;
    .param p3, "energy"    # [Landroid/hardware/power/stats/EnergyConsumerResult;
    .param p4, "energyConsumerIndex"    # I
    .param p5, "averageVoltage"    # I

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    aget-object v5, p3, v3

    iget-wide v5, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 450
    .local v5, "consumedEnergy":J
    iget-object v7, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    aget-wide v7, v7, v3

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_0

    .line 451
    iget-object v7, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    aget-wide v7, v7, v3

    sub-long v7, v5, v7

    goto :goto_0

    :cond_0
    move-wide v7, v11

    .line 452
    .local v7, "energyDelta":J
    :goto_0
    iget-object v13, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    aput-wide v5, v13, v3

    .line 453
    cmp-long v13, v7, v11

    if-gez v13, :cond_1

    .line 455
    const-wide/16 v7, 0x0

    .line 458
    :cond_1
    cmp-long v13, v7, v11

    if-nez v13, :cond_2

    iget-boolean v13, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    if-nez v13, :cond_2

    .line 459
    return-void

    .line 462
    :cond_2
    iget-object v13, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 463
    invoke-static {v7, v8, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(JI)J

    move-result-wide v14

    .line 462
    invoke-virtual {v2, v13, v3, v14, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 465
    iget-boolean v13, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    if-nez v13, :cond_3

    .line 466
    return-void

    .line 469
    :cond_3
    aget-object v13, p3, v3

    iget-object v13, v13, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 470
    .local v13, "perUid":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    if-nez v13, :cond_4

    .line 471
    return-void

    .line 474
    :cond_4
    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_8

    move-wide/from16 v16, v11

    aget-object v11, v13, v15

    .line 475
    .local v11, "attribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget-object v12, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget-object v12, v12, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget v9, v11, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    invoke-virtual {v12, v9}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v9

    .line 476
    .local v9, "uid":I
    iget-object v10, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    move-wide/from16 v20, v5

    const-wide/16 v5, -0x1

    .end local v5    # "consumedEnergy":J
    .local v20, "consumedEnergy":J
    invoke-virtual {v10, v9, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v18

    .line 477
    .local v18, "lastEnergy":J
    iget-object v10, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    move-wide/from16 v22, v5

    iget-wide v5, v11, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v10, v9, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 478
    cmp-long v5, v18, v22

    if-nez v5, :cond_5

    .line 479
    goto :goto_2

    .line 481
    :cond_5
    iget-wide v5, v11, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    sub-long v5, v5, v18

    .line 482
    .local v5, "deltaEnergy":J
    cmp-long v10, v5, v16

    if-gtz v10, :cond_6

    .line 483
    goto :goto_2

    .line 486
    :cond_6
    iget-object v10, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    .line 487
    .local v10, "uidStats":[J
    if-nez v10, :cond_7

    .line 488
    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v12

    new-array v10, v12, [J

    .line 489
    iget-object v12, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    :cond_7
    nop

    .line 493
    invoke-virtual {v2, v10, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidConsumedEnergy([JI)J

    move-result-wide v24

    .line 494
    invoke-static {v5, v6, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(JI)J

    move-result-wide v26

    add-long v0, v24, v26

    .line 492
    invoke-virtual {v2, v10, v3, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidConsumedEnergy([JIJ)V

    .line 474
    .end local v5    # "deltaEnergy":J
    .end local v9    # "uid":I
    .end local v10    # "uidStats":[J
    .end local v11    # "attribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v18    # "lastEnergy":J
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v11, v16

    move-wide/from16 v5, v20

    move-wide/from16 v9, v22

    goto :goto_1

    .line 496
    .end local v20    # "consumedEnergy":J
    .local v5, "consumedEnergy":J
    :cond_8
    return-void
.end method


# virtual methods
.method collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z
    .locals 9
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;

    .line 417
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->ensureInitialized()V

    .line 419
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    return v1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    invoke-interface {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getVoltageMv()I

    move-result v0

    .line 424
    .local v0, "voltageMv":I
    iget v2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move v8, v2

    .line 425
    .local v8, "averageVoltage":I
    if-gtz v8, :cond_2

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected battery voltage ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mV) when querying energy consumers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerStatsCollector"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v1

    .line 431
    :cond_2
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    .line 433
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    .line 434
    invoke-interface {v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v6

    .line 435
    .local v6, "energy":[Landroid/hardware/power/stats/EnergyConsumerResult;
    if-nez v6, :cond_3

    .line 436
    return v1

    .line 439
    :cond_3
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v2, v2

    if-ge v7, v2, :cond_4

    .line 440
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "powerStats":Lcom/android/internal/os/PowerStats;
    .end local p2    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    .local v4, "powerStats":Lcom/android/internal/os/PowerStats;
    .local v5, "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->populatePowerStats(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[Landroid/hardware/power/stats/EnergyConsumerResult;II)V

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v4    # "powerStats":Lcom/android/internal/os/PowerStats;
    .end local v5    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    .restart local p1    # "powerStats":Lcom/android/internal/os/PowerStats;
    .restart local p2    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    :cond_4
    move-object v3, p0

    move-object v4, p1

    .line 442
    .end local v7    # "i":I
    .end local p1    # "powerStats":Lcom/android/internal/os/PowerStats;
    .restart local v4    # "powerStats":Lcom/android/internal/os/PowerStats;
    iput-boolean v1, v3, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    .line 443
    const/4 p1, 0x1

    return p1
.end method

.method getEnergyConsumerCount()I
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->ensureInitialized()V

    .line 413
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    return v0
.end method

.method public onAfterIsolatedUidRemoved(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "parentUid"    # I

    .line 500
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-static {v0}, Lcom/android/server/power/stats/PowerStatsCollector;->-$$Nest$fgetmHandler(Lcom/android/server/power/stats/PowerStatsCollector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    :cond_0
    return-void
.end method

.method public onBeforeIsolatedUidRemoved(II)V
    .locals 0
    .param p1, "isolatedUid"    # I
    .param p2, "parentUid"    # I

    .line 511
    return-void
.end method

.method public onIsolatedUidAdded(II)V
    .locals 0
    .param p1, "isolatedUid"    # I
    .param p2, "parentUid"    # I

    .line 507
    return-void
.end method
