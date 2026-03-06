.class public Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;,
        Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;,
        Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;,
        Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;,
        Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;
    }
.end annotation


# static fields
.field public static final HARD_CAP_TAG:Ljava/lang/String; = "*overflow hard cap*"

.field public static final HARD_CAP_UID:I = -0x1

.field public static final MAX_WAKELOCK_DIMENSIONS:I = 0x3e8

.field public static final OVERFLOW_LEVEL:I = 0x1

.field public static final OVERFLOW_TAG:Ljava/lang/String; = "*overflow*"

.field public static final SUMMARY_THRESHOLD:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BatteryStatsPulledMetrics"


# instance fields
.field private mIsInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOpenWakeLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;",
            "Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

.field private final mWakeLockStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;",
            "Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AtV_1LGVyaohwoFf9kkapV7I5IY(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->lambda$noteStartWakeLock$0(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Fds4fnTXtO1xF-OgWWVuZ3qDVKs(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->lambda$pullFrameworkWakelockInfoAtoms$4(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_eI9M4itj9AElL0QLHvCcZ6S53I(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->lambda$pullFrameworkWakelockInfoAtoms$3(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fgzsMdzA2m8ygC8lBUBJcEA8eis(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->lambda$pullFrameworkWakelockInfoAtoms$2(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iC66w-mkFRw3OjMek3zncId5-1U(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->lambda$noteStopWakeLock$1(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    .line 285
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    return-void
.end method

.method private static synthetic lambda$noteStartWakeLock$0(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    .locals 1
    .param p0, "eventUptimeMillis"    # J
    .param p2, "k"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 146
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;-><init>(J)V

    return-object v0
.end method

.method private static synthetic lambda$noteStopWakeLock$1(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 2
    .param p0, "k"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 187
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object v0
.end method

.method private static synthetic lambda$pullFrameworkWakelockInfoAtoms$2(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 2
    .param p0, "k"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 255
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object v0
.end method

.method private static synthetic lambda$pullFrameworkWakelockInfoAtoms$3(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 2
    .param p0, "k"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 271
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object v0
.end method

.method private static synthetic lambda$pullFrameworkWakelockInfoAtoms$4(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 2
    .param p0, "k"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 273
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object v0
.end method


# virtual methods
.method public inHardCap()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inOverflow()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 291
    iget-boolean v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 296
    .local v0, "statsManager":Landroid/app/StatsManager;
    const-string v1, "BatteryStatsPulledMetrics"

    if-nez v0, :cond_1

    .line 297
    const-string v2, "Error retrieving StatsManager. Cannot initialize BatteryStatsPulledMetrics."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_1
    const-string v2, "Registering callback with StatsManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    const/16 v3, 0x27f6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    .line 311
    :goto_0
    return-void
.end method

.method public noteStartWakeLock(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "powerManagerWakeLockLevel"    # I
    .param p4, "eventUptimeMillis"    # J

    .line 142
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;-><init>(ILjava/lang/String;I)V

    .line 144
    .local v0, "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    new-instance v3, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;

    invoke-direct {v3, p4, p5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;-><init>(J)V

    .line 146
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    .line 147
    .local v2, "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    iget v3, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    .line 148
    iget-object v3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    nop

    .end local v2    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public noteStopWakeLock(ILjava/lang/String;IJ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "powerManagerWakeLockLevel"    # I
    .param p4, "eventUptimeMillis"    # J

    .line 166
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;-><init>(ILjava/lang/String;I)V

    .line 168
    .local v0, "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    .line 170
    .local v2, "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    if-nez v2, :cond_0

    .line 171
    const-string v3, "BatteryStatsPulledMetrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeLock not found when stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit v1

    return-void

    .line 195
    .end local v2    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 175
    .restart local v2    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    :cond_0
    iget v3, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 176
    iget-object v3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v3, p4, v3

    .line 180
    .local v3, "wakeLockDur":J
    invoke-virtual {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inOverflow()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setOverflow()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inHardCap()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setHardCap()V

    .line 187
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    new-instance v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 188
    .local v5, "stats":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    iget-wide v6, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    .line 189
    iget-wide v6, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    .line 190
    iget-object v6, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    nop

    .end local v3    # "wakeLockDur":J
    .end local v5    # "stats":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    goto :goto_0

    .line 192
    :cond_2
    iget v3, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    .line 193
    iget-object v3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v2    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    :goto_0
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pullFrameworkWakelockInfoAtoms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Ljava/util/List;)V

    .line 227
    .local v1, "logger":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->pullFrameworkWakelockInfoAtoms(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;)V

    .line 228
    return-object v0
.end method

.method public pullFrameworkWakelockInfoAtoms(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;)V
    .locals 23
    .param p1, "nowMillis"    # J
    .param p3, "logger"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;

    .line 233
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 236
    .local v2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 238
    .local v3, "openOverflowStats":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;>;"
    iget-object v4, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 245
    .local v5, "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    iget-object v6, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 246
    iget-object v6, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    .line 248
    .local v6, "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setOverflow()V

    .line 249
    invoke-virtual {v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inHardCap()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setHardCap()V

    goto :goto_1

    .line 280
    .end local v5    # "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    .end local v6    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 252
    .restart local v5    # "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    .restart local v6    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    :cond_0
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;-><init>()V

    .line 255
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 256
    .local v7, "stats":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    iget-wide v8, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    iget-wide v10, v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v10, p1, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    .line 257
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v5    # "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    .end local v6    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    .end local v7    # "stats":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_2

    .line 261
    :cond_3
    iget-object v0, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 264
    :goto_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 265
    .restart local v5    # "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    const-wide/16 v6, 0x0

    .line 266
    .local v6, "openWakeLockUptime":J
    iget-object v8, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    .line 267
    .local v8, "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    if-eqz v8, :cond_4

    .line 268
    iget-wide v9, v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v6, p1, v9

    .line 271
    :cond_4
    iget-object v9, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    new-instance v10, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 272
    .local v9, "stats":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    new-instance v10, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda2;-><init>()V

    .line 273
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 275
    .local v10, "extraTime":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    iget-wide v11, v9, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long/2addr v11, v6

    iget-wide v13, v10, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long v19, v11, v13

    .line 276
    .local v19, "totalUpdate":J
    iget-wide v11, v9, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    iget-wide v13, v10, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    add-long v21, v11, v13

    .line 277
    .local v21, "totalCount":J
    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->getUid()I

    move-result v16

    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->getTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->getPowerManagerWakeLockLevel()I

    move-result v18

    move-object/from16 v15, p3

    invoke-interface/range {v15 .. v22}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;->logResult(ILjava/lang/String;IJJ)V

    .line 279
    .end local v5    # "key":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    .end local v6    # "openWakeLockUptime":J
    .end local v8    # "data":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    .end local v9    # "stats":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .end local v10    # "extraTime":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .end local v19    # "totalUpdate":J
    .end local v21    # "totalCount":J
    goto :goto_3

    .line 280
    :cond_5
    monitor-exit v4

    .line 281
    return-void

    .line 280
    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
