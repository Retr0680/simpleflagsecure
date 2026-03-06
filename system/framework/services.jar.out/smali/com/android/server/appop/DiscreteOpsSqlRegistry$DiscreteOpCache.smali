.class Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscreteOpCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscreteOpCache"


# instance fields
.field private final mCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapacity:I

.field final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictOldAppOpEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry;
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    .line 441
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    .line 442
    return-void
.end method

.method private evictOldAppOpEvents()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 465
    .local v1, "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    sub-long/2addr v2, v4

    .line 466
    .local v2, "evictionTimestamp":J
    invoke-static {v2, v3}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v4

    .line 467
    .end local v2    # "evictionTimestamp":J
    .local v4, "evictionTimestamp":J
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 468
    .local v3, "opEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 469
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v6, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 474
    .end local v0    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local v1    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local v3    # "opEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .end local v4    # "evictionTimestamp":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 472
    .restart local v0    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .restart local v1    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .restart local v4    # "evictionTimestamp":J
    :cond_0
    :goto_1
    goto :goto_0

    .line 473
    :cond_1
    monitor-exit p0

    return-object v0

    .line 474
    .end local v0    # "evictedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local v1    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local v4    # "evictionTimestamp":J
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V
    .locals 2
    .param p1, "opEvent"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    if-lt v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 454
    :cond_1
    monitor-exit p0

    .line 455
    return-void

    .line 454
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method capacity()I
    .locals 1

    .line 516
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    return v0
.end method

.method public clear()V
    .locals 1

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 525
    monitor-exit p0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 551
    .local v0, "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 552
    .local v2, "currentEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    .end local v0    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local v2    # "currentEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 556
    .restart local v0    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 557
    .end local v0    # "snapshot":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :cond_1
    monitor-exit p0

    .line 558
    return-void

    .line 557
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public evictAllAppOpEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    .local v0, "cachedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    monitor-exit p0

    return-object v0

    .line 489
    .end local v0    # "cachedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 486
    .restart local v0    # "cachedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 488
    monitor-exit p0

    return-object v0

    .line 489
    .end local v0    # "cachedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public evictAppOpEvents(Landroid/util/IntArray;)Ljava/util/List;
    .locals 4
    .param p1, "ops"    # Landroid/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "evictedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    monitor-exit p0

    return-object v0

    .line 508
    .end local v0    # "evictedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 501
    .restart local v0    # "evictedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 502
    .local v2, "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    .end local v2    # "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :cond_1
    goto :goto_0

    .line 506
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 507
    monitor-exit p0

    return-object v0

    .line 508
    .end local v0    # "evictedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offsetTimestamp(J)V
    .locals 19
    .param p1, "offsetMillis"    # J

    .line 532
    move-object/from16 v1, p0

    monitor-enter p0

    .line 533
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 534
    .local v0, "cachedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 536
    .local v3, "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    new-instance v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v5

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v6

    .line 537
    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v9

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v10

    .line 539
    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v12

    .line 540
    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v13

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v15

    sub-long v15, v15, p1

    .line 541
    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v17

    invoke-direct/range {v4 .. v18}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 536
    invoke-virtual {v1, v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    .line 543
    .end local v3    # "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    goto :goto_0

    .line 544
    .end local v0    # "cachedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    .line 545
    return-void

    .line 544
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method size()I
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method
