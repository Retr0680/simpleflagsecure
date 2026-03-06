.class public Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsPerUidLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;
    }
.end annotation


# static fields
.field private static final STATSD_METRIC_MAX_DIMENSIONS_COUNT:I = 0xbb8

.field private static final UID_PROCESS_STATES:[I


# instance fields
.field private final mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1197
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V
    .locals 0
    .param p1, "frameworkStatsLogger"    # Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    .line 1217
    return-void
.end method

.method private addStatsAtom(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIJLjava/lang/String;FFJ)Z
    .locals 20
    .param p2, "sessionInfo"    # Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;
    .param p3, "uid"    # I
    .param p4, "processState"    # I
    .param p5, "timeInStateMillis"    # J
    .param p7, "powerComponentName"    # Ljava/lang/String;
    .param p8, "totalConsumedPowerMah"    # F
    .param p9, "powerComponentMah"    # F
    .param p10, "powerComponentDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;",
            "IIJ",
            "Ljava/lang/String;",
            "FFJ)Z"
        }
    .end annotation

    .line 1362
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    .line 1363
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs()J

    move-result-wide v2

    .line 1364
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs()J

    move-result-wide v4

    .line 1365
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration()J

    move-result-wide v6

    .line 1366
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage()I

    move-result v8

    .line 1367
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration()J

    move-result-wide v9

    .line 1362
    move/from16 v11, p3

    move/from16 v12, p4

    move-wide/from16 v13, p5

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-wide/from16 v18, p10

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;->buildStatsEvent(JJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xbb8

    if-ne v1, v3, :cond_0

    .line 1378
    const-string v1, "BatteryStatsService"

    const-string v3, "BATTERY_USAGE_STATS_PER_UID is complete reaching dimension guardrail"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/4 v1, 0x0

    return v1

    .line 1384
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z
    .locals 18
    .param p2, "sessionInfo"    # Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;
    .param p3, "uid"    # I
    .param p4, "processState"    # I
    .param p5, "totalConsumedPowerMah"    # F
    .param p6, "timeInState"    # J
    .param p8, "batteryConsumer"    # Landroid/os/BatteryConsumer;
    .param p9, "componentId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;",
            "IIFJ",
            "Landroid/os/BatteryConsumer;",
            "I)Z"
        }
    .end annotation

    .line 1321
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p8

    move/from16 v5, p4

    move/from16 v13, p9

    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v14

    .line 1322
    .local v14, "key":Landroid/os/BatteryConsumer$Key;
    const/4 v1, 0x1

    if-nez v14, :cond_0

    .line 1323
    return v1

    .line 1326
    :cond_0
    invoke-virtual/range {p8 .. p9}, Landroid/os/BatteryConsumer;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v8

    .line 1327
    .local v8, "powerComponentName":Ljava/lang/String;
    invoke-virtual {v0, v14}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v2

    .line 1328
    .local v2, "consumedPowerMah":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1329
    invoke-static {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(DLjava/lang/String;)F

    move-result v10

    .line 1331
    .local v10, "powerMah":F
    invoke-virtual {v0, v14}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v11

    .line 1332
    .local v11, "powerComponentDurationMillis":J
    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-nez v4, :cond_1

    const-wide/16 v15, 0x0

    cmp-long v4, v11, v15

    if-nez v4, :cond_1

    .line 1333
    return v1

    .line 1336
    :cond_1
    move-object/from16 v1, p0

    move/from16 v9, p5

    move-wide v15, v2

    move v4, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p6

    .end local v2    # "consumedPowerMah":D
    .local v15, "consumedPowerMah":D
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsAtom(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIJLjava/lang/String;FFJ)Z

    move-result v17

    return v17
.end method

.method private static clampPowerMah(DLjava/lang/String;)F
    .locals 3
    .param p0, "powerMah"    # D
    .param p2, "consumer"    # Ljava/lang/String;

    .line 1220
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 1221
    .local v0, "resultPowerMah":F
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    const/4 v0, 0x0

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reported powerMah float overflow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    return v0
.end method


# virtual methods
.method public logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I
    .locals 24
    .param p1, "bus"    # Landroid/os/BatteryUsageStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1234
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;

    .line 1236
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v1

    .line 1237
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v3

    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v5

    .line 1239
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v7

    .line 1240
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargeDurationMs()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;-><init>(JJJIJ)V

    move-object v3, v0

    .line 1244
    .local v3, "sessionInfo":Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;
    nop

    .line 1245
    const/4 v0, 0x0

    move-object/from16 v11, p1

    invoke-virtual {v11, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v9

    .line 1248
    .local v9, "deviceConsumer":Landroid/os/BatteryConsumer;
    nop

    .line 1249
    invoke-virtual {v9}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v1

    const-string v4, "AggregateBatteryConsumer"

    invoke-static {v1, v2, v4}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(DLjava/lang/String;)F

    move-result v6

    .line 1252
    .local v6, "totalDeviceConsumedPowerMah":F
    invoke-virtual {v9}, Landroid/os/BatteryConsumer;->getPowerComponentIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v0

    :goto_0
    const/16 v15, 0x12

    if-ge v14, v13, :cond_3

    aget v10, v12, v14

    .line 1253
    .local v10, "powerComponentId":I
    if-ne v10, v15, :cond_0

    .line 1254
    move/from16 v19, v6

    move-object/from16 v18, v9

    goto :goto_2

    .line 1257
    :cond_0
    sget-object v15, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    array-length v1, v15

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v5, v15, v2

    .line 1259
    .local v5, "processState":I
    const/4 v4, -0x1

    const-wide/16 v7, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z

    move-result v4

    move/from16 v19, v6

    move-object/from16 v18, v9

    .end local v6    # "totalDeviceConsumedPowerMah":F
    .end local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v18, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v19, "totalDeviceConsumedPowerMah":F
    if-nez v4, :cond_1

    .line 1268
    return v0

    .line 1259
    :cond_1
    nop

    .line 1257
    .end local v5    # "processState":I
    add-int/lit8 v2, v17, 0x1

    move/from16 v1, v16

    move-object/from16 v9, v18

    move/from16 v6, v19

    goto :goto_1

    .end local v18    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v19    # "totalDeviceConsumedPowerMah":F
    .restart local v6    # "totalDeviceConsumedPowerMah":F
    .restart local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    :cond_2
    move/from16 v19, v6

    move-object/from16 v18, v9

    .line 1252
    .end local v6    # "totalDeviceConsumedPowerMah":F
    .end local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v10    # "powerComponentId":I
    .restart local v18    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v19    # "totalDeviceConsumedPowerMah":F
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v18

    move/from16 v6, v19

    goto :goto_0

    .line 1273
    .end local v18    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v19    # "totalDeviceConsumedPowerMah":F
    .restart local v6    # "totalDeviceConsumedPowerMah":F
    .restart local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    :cond_3
    move/from16 v19, v6

    move-object/from16 v18, v9

    .end local v6    # "totalDeviceConsumedPowerMah":F
    .end local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v18    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v19    # "totalDeviceConsumedPowerMah":F
    invoke-virtual {v11}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v12

    .line 1274
    .local v12, "uidConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$$ExternalSyntheticLambda0;-><init>()V

    .line 1275
    invoke-static {v1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 1276
    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    .line 1274
    invoke-interface {v12, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1279
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/UidBatteryConsumer;

    .line 1280
    .local v9, "uidConsumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v4

    .line 1282
    .local v4, "uid":I
    nop

    .line 1283
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uidConsumer-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(DLjava/lang/String;)F

    move-result v6

    .line 1286
    .local v6, "totalConsumedPowerMah":F
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer;->getPowerComponentIds()[I

    move-result-object v14

    array-length v1, v14

    move v2, v0

    :goto_4
    nop

    if-ge v2, v1, :cond_7

    aget v10, v14, v2

    .line 1287
    .restart local v10    # "powerComponentId":I
    if-ne v10, v15, :cond_4

    .line 1288
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_6

    .line 1291
    :cond_4
    sget-object v5, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    array-length v7, v5

    move v8, v0

    :goto_5
    if-ge v8, v7, :cond_6

    move-object/from16 v16, v5

    aget v5, v16, v8

    .line 1293
    .restart local v5    # "processState":I
    move/from16 v17, v7

    move/from16 v20, v8

    invoke-virtual {v9, v5}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v7

    .line 1295
    .local v7, "timeInProcessStateMs":J
    move/from16 v21, v17

    move/from16 v22, v20

    move/from16 v17, v2

    move-object/from16 v20, v16

    move-object/from16 v2, p2

    move/from16 v16, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z

    move-result v23

    if-nez v23, :cond_5

    .line 1304
    return v0

    .line 1295
    :cond_5
    nop

    .line 1291
    .end local v5    # "processState":I
    .end local v7    # "timeInProcessStateMs":J
    add-int/lit8 v8, v22, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v5, v20

    move/from16 v7, v21

    goto :goto_5

    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1286
    .end local v10    # "powerComponentId":I
    :goto_6
    add-int/lit8 v2, v17, 0x1

    move/from16 v1, v16

    goto :goto_4

    .line 1308
    .end local v4    # "uid":I
    .end local v6    # "totalConsumedPowerMah":F
    .end local v9    # "uidConsumer":Landroid/os/UidBatteryConsumer;
    :cond_7
    goto :goto_3

    .line 1309
    :cond_8
    return v0
.end method
