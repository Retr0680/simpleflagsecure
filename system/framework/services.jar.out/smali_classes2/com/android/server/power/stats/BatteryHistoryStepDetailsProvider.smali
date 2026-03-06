.class Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;
.super Ljava/lang/Object;
.source "BatteryHistoryStepDetailsProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x8000

.field private static final POWER_STATS_QUERY_TIMEOUT_MILLIS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "BatteryHistoryStepDetails"


# instance fields
.field private final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field private mCurStepCpuSystemTimeMs:J

.field private mCurStepCpuUserTimeMs:J

.field private mCurStepStatIOWaitTimeMs:J

.field private mCurStepStatIdleTimeMs:J

.field private mCurStepStatIrqTimeMs:J

.field private mCurStepStatSoftIrqTimeMs:J

.field private mCurStepStatSystemTimeMs:J

.field private mCurStepStatUserTimeMs:J

.field private final mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mEntityNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHistoryStepDetails:Z

.field private mLastStepCpuSystemTimeMs:J

.field private mLastStepCpuUserTimeMs:J

.field private mLastStepStatIOWaitTimeMs:J

.field private mLastStepStatIdleTimeMs:J

.field private mLastStepStatIrqTimeMs:J

.field private mLastStepStatSoftIrqTimeMs:J

.field private mLastStepStatSystemTimeMs:J

.field private mLastStepStatUserTimeMs:J

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private final mStateNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 1
    .param p1, "batteryStats"    # Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 79
    return-void
.end method

.method private calculateHistoryStepDetails()V
    .locals 9

    .line 103
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 118
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 119
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 120
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 122
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 124
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 125
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 127
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v3, -0x1

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 129
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 130
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v3, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v3, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 131
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 132
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 133
    .local v1, "uidCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 134
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 135
    .local v3, "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    iget-wide v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iget-wide v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 137
    .local v4, "totalUTimeMs":I
    iget-wide v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iget-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    .line 139
    .local v5, "totalSTimeMs":I
    add-int v6, v4, v5

    .line 140
    .local v6, "totalTimeMs":I
    iget-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iput-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 141
    iget-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iput-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    .line 142
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v7, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_1

    .line 143
    goto :goto_1

    .line 145
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v7, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_2

    .line 146
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 147
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v4, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 148
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v5, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_1

    .line 150
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 151
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 152
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 153
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v7, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_3

    .line 154
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 155
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v4, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 156
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v5, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_1

    .line 158
    :cond_3
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 159
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 160
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 161
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v8, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v8, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 162
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v4, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 163
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput v5, v7, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 133
    .end local v3    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v4    # "totalUTimeMs":I
    .end local v5    # "totalSTimeMs":I
    .end local v6    # "totalTimeMs":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    nop

    .line 167
    .end local v2    # "i":I
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    .line 168
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    .line 169
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    .line 170
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    .line 171
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    .line 172
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    .line 173
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    .line 174
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    .line 175
    return-void
.end method

.method private populatePowerEntityMaps()V
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    .line 261
    .local v0, "entities":[Landroid/hardware/power/stats/PowerEntity;
    if-nez v0, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 266
    .local v3, "entity":Landroid/hardware/power/stats/PowerEntity;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v4, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 268
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v6, v6, v5

    .line 269
    .local v6, "state":Landroid/hardware/power/stats/State;
    iget v7, v6, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v6, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v6    # "state":Landroid/hardware/power/stats/State;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 272
    .end local v5    # "j":I
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v3    # "entity":Landroid/hardware/power/stats/PowerEntity;
    .end local v4    # "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_2
    return-void
.end method

.method private updateStateResidency()V
    .locals 11

    .line 213
    const-string v0, "BatteryHistoryStepDetails"

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 221
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 222
    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v1, "results":[Landroid/hardware/power/stats/StateResidencyResult;
    nop

    .line 228
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    :cond_2
    goto/16 :goto_3

    .line 232
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SubsystemPowerState"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_6

    .line 234
    aget-object v4, v1, v3

    .line 235
    .local v4, "result":Landroid/hardware/power/stats/StateResidencyResult;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 236
    .local v5, "length":I
    const-string v6, " subsystem_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v6, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v8, v4, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v8, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 240
    iget-object v8, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v8, v8, v7

    .line 241
    .local v8, "stateResidency":Landroid/hardware/power/stats/StateResidency;
    const-string v9, " state_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v10, v4, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    iget v10, v8, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 243
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 242
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v9, " time="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v8, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    const-string v9, " count="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v8, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    const-string v9, " last entry="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v8, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    .end local v8    # "stateResidency":Landroid/hardware/power/stats/StateResidency;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 249
    .end local v7    # "j":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const v7, 0x8000

    if-le v6, v7, :cond_5

    .line 250
    const-string/jumbo v6, "updateStateResidency: buffer not enough"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    goto :goto_2

    .line 249
    :cond_5
    nop

    .line 233
    .end local v4    # "result":Landroid/hardware/power/stats/StateResidencyResult;
    .end local v5    # "length":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 256
    .end local v3    # "i":I
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 257
    return-void

    .line 229
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :goto_3
    return-void

    .line 223
    .end local v1    # "results":[Landroid/hardware/power/stats/StateResidencyResult;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to getStateResidencyAsync"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    return-void

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method


# virtual methods
.method public addCpuStats(IIIIIIII)V
    .locals 4
    .param p1, "totalUTimeMs"    # I
    .param p2, "totalSTimeMs"    # I
    .param p3, "statUserTimeMs"    # I
    .param p4, "statSystemTimeMs"    # I
    .param p5, "statIOWaitTimeMs"    # I
    .param p6, "statIrqTimeMs"    # I
    .param p7, "statSoftIrqTimeMs"    # I
    .param p8, "statIdleTimeMs"    # I

    .line 186
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    .line 187
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    .line 188
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    .line 189
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    .line 190
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    .line 191
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    .line 192
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    int-to-long v2, p7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    .line 193
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    int-to-long v2, p8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    .line 194
    return-void
.end method

.method public finishAddingCpuLocked()V
    .locals 1

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    .line 198
    return-void
.end method

.method onSystemReady()V
    .locals 1

    .line 82
    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/power/PowerStatsInternal;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 83
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->populatePowerEntityMaps()V

    .line 86
    :cond_0
    return-void
.end method

.method requestUpdate()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public reset()V
    .locals 2

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    .line 203
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    .line 204
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    .line 205
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    .line 206
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    .line 207
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    .line 208
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    .line 209
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    .line 210
    return-void
.end method

.method update()V
    .locals 7

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    .line 94
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuDetails()V

    .line 95
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->calculateHistoryStepDetails()V

    .line 96
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->updateStateResidency()V

    .line 97
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 98
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 99
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V

    .line 100
    return-void
.end method
