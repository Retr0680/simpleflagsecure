.class public final Lcom/android/server/am/compaction/SingleCompactionStats;
.super Ljava/lang/Object;
.source "SingleCompactionStats.java"


# static fields
.field private static final STATSD_SAMPLE_RATE:F = 0.1f

.field private static final mRandom:Ljava/util/Random;


# instance fields
.field public mAnonMemFreedKBs:J

.field public mCpuTimeMillis:F

.field public mDeltaAnonRssKBs:J

.field public mOomAdj:I

.field public mOomAdjReason:I

.field public mOrigAnonRss:J

.field public mProcState:I

.field public mProcessName:Ljava/lang/String;

.field private final mRssAfterCompaction:[J

.field public mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public final mUid:I

.field public mZramConsumedKBs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V
    .locals 16
    .param p1, "rss"    # [J
    .param p2, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "deltaAnonRss"    # J
    .param p6, "zramConsumed"    # J
    .param p8, "anonMemFreed"    # J
    .param p10, "origAnonRss"    # J
    .param p12, "cpuTimeMillis"    # J
    .param p14, "procState"    # I
    .param p15, "oomAdj"    # I
    .param p16, "oomAdjReason"    # I
    .param p17, "uid"    # I

    .line 50
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRssAfterCompaction:[J

    .line 52
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 53
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcessName:Ljava/lang/String;

    .line 54
    move/from16 v4, p17

    iput v4, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mUid:I

    .line 55
    move-wide/from16 v5, p4

    iput-wide v5, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    .line 56
    move-wide/from16 v7, p6

    iput-wide v7, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    .line 57
    move-wide/from16 v9, p8

    iput-wide v9, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    .line 58
    move-wide/from16 v11, p12

    long-to-float v13, v11

    iput v13, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    .line 59
    move-wide/from16 v13, p10

    iput-wide v13, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    .line 60
    move/from16 v15, p14

    iput v15, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    .line 61
    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    .line 62
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    .line 63
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/am/compaction/SingleCompactionStats;->getSwapEfficiency()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/compaction/SingleCompactionStats;->getCompactEfficiency()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/compaction/SingleCompactionStats;->getCompactCost()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    .line 84
    invoke-static {v1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method getCompactCost()D
    .locals 4

    .line 71
    iget v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method getCompactEfficiency()D
    .locals 4

    .line 65
    iget-wide v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getRssAfterCompaction()[J
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRssAfterCompaction:[J

    return-object v0
.end method

.method getSwapEfficiency()D
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method sendStat()V
    .locals 13

    .line 88
    sget-object v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 89
    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mUid:I

    iget v3, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    iget v4, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    iget-wide v5, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    iget-wide v7, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    iget v9, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    iget-wide v10, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    iget v12, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    const/16 v1, 0x1eb

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJFJI)V

    .line 93
    :cond_0
    return-void
.end method
