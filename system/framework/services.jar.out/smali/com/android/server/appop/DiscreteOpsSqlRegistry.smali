.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsSqlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;,
        Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;,
        Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;,
        Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
    }
.end annotation


# static fields
.field private static final DB_WRITE_INTERVAL:J

.field private static final DELETE_EXPIRED_ENTRIES:I = 0x2

.field private static final EXPIRED_ENTRY_DELETION_INTERVAL:J

.field private static final TAG:Ljava/lang/String; = "DiscreteOpsSqlRegistry"

.field private static final WRITE_DATABASE_CACHE_FULL:I = 0x3

.field private static final WRITE_DATABASE_RECURRING:I = 0x1


# instance fields
.field private mChainIdOffset:J

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseFile:Ljava/io/File;

.field private final mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

.field private final mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

.field private final mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDB_WRITE_INTERVAL()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    .line 60
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseFile"    # Ljava/io/File;

    .line 82
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 70
    new-instance v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    const/16 v1, 0x200

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;I)V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    .line 83
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "DiscreteOpsSqlRegistry"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 84
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 85
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    .line 87
    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    .line 88
    new-instance v1, Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-direct {v1, p1, p2}, Lcom/android/server/appop/DiscreteOpsDbHelper;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 89
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getLargestAttributionChainId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    .line 90
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    sget-wide v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    const/4 v2, 0x2

    sget-wide v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method

.method private getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;
    .locals 5
    .param p1, "filter"    # I
    .param p2, "opNamesFilter"    # [Ljava/lang/String;

    .line 151
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 153
    .local v0, "opCodes":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 156
    :try_start_0
    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v2, "op":I
    nop

    .line 161
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    .line 157
    .end local v2    # "op":I
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "` is not recognized."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DiscreteOpsSqlRegistry"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    nop

    .line 153
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 163
    .end local v1    # "i":I
    return-object v0

    .line 165
    .end local v0    # "opCodes":Landroid/util/IntArray;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 29
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "beginTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .param p6, "filter"    # I
    .param p7, "uidFilter"    # I
    .param p8, "packageNameFilter"    # Ljava/lang/String;
    .param p9, "opNamesFilter"    # [Ljava/lang/String;
    .param p10, "attributionTagFilter"    # Ljava/lang/String;
    .param p11, "opFlagsFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p12, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v3, p6

    move-object/from16 v2, p9

    invoke-direct {v0, v3, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;

    move-result-object v7

    .line 177
    .local v7, "opCodes":Landroid/util/IntArray;
    if-eqz v7, :cond_0

    .line 178
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v5, v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAppOpEvents(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAllAppOpEvents()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    .line 182
    :goto_0
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move/from16 v16, v4

    .line 183
    .local v16, "assembleChains":Z
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    sget-wide v5, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v8, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v5, v6, v8}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    .line 184
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 183
    move-wide/from16 v8, p2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 185
    .end local p2    # "beginTimeMillis":J
    .local v9, "beginTimeMillis":J
    iget-object v2, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, -0x1

    move-wide/from16 v11, p4

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move/from16 v8, p11

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDiscreteOps(IILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IJJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, "discreteOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    const/4 v3, 0x0

    .line 190
    .local v3, "attributionChains":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;>;"
    if-eqz v16, :cond_2

    .line 191
    invoke-virtual {v0, v2, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->createAttributionChains(Ljava/util/List;Ljava/util/Set;)Landroid/util/LongSparseArray;

    move-result-object v3

    .line 194
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 195
    .local v4, "nEvents":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v4, :cond_4

    .line 196
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 197
    .local v6, "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    const/4 v8, 0x0

    .line 198
    .local v8, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v16, :cond_3

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    .line 199
    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;

    .line 200
    .local v11, "chain":Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isComplete()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 201
    invoke-static {v11, v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->-$$Nest$misStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v11, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    if-eqz v12, :cond_3

    .line 203
    iget-object v12, v11, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 204
    .local v12, "proxyEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    new-instance v13, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-static {v12}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v14

    invoke-static {v12}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v14, v15, v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v8, v13

    move-object/from16 v28, v8

    goto :goto_3

    .line 208
    .end local v11    # "chain":Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
    .end local v12    # "proxyEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :cond_3
    move-object/from16 v28, v8

    .end local v8    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .local v28, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :goto_3
    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v18

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v19

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUidState(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v22

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v23

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v24

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v26

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v28}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 195
    .end local v6    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .end local v28    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_4
    nop

    .line 212
    .end local v5    # "j":I
    return-void
.end method

.method clearHistory()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear()V

    .line 132
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v1, "DELETE FROM app_op_accesses"

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method clearHistory(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear(ILjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 138
    const-string v2, "DELETE FROM app_op_accesses WHERE uid = ? AND package_name = ?"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method createAttributionChains(Ljava/util/List;Ljava/util/Set;)Landroid/util/LongSparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;",
            ">;"
        }
    .end annotation

    .line 257
    .local p1, "discreteOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .local p2, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 258
    .local v0, "chains":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 260
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 262
    .local v3, "opEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    nop

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 264
    goto :goto_1

    .line 266
    :cond_0
    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;

    .line 267
    .local v4, "chain":Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
    if-nez v4, :cond_1

    .line 268
    new-instance v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;

    invoke-direct {v5, p2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    move-object v4, v5

    .line 269
    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 271
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->addEvent(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    .line 260
    .end local v3    # "opEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .end local v4    # "chain":Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 273
    .end local v2    # "i":I
    return-object v0
.end method

.method deleteDatabase()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 751
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 752
    return-void
.end method

.method dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAllAppOpEvents()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    .line 222
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    move-object v9, v3

    .line 223
    .local v9, "opCodes":Landroid/util/IntArray;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 224
    invoke-virtual {v9, v2}, Landroid/util/IntArray;->add(I)V

    .line 226
    :cond_0
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v16, "access_time"

    const/16 v17, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    move/from16 v15, p10

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDiscreteOps(IILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IJJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 230
    .local v3, "discreteOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    move-object/from16 v4, p9

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    const-string v5, "Largest chain id: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v5}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getLargestAttributionChainId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 233
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 234
    const-string v5, "UID|PACKAGE_NAME|DEVICE_ID|OP_NAME|ATTRIBUTION_TAG|UID_STATE|OP_FLAGS|ATTR_FLAGS|CHAIN_ID|ACCESS_TIME|DURATION"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 237
    .local v5, "discreteOpsCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 238
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 239
    .local v7, "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v10

    move-object/from16 v8, p8

    invoke-virtual {v8, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDeviceId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v12

    .line 241
    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUidState(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v12

    .line 242
    invoke-static {v12}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v12

    .line 243
    invoke-static {v12}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 240
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .end local v7    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v8, p8

    .line 247
    .end local v6    # "i":I
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 248
    return-void
.end method

.method getAllDiscreteOps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v2, "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

    invoke-virtual {v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getAllDiscreteOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 740
    return-object v0
.end method

.method getCachedDiscreteOps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getLargestAttributionChainId()J
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getLargestAttributionChainId()J

    move-result-wide v0

    return-wide v0
.end method

.method migrateXmlData(Ljava/util/List;I)V
    .locals 2
    .param p2, "chainIdOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;I)V"
        }
    .end annotation

    .line 251
    .local p1, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    .line 252
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    .line 253
    return-void
.end method

.method offsetHistory(J)V
    .locals 3
    .param p1, "offset"    # J

    .line 144
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->offsetTimestamp(J)V

    .line 145
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 145
    const-string v2, "UPDATE app_op_accesses SET access_time = ACCESS_TIME - ?"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "uidState"    # I
    .param p8, "accessTime"    # J
    .param p10, "accessDuration"    # J
    .param p12, "attributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 100
    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v7, p4

    move/from16 v8, p6

    invoke-static {v7, v8}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    int-to-long v2, v1

    .line 105
    .local v2, "offsetChainId":J
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 106
    int-to-long v4, v1

    iget-wide v9, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    add-long v2, v4, v9

    .line 109
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    .line 110
    iput-wide v2, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    .line 113
    :cond_1
    move-wide v11, v2

    goto :goto_0

    .line 105
    :cond_2
    move-wide v11, v2

    .line 113
    .end local v2    # "offsetChainId":J
    .local v11, "offsetChainId":J
    :goto_0
    new-instance v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v5, p5

    move/from16 v10, p7

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move/from16 v9, p12

    invoke-direct/range {v2 .. v16}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 115
    .local v2, "discreteOpEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v3, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    .line 116
    return-void
.end method

.method recordDiscreteAccess(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V
    .locals 1
    .param p1, "discreteOpEvent"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 728
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    .line 729
    return-void
.end method

.method shutdown()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->removeAllPendingMessages()V

    .line 121
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAllAppOpEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method writeAndClearOldAccessHistory()V
    .locals 0

    .line 127
    return-void
.end method
