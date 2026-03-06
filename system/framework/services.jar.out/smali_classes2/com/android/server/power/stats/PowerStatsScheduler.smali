.class public Lcom/android/server/power/stats/PowerStatsScheduler;
.super Ljava/lang/Object;
.source "PowerStatsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;
    }
.end annotation


# static fields
.field private static final HOUR_IN_MILLIS:J

.field private static final MINUTE_IN_MILLIS:J


# instance fields
.field private final mAggregatedPowerStatsSpanDuration:J

.field private final mAlarmScheduler:Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;

.field private final mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final mClock:Lcom/android/internal/os/Clock;

.field private final mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEnablePeriodicPowerStatsCollection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastSavedSpanEndMonotonicTime:J

.field private final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field private final mPowerStatsAggregationPeriod:J

.field private final mPowerStatsCollector:Ljava/lang/Runnable;

.field private final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$A6OydxDj4LKVteNt5ZYU4lToLmU(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->scheduleNextPowerStatsAggregation()V

    return-void
.end method

.method public static synthetic $r8$lambda$GEaV9AQjfxC9uJ1Tfs7f2eF4_H0(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->aggregateAndStorePowerStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$bBYp7BRsiXHz0vRORJ0fnRsuTms(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->lambda$scheduleNextPowerStatsAggregation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zdu2Z7OeqOXZT7qd3JiK1VMbnoE(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/PowerStatsScheduler;->lambda$aggregateAndDumpPowerStats$1(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/PowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 0
    .param p1, "powerStatsCollector"    # Ljava/lang/Runnable;
    .param p2, "batteryStatsHistory"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p3, "powerAttributor"    # Lcom/android/server/power/stats/PowerAttributor;
    .param p4, "aggregatedPowerStatsSpanDuration"    # J
    .param p6, "powerStatsAggregationPeriod"    # J
    .param p8, "powerStatsStore"    # Lcom/android/server/power/stats/PowerStatsStore;
    .param p9, "alarmScheduler"    # Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;
    .param p10, "clock"    # Lcom/android/internal/os/Clock;
    .param p11, "monotonicClock"    # Lcom/android/internal/os/MonotonicClock;
    .param p13, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/android/internal/os/BatteryStatsHistory;",
            "Lcom/android/server/power/stats/PowerAttributor;",
            "JJ",
            "Lcom/android/server/power/stats/PowerStatsStore;",
            "Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/internal/os/MonotonicClock;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 75
    .local p12, "earliestAvailableBatteryHistoryTimeMs":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 77
    iput-object p3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 78
    iput-wide p4, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    .line 79
    iput-wide p6, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    .line 80
    iput-object p8, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 81
    iput-object p9, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;

    .line 82
    iput-object p10, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    .line 83
    iput-object p11, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 84
    iput-object p13, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Ljava/lang/Runnable;

    .line 86
    iput-object p12, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

    .line 87
    return-void
.end method

.method private aggregateAndStorePowerStats()V
    .locals 18

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 121
    .local v8, "currentTimeMillis":J
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v6

    .line 122
    .local v6, "currentMonotonicTime":J
    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    move-result-wide v1

    .line 123
    .local v1, "startTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 124
    iget-object v3, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_0

    .line 123
    :cond_0
    move-wide v10, v1

    .line 126
    .end local v1    # "startTime":J
    .local v10, "startTime":J
    :goto_0
    iget-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    add-long v2, v10, v1

    iget-wide v4, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    invoke-static/range {v2 .. v9}, Lcom/android/server/power/stats/PowerStatsScheduler;->alignToWallClock(JJJJ)J

    move-result-wide v1

    move-wide/from16 v16, v1

    move-wide v14, v10

    .line 128
    .end local v10    # "startTime":J
    .local v14, "startTime":J
    .local v16, "endTimeMs":J
    :goto_1
    cmp-long v1, v16, v6

    if-gtz v1, :cond_1

    .line 129
    iget-object v12, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v13, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-interface/range {v12 .. v17}, Lcom/android/server/power/stats/PowerAttributor;->storeEstimatedPowerConsumption(Lcom/android/internal/os/BatteryStatsHistory;JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 131
    move-wide/from16 v14, v16

    .line 132
    iget-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    add-long v16, v16, v1

    goto :goto_1

    .line 134
    :cond_1
    return-void
.end method

.method public static alignToWallClock(JJJJ)J
    .locals 13
    .param p0, "targetMonotonicTime"    # J
    .param p2, "interval"    # J
    .param p4, "currentMonotonicTime"    # J
    .param p6, "currentTimeMillis"    # J

    .line 175
    sub-long v0, p0, p4

    add-long v0, p6, v0

    .line 177
    .local v0, "targetWallClockTime":J
    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    cmp-long v2, p2, v2

    const/16 v3, 0xe

    const/16 v4, 0xd

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const-wide/16 v8, 0x1

    const/4 v10, 0x0

    if-ltz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    rem-long/2addr v11, p2

    cmp-long v2, v11, v5

    if-nez v2, :cond_0

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 182
    .local v2, "cal":Ljava/util/Calendar;
    sget-wide v5, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    add-long/2addr v5, v0

    sub-long/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 183
    invoke-virtual {v2, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 184
    invoke-virtual {v2, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 187
    sget-wide v3, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    div-long v3, p2, v3

    long-to-int v3, v3

    .line 188
    .local v3, "intervalInMinutes":I
    nop

    .line 189
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    mul-int/2addr v4, v3

    .line 188
    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 192
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 193
    .local v4, "adjustment":J
    add-long v6, p0, v4

    return-wide v6

    .line 194
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "intervalInMinutes":I
    .end local v4    # "adjustment":J
    :cond_0
    sget-wide v11, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    cmp-long v2, p2, v11

    if-ltz v2, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    rem-long/2addr v11, p2

    cmp-long v2, v11, v5

    if-nez v2, :cond_1

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 199
    .restart local v2    # "cal":Ljava/util/Calendar;
    sget-wide v5, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    add-long/2addr v5, v0

    sub-long/2addr v5, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    invoke-virtual {v2, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 201
    invoke-virtual {v2, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 202
    invoke-virtual {v2, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 205
    sget-wide v3, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    div-long v3, p2, v3

    long-to-int v3, v3

    .line 206
    .local v3, "intervalInHours":I
    nop

    .line 207
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v3

    mul-int/2addr v5, v3

    .line 206
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 210
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 211
    .restart local v4    # "adjustment":J
    add-long v6, p0, v4

    return-wide v6

    .line 214
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "intervalInHours":I
    .end local v4    # "adjustment":J
    :cond_1
    return-wide p0
.end method

.method private awaitCompletion()V
    .locals 3

    .line 226
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 227
    .local v0, "done":Landroid/os/ConditionVariable;
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 229
    return-void
.end method

.method private getLastSavedSpanEndMonotonicTime()J
    .locals 4

    .line 218
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 220
    invoke-interface {v0}, Lcom/android/server/power/stats/PowerAttributor;->getLastSavedEstimatesPowerConsumptionTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 222
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    return-wide v0
.end method

.method private synthetic lambda$aggregateAndDumpPowerStats$1(Landroid/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 152
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 154
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    move-result-wide v4

    .line 155
    .local v4, "powerStoreEndMonotonicTime":J
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-wide/16 v6, -0x1

    move-object v2, p1

    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .local v2, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-interface/range {v1 .. v7}, Lcom/android/server/power/stats/PowerAttributor;->dumpEstimatedPowerConsumption(Landroid/util/IndentingPrintWriter;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 157
    return-void
.end method

.method private synthetic lambda$scheduleNextPowerStatsAggregation$0()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 105
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method private scheduleNextPowerStatsAggregation()V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    add-long/2addr v1, v3

    new-instance v4, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    const-string v3, "PowerStats"

    invoke-interface/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;->scheduleAlarm(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 107
    return-void
.end method


# virtual methods
.method public aggregateAndDumpPowerStats(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 141
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 148
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->awaitCompletion()V

    .line 150
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->awaitCompletion()V

    .line 160
    return-void

    .line 142
    .end local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be executed on the bg handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public schedulePowerStatsAggregation()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public start(Z)V
    .locals 1
    .param p1, "enablePeriodicPowerStatsCollection"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEnablePeriodicPowerStatsCollection:Z

    .line 94
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEnablePeriodicPowerStatsCollection:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 96
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->scheduleNextPowerStatsAggregation()V

    .line 98
    :cond_0
    return-void
.end method
