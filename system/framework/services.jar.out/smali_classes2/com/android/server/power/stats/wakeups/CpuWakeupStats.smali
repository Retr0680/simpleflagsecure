.class public Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;,
        Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;,
        Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    }
.end annotation


# static fields
.field private static final SUBSYSTEM_ALARM_STRING:Ljava/lang/String; = "Alarm"

.field private static final SUBSYSTEM_BLUETOOTH_STRING:Ljava/lang/String; = "Bluetooth"

.field private static final SUBSYSTEM_CELLULAR_DATA_STRING:Ljava/lang/String; = "Cellular_data"

.field private static final SUBSYSTEM_SENSOR_STRING:Ljava/lang/String; = "Sensor"

.field private static final SUBSYSTEM_SOUND_TRIGGER_STRING:Ljava/lang/String; = "Sound_trigger"

.field private static final SUBSYSTEM_WIFI_STRING:Ljava/lang/String; = "Wifi"

.field private static final TAG:Ljava/lang/String; = "CpuWakeupStats"

.field private static final TRACE_TRACK_WAKEUP_ATTRIBUTION:Ljava/lang/String; = "wakeup_attribution"

.field private static final WAKEUP_WRITE_DELAY_MS:J


# instance fields
.field final mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

.field private final mHandler:Landroid/os/Handler;

.field private final mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

.field private final mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

.field private final mReusableUidProcStates:Landroid/util/SparseIntArray;

.field final mUidProcStates:Landroid/util/SparseIntArray;

.field final mWakeupAttribution:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWakeupEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$d7dhXD3GZkZXJedQxynsy4Ps-WI(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->lambda$noteWakeupTimeAndReason$1(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-D7NPzbgSwY5OseXB1GuV8c9rM(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapRes"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-direct {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 78
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 82
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 90
    invoke-static {p1, p2}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->getInstance(Landroid/content/Context;I)Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 91
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    new-instance v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;-><init>(Ljava/util/function/LongSupplier;)V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 93
    iput-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method private declared-synchronized attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 12
    .param p1, "wakeup"    # Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 253
    .local v0, "subsystems":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 254
    .local v1, "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_0

    .line 255
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 256
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v3, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 250
    .end local v0    # "subsystems":Landroid/util/SparseBooleanArray;
    .end local v1    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 258
    .restart local v0    # "subsystems":Landroid/util/SparseBooleanArray;
    .restart local v1    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local p1    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v2, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 260
    .local v2, "matchingWindowMillis":J
    const/4 v4, 0x0

    .local v4, "subsystemIdx":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 261
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move v7, v5

    .line 265
    .local v7, "subsystem":I
    iget-wide v5, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    sub-long v8, v5, v2

    .line 266
    .local v8, "startTime":J
    iget-wide v5, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    add-long v10, v5, v2

    .line 268
    .local v10, "endTime":J
    iget-object v6, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->removeBetween(IJJ)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 270
    .local v5, "uidsToBlame":Landroid/util/SparseIntArray;
    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v5    # "uidsToBlame":Landroid/util/SparseIntArray;
    .end local v7    # "subsystem":I
    .end local v8    # "startTime":J
    .end local v10    # "endTime":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 272
    .end local v4    # "subsystemIdx":I
    monitor-exit p0

    return-void

    .line 250
    .end local v0    # "subsystems":Landroid/util/SparseBooleanArray;
    .end local v1    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v2    # "matchingWindowMillis":J
    .end local p1    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z
    .locals 13
    .param p1, "subsystem"    # I
    .param p2, "activityElapsed"    # J
    .param p4, "uidProcStates"    # Landroid/util/SparseIntArray;

    move-object/from16 v0, p4

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v1, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 278
    .local v1, "matchingWindowMillis":J
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    sub-long v4, p2, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result v3

    .line 280
    .local v3, "startIdx":I
    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    add-long v5, p2, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result v4

    .line 283
    .local v4, "endIdx":I
    move v5, v3

    .local v5, "wakeupIdx":I
    :goto_0
    if-gt v5, v4, :cond_4

    .line 284
    iget-object v6, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 285
    .local v6, "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    iget-object v7, v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 286
    .local v7, "subsystems":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 289
    iget-object v8, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v9, v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 291
    .local v8, "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    if-nez v8, :cond_0

    .line 292
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v9

    .line 293
    iget-object v9, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v10, v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 275
    .end local v1    # "matchingWindowMillis":J
    .end local v3    # "startIdx":I
    .end local v4    # "endIdx":I
    .end local v5    # "wakeupIdx":I
    .end local v6    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .end local v7    # "subsystems":Landroid/util/SparseBooleanArray;
    .end local v8    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "subsystem":I
    .end local p2    # "activityElapsed":J
    .end local p4    # "uidProcStates":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 295
    .restart local v1    # "matchingWindowMillis":J
    .restart local v3    # "startIdx":I
    .restart local v4    # "endIdx":I
    .restart local v5    # "wakeupIdx":I
    .restart local v6    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .restart local v7    # "subsystems":Landroid/util/SparseBooleanArray;
    .restart local v8    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local p1    # "subsystem":I
    .restart local p2    # "activityElapsed":J
    .restart local p4    # "uidProcStates":Landroid/util/SparseIntArray;
    :cond_0
    :goto_1
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    .line 296
    .local v9, "uidsToBlame":Landroid/util/SparseIntArray;
    if-nez v9, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v10

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 299
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 300
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 303
    .end local v10    # "i":I
    :cond_2
    :goto_3
    monitor-exit p0

    const/4 v10, 0x1

    return v10

    .line 286
    .end local v8    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v9    # "uidsToBlame":Landroid/util/SparseIntArray;
    :cond_3
    nop

    .line 283
    .end local v6    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .end local v7    # "subsystems":Landroid/util/SparseBooleanArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 306
    .end local v5    # "wakeupIdx":I
    monitor-exit p0

    const/4 v5, 0x0

    return v5

    .line 275
    .end local v1    # "matchingWindowMillis":J
    .end local v3    # "startIdx":I
    .end local v4    # "endIdx":I
    .end local p1    # "subsystem":I
    .end local p2    # "activityElapsed":J
    .end local p4    # "uidProcStates":Landroid/util/SparseIntArray;
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$new$0()J
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    return-wide v0
.end method

.method private synthetic lambda$noteWakeupTimeAndReason$1(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 0
    .param p1, "parsedWakeup"    # Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->logWakeupAttribution(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    return-void
.end method

.method private declared-synchronized logWakeupAttribution(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 19
    .param p1, "wakeupToLog"    # Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_0

    .line 132
    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    const/4 v11, 0x0

    const/16 v5, 0x24c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 138
    const-string/jumbo v2, "wakeup_attribution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " --"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 130
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "wakeupToLog":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 143
    .restart local p1    # "wakeupToLog":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v5, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 145
    .local v2, "wakeupAttribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_1

    .line 148
    const-string v3, "CpuWakeupStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected null attribution found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v5, "traceEventBuilder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 155
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 156
    .local v7, "subsystem":I
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 160
    .local v8, "uidProcStates":Landroid/util/SparseIntArray;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 164
    .local v9, "numUids":I
    new-array v10, v9, [I

    .line 165
    .local v10, "uids":[I
    new-array v11, v9, [I

    .line 166
    .local v11, "procStatesProto":[I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v9, :cond_4

    .line 167
    invoke-virtual {v8, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    aput v13, v10, v12

    .line 168
    nop

    .line 169
    invoke-virtual {v8, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 168
    invoke-static {v13}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v13

    aput v13, v11, v12

    .line 166
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    move-object v15, v10

    move-object/from16 v18, v11

    goto :goto_3

    .line 161
    .end local v9    # "numUids":I
    .end local v10    # "uids":[I
    .end local v11    # "procStatesProto":[I
    .end local v12    # "j":I
    :goto_2
    const/4 v9, 0x0

    new-array v9, v9, [I

    move-object v11, v9

    .restart local v11    # "procStatesProto":[I
    move-object v10, v9

    move-object v15, v10

    move-object/from16 v18, v11

    .line 172
    .end local v11    # "procStatesProto":[I
    .local v15, "uids":[I
    .local v18, "procStatesProto":[I
    :goto_3
    iget v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 173
    invoke-static {v9}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->typeToStatsType(I)I

    move-result v13

    .line 174
    invoke-static {v7}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToStatsReason(I)I

    move-result v14

    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 172
    const/16 v12, 0x24c

    move-wide/from16 v16, v9

    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 179
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 180
    if-nez v6, :cond_5

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_5
    invoke-static {v7}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v7    # "subsystem":I
    .end local v8    # "uidProcStates":Landroid/util/SparseIntArray;
    .end local v15    # "uids":[I
    .end local v18    # "procStatesProto":[I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    nop

    .line 189
    .end local v6    # "i":I
    const-string/jumbo v6, "wakeup_attribution"

    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-static {v3, v4, v6, v7}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 130
    .end local v2    # "wakeupAttribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v5    # "traceEventBuilder":Ljava/lang/StringBuilder;
    .end local p1    # "wakeupToLog":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static stringToKnownSubsystem(Ljava/lang/String;)I
    .locals 7
    .param p0, "rawSubsystem"    # Ljava/lang/String;

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "Alarm"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "Wifi"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "Bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "Sound_trigger"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "Cellular_data"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "Sensor"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    move v0, v6

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 520
    return v6

    .line 518
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 516
    :pswitch_1
    return v4

    .line 514
    :pswitch_2
    return v2

    .line 512
    :pswitch_3
    return v1

    .line 510
    :pswitch_4
    return v3

    .line 508
    :pswitch_5
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x6c9ac026 -> :sswitch_5
        -0x41b3aec1 -> :sswitch_4
        -0x194b8998 -> :sswitch_3
        -0x13331d72 -> :sswitch_2
        0x292335 -> :sswitch_1
        0x3c68a31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static subsystemToStatsReason(I)I
    .locals 1
    .param p0, "subsystem"    # I

    .line 115
    packed-switch p0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 123
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 121
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 119
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 117
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static subsystemToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "subsystem"    # I

    .line 524
    packed-switch p0, :pswitch_data_0

    .line 540
    :pswitch_0
    const-string v0, "N/A"

    return-object v0

    .line 536
    :pswitch_1
    const-string v0, "Bluetooth"

    return-object v0

    .line 534
    :pswitch_2
    const-string v0, "Cellular_data"

    return-object v0

    .line 532
    :pswitch_3
    const-string v0, "Sensor"

    return-object v0

    .line 530
    :pswitch_4
    const-string v0, "Sound_trigger"

    return-object v0

    .line 528
    :pswitch_5
    const-string v0, "Wifi"

    return-object v0

    .line 526
    :pswitch_6
    const-string v0, "Alarm"

    return-object v0

    .line 538
    :pswitch_7
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static typeToStatsType(I)I
    .locals 1
    .param p0, "wakeupType"    # I

    .line 105
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 107
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 109
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 16
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowElapsed"    # J

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    monitor-enter p0

    .line 311
    :try_start_0
    const-string v4, "CPU wakeup stats:"

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 314
    iget-object v4, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-virtual {v4, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 315
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 317
    iget-object v4, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    invoke-virtual {v4, v0}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 318
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 320
    iget-object v4, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 321
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current proc-state map ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 325
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 326
    if-lez v4, :cond_0

    .line 327
    const-string v5, ", "

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "pw":Landroid/util/IndentingPrintWriter;
    .end local p2    # "nowElapsed":J
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 329
    .restart local v4    # "i":I
    .restart local p1    # "pw":Landroid/util/IndentingPrintWriter;
    .restart local p2    # "nowElapsed":J
    :cond_0
    :goto_1
    iget-object v5, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 332
    .end local v4    # "i":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 333
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 336
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 337
    .local v4, "attributionStats":Landroid/util/SparseLongArray;
    const-string v5, "Wakeup events:"

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    iget-object v5, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_8

    .line 340
    iget-object v6, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 341
    const-string v6, ":"

    invoke-virtual {v0, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 344
    iget-object v6, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 345
    .local v6, "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    invoke-virtual {v0, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 346
    const-string v7, "Attribution: "

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v7, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v8, v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 349
    .local v7, "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    if-nez v7, :cond_2

    .line 350
    const-string v8, "N/A"

    invoke-virtual {v0, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 352
    :cond_2
    const/4 v8, 0x0

    .local v8, "subsystemIdx":I
    :goto_3
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 353
    if-lez v8, :cond_3

    .line 354
    const-string v9, ", "

    invoke-virtual {v0, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    :cond_3
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 357
    const/4 v10, 0x0

    invoke-static {v10, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    .line 356
    invoke-virtual {v4, v9, v10, v11}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v9

    .line 358
    .local v9, "counters":J
    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v11

    .line 359
    .local v11, "attributed":I
    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    .line 361
    .local v12, "total":I
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    const-string v13, " ["

    invoke-virtual {v0, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseIntArray;

    .line 364
    .local v13, "uidProcStates":Landroid/util/SparseIntArray;
    if-eqz v13, :cond_6

    .line 365
    const/4 v14, 0x0

    .local v14, "uidIdx":I
    :goto_4
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 366
    if-lez v14, :cond_4

    .line 367
    const-string v15, ", "

    invoke-virtual {v0, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 369
    :cond_4
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-static {v0, v15}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 370
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 370
    invoke-static {v2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 365
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, p2

    goto :goto_4

    :cond_5
    nop

    .line 373
    .end local v14    # "uidIdx":I
    add-int/lit8 v11, v11, 0x1

    .line 375
    :cond_6
    const-string v2, "]"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 378
    invoke-static {v11, v12}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v14

    .line 377
    invoke-virtual {v4, v2, v14, v15}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 352
    .end local v9    # "counters":J
    .end local v11    # "attributed":I
    .end local v12    # "total":I
    .end local v13    # "uidProcStates":Landroid/util/SparseIntArray;
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v2, p2

    goto/16 :goto_3

    :cond_7
    nop

    .line 380
    .end local v8    # "subsystemIdx":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 382
    :goto_5
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    nop

    .end local v6    # "wakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .end local v7    # "attribution":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v2, p2

    goto/16 :goto_2

    :cond_8
    nop

    .line 384
    .end local v5    # "i":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 386
    const-string v2, "Attribution stats:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subsystem "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string v3, ": "

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 392
    .local v5, "ratio":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .end local v5    # "ratio":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    nop

    .line 394
    .end local v2    # "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 397
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    .line 310
    .end local v4    # "attributionStats":Landroid/util/SparseLongArray;
    .end local p1    # "pw":Landroid/util/IndentingPrintWriter;
    .end local p2    # "nowElapsed":J
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized noteUidProcessState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "uid":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized noteWakeupTimeAndReason(JJLjava/lang/String;)V
    .locals 8
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "rawReason"    # Ljava/lang/String;

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-wide v1, p1

    move-wide v3, p3

    move-object v0, p5

    .end local p1    # "elapsedRealtime":J
    .end local p3    # "uptime":J
    .end local p5    # "rawReason":Ljava/lang/String;
    .local v0, "rawReason":Ljava/lang/String;
    .local v1, "elapsedRealtime":J
    .local v3, "uptime":J
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .local p1, "parsedWakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    if-nez p1, :cond_0

    .line 214
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    .line 222
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide p2, p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 223
    .local p2, "retentionDuration":J
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    sub-long v5, v1, p2

    invoke-virtual {p4, v5, v6}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p4

    .line 224
    .local p4, "lastIdx":I
    move p5, p4

    .local p5, "i":I
    :goto_0
    if-ltz p5, :cond_1

    .line 225
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v5, p5}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 224
    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    .line 209
    .end local v0    # "rawReason":Ljava/lang/String;
    .end local v1    # "elapsedRealtime":J
    .end local v3    # "uptime":J
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "parsedWakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .end local p2    # "retentionDuration":J
    .end local p4    # "lastIdx":I
    .end local p5    # "i":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 224
    .restart local v0    # "rawReason":Ljava/lang/String;
    .restart local v1    # "elapsedRealtime":J
    .restart local v3    # "uptime":J
    .restart local p1    # "parsedWakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .restart local p2    # "retentionDuration":J
    .restart local p4    # "lastIdx":I
    .restart local p5    # "i":I
    :cond_1
    nop

    .line 227
    .end local p5    # "i":I
    iget-object p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    sub-long v5, v1, p2

    invoke-virtual {p5, v5, v6}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p5

    .line 228
    .end local p4    # "lastIdx":I
    .local p5, "lastIdx":I
    move p4, p5

    .local p4, "i":I
    :goto_1
    if-ltz p4, :cond_2

    .line 229
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    invoke-virtual {v5, p4}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 228
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 231
    .end local p4    # "i":I
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    sget-wide v6, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    invoke-virtual {p4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 209
    .end local v0    # "rawReason":Ljava/lang/String;
    .end local v1    # "elapsedRealtime":J
    .end local v3    # "uptime":J
    .end local p1    # "parsedWakeup":Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .end local p2    # "retentionDuration":J
    .end local p5    # "lastIdx":I
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized noteWakingActivity(IJ[I)V
    .locals 6
    .param p1, "subsystem"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uids"    # [I

    monitor-enter p0

    .line 236
    if-nez p4, :cond_0

    .line 237
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    aget v2, p4, v0

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    aget v4, p4, v0

    .line 242
    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 241
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "subsystem":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uids":[I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 240
    .restart local v0    # "i":I
    .restart local p1    # "subsystem":I
    .restart local p2    # "elapsedRealtime":J
    .restart local p4    # "uids":[I
    :cond_1
    nop

    .line 244
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->recordActivity(IJLandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_2
    monitor-exit p0

    return-void

    .line 235
    .end local p1    # "subsystem":I
    .end local p2    # "elapsedRealtime":J
    .end local p4    # "uids":[I
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized systemServicesReady()V
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->register(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
