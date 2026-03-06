.class public Lcom/android/server/power/stats/PowerStatsStore;
.super Ljava/lang/Object;
.source "PowerStatsStore.java"


# static fields
.field private static final DIR_LOCK_FILENAME:Ljava/lang/String; = ".lock"

.field private static final MAX_POWER_STATS_SPAN_STORAGE_BYTES:J = 0x19000L

.field private static final POWER_STATS_DIR:Ljava/lang/String; = "power-stats"

.field private static final POWER_STATS_SPAN_FILE_EXTENSION:Ljava/lang/String; = ".pss"

.field private static final TAG:Ljava/lang/String; = "PowerStatsStore"


# instance fields
.field private final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mHandler:Landroid/os/Handler;

.field private mJvmLock:Ljava/nio/channels/FileLock;

.field private final mLockFile:Ljava/io/File;

.field private final mMaxStorageBytes:J

.field private final mSectionReaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreDir:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private volatile mTableOfContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/PowerStatsSpan$Metadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$55fOWVXVllJ2LR3V-23W75q3gH0(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore;->lambda$storeBatteryUsageStatsAsync$2(JLandroid/os/BatteryUsageStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2PF4qXDAYWwxqhYeVyGoe0li4E(Lcom/android/server/power/stats/PowerStatsStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->maybeClearLegacyStore()V

    return-void
.end method

.method public static synthetic $r8$lambda$dH-UczunvrzRifb4k-bj8u6NTCU(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->lambda$storePowerStatsSpan$1(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZFwWJVHGsl5p44v-hX6-z05sXQ(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsStore;->lambda$storePowerStatsSpanAsync$0(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLandroid/os/Handler;)V
    .locals 3
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "maxStorageBytes"    # J
    .param p4, "handler"    # Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "power-stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    const-string v2, ".lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    .line 83
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    .line 84
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    .line 85
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 75
    const-wide/32 v0, 0x19000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;JLandroid/os/Handler;)V

    .line 76
    return-void
.end method

.method private synthetic lambda$storeBatteryUsageStatsAsync$2(JLandroid/os/BatteryUsageStats;)V
    .locals 0
    .param p1, "monotonicStartTime"    # J
    .param p3, "batteryUsageStats"    # Landroid/os/BatteryUsageStats;

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore;->storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V

    .line 229
    return-void
.end method

.method private static synthetic lambda$storePowerStatsSpan$1(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p0, "span"    # Lcom/android/server/power/stats/PowerStatsSpan;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .line 169
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/PowerStatsSpan;->writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write PowerStatsSpan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerStatsStore"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$storePowerStatsSpanAsync$0(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "span"    # Lcom/android/server/power/stats/PowerStatsSpan;
    .param p2, "onComplete"    # Ljava/lang/Runnable;

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 145
    throw v0
.end method

.method private lockStoreDirectory()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 273
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    goto :goto_1

    .line 275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_2

    .line 276
    :goto_1
    nop

    .line 277
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PowerStatsStore"

    const-string v2, "Cannot lock snapshot directory"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private makePowerStatsSpanFilename(J)Ljava/io/File;
    .locals 6
    .param p1, "id"    # J

    .line 255
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%019d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeClearLegacyStore()V
    .locals 3

    .line 260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    const-string v2, "battery-usage-stats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v0, "legacyStoreDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 264
    :cond_0
    return-void
.end method

.method private removeOldSpansLocked()V
    .locals 11

    .line 298
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "totalSize":J
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 300
    .local v2, "mFileSizes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/io/File;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    nop

    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 301
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 302
    .local v7, "fileSize":J
    add-long/2addr v0, v7

    .line 303
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".pss"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 304
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileSize":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 308
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_4

    .line 309
    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 310
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 311
    goto :goto_2

    .line 314
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 315
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete power stats span "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerStatsStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 319
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 321
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v4    # "file":Ljava/io/File;
    goto :goto_1

    .line 322
    :cond_4
    :goto_2
    return-void
.end method

.method private storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V
    .locals 10
    .param p1, "monotonicStartTime"    # J
    .param p3, "batteryUsageStats"    # Landroid/os/BatteryUsageStats;

    .line 236
    const-string v1, "Cannot close BatteryUsageStats"

    const-string v2, "PowerStatsStore"

    :try_start_0
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    move-object v3, v0

    .line 237
    .local v3, "span":Lcom/android/server/power/stats/PowerStatsSpan;
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v6

    .line 238
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    move-wide v4, p1

    .end local p1    # "monotonicStartTime":J
    .local v4, "monotonicStartTime":J
    :try_start_1
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 239
    new-instance p1, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v3    # "span":Lcom/android/server/power/stats/PowerStatsSpan;
    :try_start_2
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 245
    .local p1, "e":Ljava/io/IOException;
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local p1    # "e":Ljava/io/IOException;
    nop

    .line 248
    :goto_0
    return-void

    .line 242
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v4    # "monotonicStartTime":J
    .local p1, "monotonicStartTime":J
    :catchall_1
    move-exception v0

    move-wide v4, p1

    move-object p1, v0

    .line 243
    .end local p1    # "monotonicStartTime":J
    .restart local v4    # "monotonicStartTime":J
    :goto_1
    :try_start_3
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 246
    goto :goto_2

    .line 244
    :catch_1
    move-exception v0

    move-object p2, v0

    .line 245
    .local p2, "e":Ljava/io/IOException;
    invoke-static {v2, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local p2    # "e":Ljava/io/IOException;
    :goto_2
    throw p1
.end method

.method private unlockStoreDirectory()V
    .locals 4

    .line 283
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v1

    .line 284
    .local v1, "channel":Ljava/nio/channels/Channel;
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 285
    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v1    # "channel":Ljava/nio/channels/Channel;
    nop

    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    .line 290
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    goto :goto_1

    .line 289
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 286
    :catch_0
    move-exception v1

    nop

    .line 287
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "PowerStatsStore"

    const-string v3, "Cannot unlock snapshot directory"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    nop

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 292
    :goto_1
    return-void

    .line 289
    :goto_2
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    .line 290
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    throw v1
.end method


# virtual methods
.method public addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V
    .locals 2
    .param p1, "sectionReader"    # Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;

    .line 92
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 361
    const-string v0, "Power stats store"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 363
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 365
    .local v2, "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v3

    .line 366
    .local v3, "span":Lcom/android/server/power/stats/PowerStatsSpan;
    if-eqz v3, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 365
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 369
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    .line 370
    .end local v2    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .end local v3    # "span":Lcom/android/server/power/stats/PowerStatsSpan;
    :cond_1
    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 372
    return-void
.end method

.method public dumpTableOfContents(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 348
    const-string v0, "Power stats store TOC"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 350
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    .line 351
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 352
    .local v2, "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 353
    .end local v2    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 355
    return-void
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/PowerStatsSpan$Metadata;",
            ">;"
        }
    .end annotation

    .line 100
    const-string v0, "PowerStatsStore"

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 101
    .local v1, "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    if-eqz v1, :cond_0

    .line 102
    return-object v1

    .line 105
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 106
    .local v2, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 108
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 109
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 110
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "fileName":Ljava/lang/String;
    const-string v8, ".pss"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_1

    .line 112
    goto :goto_5

    .line 114
    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_2
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v9

    .line 117
    .local v9, "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    if-eqz v9, :cond_2

    .line 118
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    .end local v9    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    :catchall_0
    move-exception v9

    goto :goto_2

    .line 120
    .restart local v9    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing incompatible PowerStatsSpan file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .end local v9    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .end local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 130
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 123
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_4

    .line 114
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v10

    :try_start_5
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v2    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/power/stats/PowerStatsStore;
    :goto_3
    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .restart local v2    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/power/stats/PowerStatsStore;
    :goto_4
    nop

    .line 124
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read PowerStatsSpan file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_3
    sget-object v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 128
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 130
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 131
    nop

    .line 133
    return-object v1

    .line 130
    :goto_6
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 131
    throw v0
.end method

.method public varargs loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 7
    .param p1, "id"    # J
    .param p3, "sectionTypes"    # [Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 201
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 203
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsStore;->makePowerStatsSpanFilename(J)Ljava/io/File;

    move-result-object v1

    .line 204
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 205
    nop

    .line 213
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 205
    return-object v3

    .line 207
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    invoke-static {v2, v0, v4, p3}, Lcom/android/server/power/stats/PowerStatsSpan;->read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 208
    return-object v4

    .line 213
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 209
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 207
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/power/stats/PowerStatsStore;
    .end local p1    # "id":J
    .end local p3    # "sectionTypes":[Ljava/lang/String;
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/power/stats/PowerStatsStore;
    .restart local p1    # "id":J
    .restart local p3    # "sectionTypes":[Ljava/lang/String;
    :goto_1
    nop

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "PowerStatsStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read PowerStatsSpan file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 213
    nop

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 214
    nop

    .line 215
    return-object v3

    .line 213
    :goto_2
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 214
    throw v1
.end method

.method public reset()V
    .locals 7

    .line 328
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 331
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    const-string v4, "PowerStatsStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete power stats span "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 330
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 340
    nop

    .line 341
    return-void

    .line 339
    :goto_2
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 340
    throw v0
.end method

.method public storeBatteryUsageStatsAsync(JLandroid/os/BatteryUsageStats;)V
    .locals 2
    .param p1, "monotonicStartTime"    # J
    .param p3, "batteryUsageStats"    # Landroid/os/BatteryUsageStats;

    .line 224
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore;->storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :goto_0
    return-void
.end method

.method public storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    .locals 4
    .param p1, "span"    # Lcom/android/server/power/stats/PowerStatsSpan;

    .line 153
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "PowerStatsStore"

    if-nez v0, :cond_0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "Could not create a directory for power stats store"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 158
    return-void

    .line 190
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 162
    :cond_0
    :try_start_2
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p1}, Lcom/android/server/power/stats/PowerStatsSpan;->getId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsStore;->makePowerStatsSpanFilename(J)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .local v0, "file":Landroid/util/AtomicFile;
    :try_start_3
    new-instance v2, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/PowerStatsSpan;)V

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    nop

    .line 187
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 188
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->removeOldSpansLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    .end local v0    # "file":Landroid/util/AtomicFile;
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 191
    nop

    .line 192
    return-void

    .line 182
    .restart local v0    # "file":Landroid/util/AtomicFile;
    :catchall_1
    move-exception v2

    .line 183
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v3, "AtomicFile write failed, skip this span"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 184
    return-void

    .line 190
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 191
    throw v0
.end method

.method public storePowerStatsSpanAsync(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "span"    # Lcom/android/server/power/stats/PowerStatsSpan;
    .param p2, "onComplete"    # Ljava/lang/Runnable;

    .line 140
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method
