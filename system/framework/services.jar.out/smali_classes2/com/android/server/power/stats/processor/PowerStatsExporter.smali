.class Lcom/android/server/power/stats/processor/PowerStatsExporter;
.super Ljava/lang/Object;
.source "PowerStatsExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
    }
.end annotation


# static fields
.field private static final BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "PowerStatsExporter"

.field private static final sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;


# instance fields
.field private final mBatterySessionTimeSpanSlackMillis:J

.field private final mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

.field private final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$iKXb3jwJEiQ4S6b3NKDtSadkbS0(Lcom/android/server/power/stats/processor/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->lambda$exportAggregatedPowerStats$0(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNT5uGKVgvyOpk7fJ8PTGvMFxnE(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->lambda$populateAggregatedBatteryConsumer$1(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_0fFBL0SpJgc9zuomLvKMCMfxk(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J[I)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->lambda$populateUidBatteryConsumers$2(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J[I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    .line 49
    new-instance v0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V
    .locals 2
    .param p1, "powerStatsStore"    # Lcom/android/server/power/stats/PowerStatsStore;
    .param p2, "powerStatsAggregator"    # Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 58
    sget-wide v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;J)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;J)V
    .locals 0
    .param p1, "powerStatsStore"    # Lcom/android/server/power/stats/PowerStatsStore;
    .param p2, "powerStatsAggregator"    # Lcom/android/server/power/stats/processor/PowerStatsAggregator;
    .param p3, "batterySessionTimeSpanSlackMillis"    # J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 65
    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 66
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    .line 67
    return-void
.end method

.method private static areMatchingStates([III)Z
    .locals 3
    .param p0, "states"    # [I
    .param p1, "screenState"    # I
    .param p2, "powerState"    # I

    .line 434
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 442
    :pswitch_0
    aget v2, p0, v0

    if-eq v2, v0, :cond_0

    .line 444
    return v1

    .line 436
    :pswitch_1
    aget v2, p0, v0

    if-eqz v2, :cond_0

    .line 438
    return v1

    .line 449
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 457
    :pswitch_2
    aget v2, p0, v1

    if-eq v2, v0, :cond_1

    .line 459
    return v1

    .line 451
    :pswitch_3
    aget v2, p0, v1

    if-eqz v2, :cond_1

    .line 453
    return v1

    .line 463
    :cond_1
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private gatherBatteryLevelInfo(Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[J)V
    .locals 6
    .param p1, "batteryLevelInfo"    # Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
    .param p2, "deviceStats"    # [J

    .line 237
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    sget-object v2, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    .line 238
    invoke-virtual {v2, p2}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->getBatteryDischargePercent([J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    .line 239
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    sget-object v2, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    .line 240
    invoke-virtual {v2, p2}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->getBatteryDischargeUah([J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 241
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    sget-object v2, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    .line 242
    invoke-virtual {v2, p2}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->getBatteryDischargeDuration([J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    .line 243
    return-void
.end method

.method private getKeyForPartialTotal(Landroid/os/BatteryUsageStats$Builder;Landroid/os/AggregateBatteryConsumer$Builder;III)Landroid/os/BatteryConsumer$Key;
    .locals 1
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "builder"    # Landroid/os/AggregateBatteryConsumer$Builder;
    .param p3, "powerComponentId"    # I
    .param p4, "screenState"    # I
    .param p5, "powerState"    # I

    .line 415
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 p4, 0x0

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    const/4 p5, 0x0

    .line 422
    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 427
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$exportAggregatedPowerStats$0(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "stats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method private synthetic lambda$populateAggregatedBatteryConsumer$1(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V
    .locals 5
    .param p1, "screenState"    # I
    .param p2, "powerState"    # I
    .param p3, "powerComponentStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p4, "deviceStats"    # [J
    .param p5, "totalPower"    # [D
    .param p6, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;
    .param p7, "durationMs"    # [J
    .param p8, "hasBatteryLevelProperties"    # Z
    .param p9, "batteryLevelInfo"    # Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
    .param p10, "states"    # [I

    .line 204
    invoke-static {p10, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->areMatchingStates([III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    invoke-virtual {p3, p4, p10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    aget-wide v1, p5, v0

    invoke-virtual {p6, p4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p5, v0

    .line 213
    aget-wide v1, p7, v0

    invoke-virtual {p6, p4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p7, v0

    .line 215
    if-eqz p8, :cond_2

    .line 216
    invoke-direct {p0, p9, p4}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->gatherBatteryLevelInfo(Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[J)V

    .line 218
    :cond_2
    return-void
.end method

.method private static synthetic lambda$populateUidBatteryConsumers$2(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J[I)V
    .locals 9
    .param p0, "screenState"    # I
    .param p1, "powerState"    # I
    .param p2, "powerComponentStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p3, "uidStats"    # [J
    .param p4, "uid"    # I
    .param p5, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;
    .param p6, "breakDownByProcState"    # Z
    .param p7, "powerByProcState"    # [D
    .param p8, "durationByProcState"    # [J
    .param p9, "states"    # [I

    .line 335
    move-object/from16 v0, p9

    invoke-static {v0, p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->areMatchingStates([III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    return-void

    .line 339
    :cond_0
    invoke-virtual {p2, p3, p4, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    return-void

    .line 343
    :cond_1
    invoke-virtual {p5, p3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidPowerEstimate([J)D

    move-result-wide v2

    .line 344
    .local v2, "power":D
    invoke-virtual {p5, p3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v4

    .line 345
    .local v4, "duration":J
    if-eqz p6, :cond_3

    .line 346
    const/4 v6, 0x2

    aget v6, v0, v6

    .line 355
    .local v6, "procState":I
    if-nez v6, :cond_2

    .line 356
    const/4 v6, 0x2

    .line 358
    :cond_2
    aget-wide v7, p7, v6

    add-double/2addr v7, v2

    aput-wide v7, p7, v6

    .line 359
    aget-wide v7, p8, v6

    add-long/2addr v7, v4

    aput-wide v7, p8, v6

    .line 361
    .end local v6    # "procState":I
    :cond_3
    const/4 v6, 0x0

    aget-wide v7, p7, v6

    add-double/2addr v7, v2

    aput-wide v7, p7, v6

    .line 362
    aget-wide v7, p8, v6

    add-long/2addr v7, v4

    aput-wide v7, p8, v6

    .line 363
    return-void
.end method

.method private populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V
    .locals 14
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "powerComponentStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p3, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;
    .param p4, "deviceStats"    # [J
    .param p5, "batteryLevelInfo"    # Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
    .param p6, "screenState"    # I
    .param p7, "powerState"    # I

    .line 195
    move-object/from16 v4, p2

    iget v11, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 196
    .local v11, "powerComponentId":I
    const/16 v0, 0x12

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-ne v11, v0, :cond_0

    move/from16 v3, p7

    if-ne v3, v1, :cond_1

    move v9, v1

    goto :goto_0

    :cond_0
    move/from16 v3, p7

    :cond_1
    move v9, v12

    .line 199
    .local v9, "hasBatteryLevelProperties":Z
    :goto_0
    new-array v6, v1, [D

    .line 200
    .local v6, "totalPower":[D
    new-array v8, v1, [J

    .line 201
    .local v8, "durationMs":[J
    nop

    .line 202
    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v13

    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move/from16 v2, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V

    .line 201
    invoke-static {v13, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 220
    nop

    .line 221
    invoke-virtual {p1, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    .line 223
    .local v2, "deviceScope":Landroid/os/AggregateBatteryConsumer$Builder;
    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move v3, v11

    .end local v11    # "powerComponentId":I
    .local v3, "powerComponentId":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->getKeyForPartialTotal(Landroid/os/BatteryUsageStats$Builder;Landroid/os/AggregateBatteryConsumer$Builder;III)Landroid/os/BatteryConsumer$Key;

    move-result-object v7

    .line 225
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v7, :cond_2

    .line 226
    aget-wide v0, v6, v12

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 227
    aget-wide v0, v8, v12

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 229
    :cond_2
    invoke-virtual {v2, v3, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 230
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v0, :cond_3

    .line 231
    aget-wide v4, v6, v12

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 232
    aget-wide v4, v8, v12

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 234
    :cond_3
    return-void
.end method

.method private populateBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)V
    .locals 12
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "powerComponentStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p3, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;

    .line 260
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUids()Landroid/util/IntArray;

    move-result-object v4

    .line 261
    .local v4, "uids":Landroid/util/IntArray;
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    .line 266
    .local v5, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v10

    .line 267
    .local v10, "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    iget v0, v10, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v6, v0, [J

    .line 270
    .local v6, "uidStats":[J
    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 271
    const/4 v0, 0x1

    move v7, v0

    .local v0, "breakDownByProcState":Z
    goto :goto_0

    .line 272
    .end local v0    # "breakDownByProcState":Z
    :cond_1
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    nop

    .line 274
    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 275
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    move v7, v0

    .restart local v0    # "breakDownByProcState":Z
    goto :goto_0

    .line 277
    .end local v0    # "breakDownByProcState":Z
    :cond_2
    const/4 v0, 0x0

    move v7, v0

    .line 280
    .local v7, "breakDownByProcState":Z
    :goto_0
    const/4 v0, 0x0

    move v8, v0

    .local v8, "screenState":I
    :goto_1
    const/4 v11, 0x3

    if-ge v8, v11, :cond_8

    .line 281
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    if-nez v8, :cond_4

    .line 283
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_4

    .line 285
    :cond_3
    if-eqz v8, :cond_4

    .line 286
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_4

    .line 289
    :cond_4
    const/4 v0, 0x0

    move v9, v0

    .local v9, "powerState":I
    :goto_2
    if-ge v9, v11, :cond_7

    .line 290
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    if-nez v9, :cond_6

    .line 292
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_3

    .line 294
    :cond_5
    const/4 v0, 0x1

    if-eq v9, v0, :cond_6

    .line 295
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_3

    .line 298
    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local p3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    .local v1, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .local v2, "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .local v3, "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    invoke-direct/range {v0 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateUidBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;Landroid/util/IntArray;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[JZII)V

    .line 289
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    goto :goto_2

    .end local v1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local v2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local v3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    :cond_7
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 280
    .end local v9    # "powerState":I
    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local p3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    .restart local v1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    goto :goto_1

    .end local v1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local v2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local v3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p3    # "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    :cond_8
    nop

    .line 303
    .end local v8    # "screenState":I
    return-void
.end method

.method private populateBatteryLevelInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V
    .locals 5
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryLevelInfo"    # Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    .line 247
    iget-wide v0, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    iget-wide v3, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 248
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v0

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 254
    return-void
.end method

.method private populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 10
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "powerComponentStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 146
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    .line 147
    .local v0, "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    if-nez v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats$Builder;->isSupportedPowerComponent(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    return-void

    .line 155
    :cond_1
    new-instance v1, Lcom/android/server/power/stats/format/PowerStatsLayout;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    move-object v5, v1

    .line 156
    .local v5, "layout":Lcom/android/server/power/stats/format/PowerStatsLayout;
    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v6, v1, [J

    .line 157
    .local v6, "deviceStats":[J
    new-instance v7, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter-IA;)V

    .line 159
    .local v7, "batteryLevelInfo":Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "screenState":I
    :goto_0
    const/4 v1, 0x3

    if-ge v8, v1, :cond_8

    .line 160
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    if-nez v8, :cond_3

    .line 162
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    goto :goto_3

    .line 164
    :cond_2
    if-eqz v8, :cond_3

    .line 165
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    goto :goto_3

    .line 168
    :cond_3
    const/4 v2, 0x0

    move v9, v2

    .local v9, "powerState":I
    :goto_1
    if-ge v9, v1, :cond_7

    .line 169
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    if-eqz v9, :cond_4

    .line 171
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .local v3, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .local v4, "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-direct/range {v2 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V

    goto :goto_2

    .line 170
    .end local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_4
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    move-object v2, p0

    goto :goto_2

    .line 175
    .end local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_5
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    const/4 p1, 0x1

    if-ne v9, p1, :cond_6

    .line 176
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V

    goto :goto_2

    .line 175
    :cond_6
    move-object v2, p0

    .line 168
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_1

    .end local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_7
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 159
    .end local v9    # "powerState":I
    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    .end local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_8
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 182
    .end local v8    # "screenState":I
    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v3    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v4    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->isUidPowerAttributionSupported()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 183
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)V

    .line 186
    :cond_9
    invoke-direct {p0, v3, v7}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryLevelInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V

    .line 187
    return-void
.end method

.method private populateUidBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;Landroid/util/IntArray;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[JZII)V
    .locals 22
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "powerComponentStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p3, "layout"    # Lcom/android/server/power/stats/format/PowerStatsLayout;
    .param p4, "uids"    # Landroid/util/IntArray;
    .param p5, "powerComponent"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .param p6, "uidStats"    # [J
    .param p7, "breakDownByProcState"    # Z
    .param p8, "screenState"    # I
    .param p9, "powerState"    # I

    .line 312
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move/from16 v5, p9

    if-eq v5, v2, :cond_1

    .line 314
    return-void

    .line 312
    :cond_0
    move/from16 v5, p9

    .line 317
    :cond_1
    move-object/from16 v6, p2

    iget v0, v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 320
    .local v0, "powerComponentId":I
    const/4 v3, 0x5

    if-eqz p7, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    new-array v11, v4, [D

    .line 322
    .local v11, "powerByProcState":[D
    if-eqz p7, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-array v12, v3, [J

    .line 323
    .local v12, "durationByProcState":[J
    const-wide/16 v3, 0x0

    .line 324
    .local v3, "powerAllApps":D
    invoke-virtual/range {p4 .. p4}, Landroid/util/IntArray;->size()I

    move-result v7

    sub-int/2addr v7, v2

    move-wide v13, v3

    move v15, v7

    .end local v3    # "powerAllApps":D
    .local v13, "powerAllApps":D
    .local v15, "i":I
    :goto_2
    if-ltz v15, :cond_c

    .line 325
    move-object/from16 v3, p4

    invoke-virtual {v3, v15}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 326
    .local v8, "uid":I
    nop

    .line 327
    invoke-virtual {v1, v8}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v4

    .line 329
    .local v4, "builder":Landroid/os/UidBatteryConsumer$Builder;
    const-wide/16 v9, 0x0

    invoke-static {v11, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    .line 330
    const-wide/16 v2, 0x0

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 332
    nop

    .line 333
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v7

    move-wide/from16 v16, v2

    new-instance v3, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;

    move-object v2, v4

    move/from16 v20, v15

    move-wide/from16 v18, v16

    move/from16 v4, p8

    move-object v15, v7

    move-wide/from16 v16, v9

    move-object/from16 v9, p3

    move-object/from16 v7, p6

    move/from16 v10, p7

    .end local v4    # "builder":Landroid/os/UidBatteryConsumer$Builder;
    .end local v15    # "i":I
    .local v2, "builder":Landroid/os/UidBatteryConsumer$Builder;
    .local v20, "i":I
    invoke-direct/range {v3 .. v12}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;-><init>(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J)V

    .line 332
    invoke-static {v15, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 365
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    move/from16 v3, p8

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 367
    .local v3, "resultScreenState":I
    :goto_3
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    move/from16 v4, p9

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 369
    .local v4, "resultPowerState":I
    :goto_4
    const/4 v6, 0x0

    .local v6, "procState":I
    :goto_5
    array-length v7, v11

    if-ge v6, v7, :cond_8

    .line 370
    aget-wide v9, v11, v6

    .line 371
    .local v9, "power":D
    move v15, v6

    .end local v6    # "procState":I
    .local v15, "procState":I
    aget-wide v5, v12, v15

    .line 372
    .local v5, "duration":J
    cmpl-double v21, v9, v16

    if-nez v21, :cond_6

    cmp-long v21, v5, v18

    if-nez v21, :cond_6

    .line 373
    goto :goto_6

    .line 375
    :cond_6
    invoke-virtual {v2, v0, v15, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v7

    .line 377
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v7, :cond_7

    .line 378
    invoke-virtual {v2, v7, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 379
    invoke-virtual {v2, v7, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 369
    .end local v5    # "duration":J
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v9    # "power":D
    :cond_7
    :goto_6
    add-int/lit8 v6, v15, 0x1

    .end local v15    # "procState":I
    .restart local v6    # "procState":I
    goto :goto_5

    :cond_8
    move v15, v6

    .line 383
    .end local v6    # "procState":I
    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    goto :goto_8

    .line 385
    :goto_7
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/os/UidBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v5

    .line 387
    .local v5, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v5, :cond_b

    .line 388
    aget-wide v9, v11, v7

    invoke-virtual {v2, v5, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 390
    aget-wide v9, v12, v7

    invoke-virtual {v2, v5, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 394
    .end local v5    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_b
    :goto_8
    aget-wide v5, v11, v7

    add-double/2addr v13, v5

    .line 324
    .end local v2    # "builder":Landroid/os/UidBatteryConsumer$Builder;
    .end local v3    # "resultScreenState":I
    .end local v4    # "resultPowerState":I
    .end local v8    # "uid":I
    add-int/lit8 v15, v20, -0x1

    move-object/from16 v6, p2

    move/from16 v5, p9

    const/4 v2, 0x1

    .end local v20    # "i":I
    .local v15, "i":I
    goto/16 :goto_2

    :cond_c
    move/from16 v20, v15

    .line 397
    .end local v15    # "i":I
    nop

    .line 398
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    .line 400
    .local v2, "allAppsScope":Landroid/os/AggregateBatteryConsumer$Builder;
    move/from16 v4, p8

    move/from16 v5, p9

    move v3, v0

    move-object/from16 v0, p0

    .end local v0    # "powerComponentId":I
    .local v3, "powerComponentId":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->getKeyForPartialTotal(Landroid/os/BatteryUsageStats$Builder;Landroid/os/AggregateBatteryConsumer$Builder;III)Landroid/os/BatteryConsumer$Key;

    move-result-object v6

    .line 402
    .local v6, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v6, :cond_d

    .line 403
    invoke-virtual {v2, v6, v13, v14}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 405
    :cond_d
    invoke-virtual {v2, v3, v13, v14}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 406
    return-void
.end method


# virtual methods
.method exportAggregatedPowerStats(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 21
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "history"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p3, "monotonicStartTime"    # J
    .param p5, "monotonicEndTime"    # J

    .line 75
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    monitor-enter v3

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "hasStoredSpans":Z
    move-wide/from16 v4, p3

    .line 78
    .local v4, "maxEndTime":J
    :try_start_0
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v6

    .line 79
    .local v6, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-wide v9, v4

    move v4, v0

    .end local v0    # "hasStoredSpans":Z
    .local v4, "hasStoredSpans":Z
    .local v7, "i":I
    .local v9, "maxEndTime":J
    :goto_0
    if-ltz v7, :cond_a

    .line 80
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-object v5, v0

    .line 81
    .local v5, "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v0

    const-string v8, "aggregated-power-stats"

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    move-object/from16 v16, v6

    move/from16 v17, v7

    goto/16 :goto_6

    .line 85
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 86
    .local v8, "timeFrames":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;>;"
    const-wide v11, 0x7fffffffffffffffL

    .line 87
    .local v11, "spanMinTime":J
    const-wide/high16 v13, -0x8000000000000000L

    .line 88
    .local v13, "spanMaxTime":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v0, v15, :cond_3

    .line 89
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 90
    .local v15, "timeFrame":Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;
    move-object/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v7    # "i":I
    .local v16, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .local v17, "i":I
    iget-wide v6, v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    .line 91
    .local v6, "startMonotonicTime":J
    move-wide/from16 v18, v6

    .end local v6    # "startMonotonicTime":J
    .local v18, "startMonotonicTime":J
    iget-wide v6, v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long v6, v18, v6

    .line 92
    .local v6, "endMonotonicTime":J
    cmp-long v20, v18, v11

    if-gez v20, :cond_1

    .line 93
    move-wide/from16 v11, v18

    .line 95
    :cond_1
    cmp-long v20, v6, v13

    if-lez v20, :cond_2

    .line 96
    move-wide v13, v6

    .line 88
    .end local v6    # "endMonotonicTime":J
    .end local v15    # "timeFrame":Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;
    .end local v18    # "startMonotonicTime":J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v16

    move/from16 v7, v17

    goto :goto_1

    .line 130
    .end local v0    # "j":I
    .end local v4    # "hasStoredSpans":Z
    .end local v5    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .end local v8    # "timeFrames":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;>;"
    .end local v9    # "maxEndTime":J
    .end local v11    # "spanMinTime":J
    .end local v13    # "spanMaxTime":J
    .end local v16    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v17    # "i":I
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 88
    .restart local v0    # "j":I
    .restart local v4    # "hasStoredSpans":Z
    .restart local v5    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .local v6, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .restart local v7    # "i":I
    .restart local v8    # "timeFrames":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;>;"
    .restart local v9    # "maxEndTime":J
    .restart local v11    # "spanMinTime":J
    .restart local v13    # "spanMaxTime":J
    :cond_3
    move-object/from16 v16, v6

    move/from16 v17, v7

    .line 100
    .end local v0    # "j":I
    .end local v6    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v7    # "i":I
    .restart local v16    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .restart local v17    # "i":I
    cmp-long v0, v11, p3

    nop

    if-ltz v0, :cond_9

    cmp-long v0, v13, p5

    if-ltz v0, :cond_4

    .line 101
    goto/16 :goto_6

    .line 104
    :cond_4
    cmp-long v0, v13, v9

    if-lez v0, :cond_5

    .line 105
    move-wide v9, v13

    .line 108
    :cond_5
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v6

    const-string v15, "aggregated-power-stats"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v6, v7, v15}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .line 110
    .local v6, "span":Lcom/android/server/power/stats/PowerStatsSpan;
    if-nez v6, :cond_6

    .line 111
    :try_start_1
    const-string v0, "PowerStatsExporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not read PowerStatsStore section "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    if-eqz v6, :cond_9

    :goto_2
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 108
    :catchall_1
    move-exception v0

    move v7, v4

    move-object v4, v0

    goto :goto_4

    .line 114
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_7

    .line 116
    const/4 v4, 0x1

    .line 117
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 118
    .local v15, "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    move-object/from16 v18, v15

    check-cast v18, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    .line 119
    move-object/from16 v19, v0

    .end local v0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    .local v19, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object v0

    .line 118
    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .end local v15    # "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v19

    goto :goto_3

    .end local v19    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    .restart local v0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    :cond_7
    move-object/from16 v19, v0

    .line 121
    .end local v0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    .end local v7    # "k":I
    goto :goto_2

    .line 108
    .end local v4    # "hasStoredSpans":Z
    .local v7, "hasStoredSpans":Z
    :goto_4
    if-eqz v6, :cond_8

    :try_start_4
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    nop

    .end local p0    # "this":Lcom/android/server/power/stats/processor/PowerStatsExporter;
    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "history":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p3    # "monotonicStartTime":J
    .end local p5    # "monotonicEndTime":J
    throw v4

    .line 79
    .end local v5    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .end local v6    # "span":Lcom/android/server/power/stats/PowerStatsSpan;
    .end local v7    # "hasStoredSpans":Z
    .end local v8    # "timeFrames":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;>;"
    .end local v11    # "spanMinTime":J
    .end local v13    # "spanMaxTime":J
    .restart local v4    # "hasStoredSpans":Z
    .restart local p0    # "this":Lcom/android/server/power/stats/processor/PowerStatsExporter;
    .restart local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local p2    # "history":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p3    # "monotonicStartTime":J
    .restart local p5    # "monotonicEndTime":J
    :cond_9
    :goto_6
    add-int/lit8 v7, v17, -0x1

    move-object/from16 v6, v16

    .end local v17    # "i":I
    .local v7, "i":I
    goto/16 :goto_0

    .end local v16    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .local v6, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    :cond_a
    move-object/from16 v16, v6

    move/from16 v17, v7

    .line 124
    .end local v6    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v7    # "i":I
    .restart local v16    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    if-eqz v4, :cond_b

    iget-wide v5, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    sub-long v5, p5, v5

    cmp-long v0, v9, v5

    if-gez v0, :cond_c

    .line 126
    :cond_b
    iget-object v7, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v13, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;

    invoke-direct {v13, v1, v2}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;)V

    move-object/from16 v8, p2

    move-wide/from16 v11, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    .line 129
    :cond_c
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->reset()V

    .line 130
    .end local v4    # "hasStoredSpans":Z
    .end local v9    # "maxEndTime":J
    .end local v16    # "spans":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    monitor-exit v3

    .line 131
    return-void

    .line 130
    :goto_7
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 3
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "stats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 136
    nop

    .line 137
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "powerComponentStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {p0, p1, v2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 138
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 141
    .end local v1    # "i":I
    return-void
.end method

.method public setPowerComponentEnabled(IZ)V
    .locals 1
    .param p1, "powerComponentId"    # I
    .param p2, "enabled"    # Z

    .line 467
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->setPowerComponentEnabled(IZ)V

    .line 468
    return-void
.end method
