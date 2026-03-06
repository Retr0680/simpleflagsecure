.class public final Lcom/android/server/am/compaction/CompactionStatsManager;
.super Ljava/lang/Object;
.source "CompactionStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/compaction/CompactionStatsManager$CompactThrottleReason;
    }
.end annotation


# static fields
.field public static final COMPACT_THROTTLE_REASON_DELTA_RSS:I = 0x4

.field public static final COMPACT_THROTTLE_REASON_NO_PID:I = 0x0

.field public static final COMPACT_THROTTLE_REASON_OOM_ADJ:I = 0x1

.field public static final COMPACT_THROTTLE_REASON_PROC_STATE:I = 0x3

.field public static final COMPACT_THROTTLE_REASON_TIME_TOO_SOON:I = 0x2

.field static final LAST_COMPACTED_ANY_PROCESS_STATS_HISTORY_SIZE:I = 0x14

.field static final LAST_COMPACTION_FOR_PROCESS_STATS_SIZE:I = 0x100

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;


# instance fields
.field mCompactionStatsHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerProcessCompactStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerSourceCompactStats:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/android/server/am/CachedAppOptimizer$CompactSource;",
            "Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemCompactionsPerformed:J

.field private mSystemTotalMemFreed:J

.field private mTotalCompactionDowngrades:J

.field private mTotalCompactionsCancelled:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "CompactionStatsManager"

    sput-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 70
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 77
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/compaction/CompactionStatsManager$1;-><init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 87
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/compaction/CompactionStatsManager$2;-><init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/compaction/CompactionStatsManager;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {v0}, Lcom/android/server/am/compaction/CompactionStatsManager;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 102
    :cond_0
    sget-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    return-object v0
.end method

.method private getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 241
    if-nez p1, :cond_0

    .line 242
    const-string p1, ""

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    .line 245
    .local v0, "stats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    if-nez v0, :cond_1

    .line 246
    new-instance v1, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    invoke-direct {v1, p1}, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 247
    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_1
    return-object v0
.end method

.method private getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    .locals 2
    .param p1, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 254
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    .line 255
    .local v0, "stats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    if-nez v0, :cond_0

    .line 256
    new-instance v1, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    invoke-direct {v1, p1}, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    move-object v0, v1

    .line 257
    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 264
    const-string v0, " Per-Process Compaction Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const-wide/16 v0, 0x0

    .line 266
    .local v0, "totalCompactPerformedSome":J
    const-wide/16 v2, 0x0

    .line 267
    .local v2, "totalCompactPerformedFull":J
    iget-object v4, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "-----"

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    .line 268
    .local v5, "stats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    iget-wide v6, v5, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long/2addr v0, v6

    .line 270
    iget-wide v6, v5, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v2, v6

    .line 271
    invoke-virtual {v5, p1}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 272
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 273
    .end local v5    # "stats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 275
    const-string v4, " Per-Source Compaction Stats"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v4, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    .line 277
    .local v5, "stats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v5, p1}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 279
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 280
    .end local v5    # "stats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Compactions Performed by profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " some, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " full"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total compactions downgraded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v4, "Total compactions cancelled by reason: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 288
    .local v5, "reason":Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v7, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .end local v5    # "reason":Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;
    goto :goto_2

    .line 290
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 292
    const-string v4, " System Compaction Memory Stats"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Compactions Performed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Total Memory Freed (KB): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-wide v4, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 296
    iget-wide v4, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    iget-wide v6, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    div-long/2addr v4, v6

    long-to-double v4, v4

    goto :goto_3

    .line 297
    :cond_3
    const-wide/16 v4, 0x0

    :goto_3
    nop

    .line 298
    .local v4, "avgKBsPerSystemCompact":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    Avg Mem Freed per Compact (KB): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Tracking last compaction stats for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " processes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v6, "Last Compaction per process stats:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const-string v6, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,SwapEfficiency,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 308
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/compaction/SingleCompactionStats;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/compaction/SingleCompactionStats;

    .line 309
    .local v9, "stats":Lcom/android/server/am/compaction/SingleCompactionStats;
    invoke-virtual {v9, p1}, Lcom/android/server/am/compaction/SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 310
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/compaction/SingleCompactionStats;>;"
    .end local v9    # "stats":Lcom/android/server/am/compaction/SingleCompactionStats;
    goto :goto_4

    .line 311
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 312
    const-string v7, "Last 20 Compactions Stats:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v6, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/compaction/SingleCompactionStats;

    .line 317
    .local v7, "stats":Lcom/android/server/am/compaction/SingleCompactionStats;
    invoke-virtual {v7, p1}, Lcom/android/server/am/compaction/SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 318
    .end local v7    # "stats":Lcom/android/server/am/compaction/SingleCompactionStats;
    goto :goto_5

    .line 319
    :cond_5
    return-void
.end method

.method public getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;
    .locals 2
    .param p1, "pid"    # I

    .line 106
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/SingleCompactionStats;

    return-object v0
.end method

.method public getLastCompactionStats()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public logCompactionCancelled(Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V
    .locals 3
    .param p1, "cancelReason"    # Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 231
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 233
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v0    # "count":I
    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :goto_0
    return-void
.end method

.method public logCompactionDowngrade()V
    .locals 4

    .line 222
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    .line 223
    return-void
.end method

.method public logCompactionRequested(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .param p2, "compactProfile"    # Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .param p3, "processName"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v0

    .line 123
    .local v0, "perSourceStats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    nop

    .line 124
    invoke-direct {p0, p3}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v1

    .line 126
    .local v1, "perProcStats":Lcom/android/server/am/compaction/AggregatedCompactionStats;
    sget-object v2, Lcom/android/server/am/compaction/CompactionStatsManager$3;->$SwitchMap$com$android$server$am$CachedAppOptimizer$CompactProfile:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 136
    sget-object v2, Lcom/android/server/am/compaction/CompactionStatsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stats cannot be logged for compaction type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :pswitch_0
    iget-wide v5, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    .line 133
    iget-wide v5, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    .line 134
    goto :goto_0

    .line 128
    :pswitch_1
    iget-wide v5, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 129
    iget-wide v5, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 130
    nop

    .line 139
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .param p3, "processName"    # Ljava/lang/String;

    .line 142
    nop

    .line 143
    invoke-direct {p0, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v0

    .line 144
    .local v0, "perSourceStats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    nop

    .line 145
    invoke-direct {p0, p3}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v1

    .line 147
    .local v1, "perProcessStats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    const-wide/16 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    iget-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 166
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 167
    goto :goto_0

    .line 161
    :pswitch_1
    iget-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 162
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 163
    goto :goto_0

    .line 157
    :pswitch_2
    iget-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 158
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 159
    goto :goto_0

    .line 153
    :pswitch_3
    iget-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 154
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 155
    goto :goto_0

    .line 149
    :pswitch_4
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 150
    iget-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 151
    nop

    .line 171
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V
    .locals 24
    .param p1, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "anonRssSavings"    # J
    .param p5, "zramConsumed"    # J
    .param p7, "memFreed"    # J
    .param p9, "origAnonRss"    # J
    .param p11, "totalCpuTimeMillis"    # J
    .param p13, "rssAfterCompact"    # [J
    .param p14, "procState"    # I
    .param p15, "newOomAdj"    # I
    .param p16, "oomAdjReason"    # I
    .param p17, "uid"    # I
    .param p18, "pid"    # I
    .param p19, "logFieldMetric"    # Z

    .line 190
    move-object/from16 v0, p0

    .line 191
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v1

    .line 192
    .local v1, "perSourceStats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    nop

    .line 193
    move-object/from16 v12, p2

    invoke-direct {v0, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v13

    .line 195
    .local v13, "perProcessStats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    iget-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 196
    iget-wide v2, v13, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v2, v4

    iput-wide v2, v13, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 201
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    move-wide/from16 v14, p3

    goto :goto_0

    :cond_0
    move-wide v14, v2

    .line 202
    .end local p3    # "anonRssSavings":J
    .local v14, "anonRssSavings":J
    :goto_0
    cmp-long v4, p5, v2

    if-lez v4, :cond_1

    move-wide/from16 v16, p5

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v2

    .line 203
    .end local p5    # "zramConsumed":J
    .local v16, "zramConsumed":J
    :goto_1
    cmp-long v4, p7, v2

    if-lez v4, :cond_2

    move-wide/from16 v18, p7

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v2

    .line 205
    .end local p7    # "memFreed":J
    .local v18, "memFreed":J
    :goto_2
    move-wide/from16 v20, p9

    move-wide/from16 v22, p11

    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 207
    move-object/from16 v20, v13

    .end local v13    # "perProcessStats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    .local v20, "perProcessStats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    .end local v14    # "anonRssSavings":J
    .end local v16    # "zramConsumed":J
    .end local v18    # "memFreed":J
    .local v2, "anonRssSavings":J
    .local v4, "zramConsumed":J
    .local v6, "memFreed":J
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 209
    .end local v2    # "anonRssSavings":J
    .end local v4    # "zramConsumed":J
    .end local v6    # "memFreed":J
    .restart local v14    # "anonRssSavings":J
    .restart local v16    # "zramConsumed":J
    .restart local v18    # "memFreed":J
    new-instance v2, Lcom/android/server/am/compaction/SingleCompactionStats;

    move-object/from16 v4, p1

    move-object/from16 v3, p13

    move-object v5, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    .end local v14    # "anonRssSavings":J
    .end local v16    # "zramConsumed":J
    .end local v18    # "memFreed":J
    .local v6, "anonRssSavings":J
    .local v8, "zramConsumed":J
    .local v10, "memFreed":J
    invoke-direct/range {v2 .. v19}, Lcom/android/server/am/compaction/SingleCompactionStats;-><init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    .line 213
    .end local v6    # "anonRssSavings":J
    .end local v8    # "zramConsumed":J
    .end local v10    # "memFreed":J
    .local v2, "memStats":Lcom/android/server/am/compaction/SingleCompactionStats;
    .restart local v14    # "anonRssSavings":J
    .restart local v16    # "zramConsumed":J
    .restart local v18    # "memFreed":J
    iget-object v3, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v3, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v3, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    if-nez p19, :cond_3

    .line 217
    invoke-virtual {v2}, Lcom/android/server/am/compaction/SingleCompactionStats;->sendStat()V

    .line 219
    :cond_3
    return-void
.end method

.method public logSomeCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .param p2, "processName"    # Ljava/lang/String;

    .line 175
    nop

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v0

    .line 177
    .local v0, "perSourceStats":Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    nop

    .line 178
    invoke-direct {p0, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v1

    .line 180
    .local v1, "perProcessStats":Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    iget-wide v2, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 181
    iget-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 182
    return-void
.end method

.method public logSystemCompactionPerformed(J)V
    .locals 4
    .param p1, "memFreed"    # J

    .line 226
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    .line 227
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    .line 228
    return-void
.end method

.method public reinit()V
    .locals 1

    .line 116
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {v0}, Lcom/android/server/am/compaction/CompactionStatsManager;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 117
    return-void
.end method
