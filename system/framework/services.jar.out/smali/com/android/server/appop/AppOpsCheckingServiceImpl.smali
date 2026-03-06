.class public Lcom/android/server/appop/AppOpsCheckingServiceImpl;
.super Ljava/lang/Object;
.source "AppOpsCheckingServiceImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field static final CURRENT_VERSION:I = 0x4

.field private static final DEBUG:Z = false

.field private static final NO_FILE_VERSION:I = -0x2

.field private static final NO_VERSION:I = -0x1

.field static final TAG:Ljava/lang/String; = "LegacyAppOpsServiceInterfaceImpl"

.field private static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field private final mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

.field final mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field private mModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final mSwitchedOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field final mUidModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field final mUserPackageModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVersionAtBoot:I

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "storageFile"    # Ljava/io/File;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 141
    .local p5, "switchedOps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Lcom/android/server/appop/LegacyAppOpStateParser;

    invoke-direct {v0}, Lcom/android/server/appop/LegacyAppOpStateParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    .line 143
    iput-object p2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    .line 144
    iput-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    .line 146
    iput-object p5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mSwitchedOps:Landroid/util/SparseArray;

    .line 147
    return-void
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .line 392
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 395
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 385
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 387
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    :cond_0
    return-void
.end method

.method private upgradeLocked(I)V
    .locals 3
    .param p1, "oldVersion"    # I

    .line 544
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    goto :goto_1

    .line 547
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyAppOpsServiceInterfaceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 550
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeRunAnyInBackgroundLocked()V

    .line 553
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeScheduleExactAlarmLocked()V

    .line 560
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->resetUseFullScreenIntentLocked()V

    .line 563
    :goto_0
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 564
    return-void

    .line 545
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private writeImmediately()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 728
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method


# virtual methods
.method public addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .line 711
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAllModes()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 340
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "persistentDeviceId"    # Ljava/lang/String;

    .line 346
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 347
    .local v0, "result":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 349
    .local v2, "modes":Landroid/util/SparseIntArray;
    if-nez v2, :cond_0

    .line 350
    monitor-exit v1

    return-object v0

    .line 357
    .end local v2    # "modes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 352
    .restart local v2    # "modes":Landroid/util/SparseIntArray;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 353
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 354
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 352
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 357
    .end local v2    # "modes":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    monitor-exit v1

    .line 359
    return-object v0

    .line 357
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getForegroundOps(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 364
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 365
    .local v0, "result":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 367
    .local v2, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_0

    .line 368
    monitor-exit v1

    return-object v0

    .line 379
    .end local v2    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 370
    .restart local v2    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 371
    .local v3, "modes":Landroid/util/SparseIntArray;
    if-nez v3, :cond_1

    .line 372
    monitor-exit v1

    return-object v0

    .line 374
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 375
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 376
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 374
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 379
    .end local v2    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "modes":Landroid/util/SparseIntArray;
    .end local v4    # "i":I
    monitor-exit v1

    .line 381
    return-object v0

    .line 379
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 173
    .local v1, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_0

    .line 174
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object v2

    .line 181
    .end local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 176
    .restart local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 177
    .local v2, "opModes":Landroid/util/SparseIntArray;
    if-nez v2, :cond_1

    .line 178
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object v3

    .line 180
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 181
    .end local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "persistentDeviceId"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 162
    .local v1, "opModes":Landroid/util/SparseIntArray;
    if-nez v1, :cond_0

    .line 163
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object v2

    .line 166
    .end local v1    # "opModes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 165
    .restart local v1    # "opModes":Landroid/util/SparseIntArray;
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 166
    .end local v1    # "opModes":Landroid/util/SparseIntArray;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageMode(Ljava/lang/String;II)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "userId"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 238
    .local v1, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_0

    .line 239
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 246
    .end local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 241
    .restart local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 242
    .local v2, "opModes":Landroid/util/SparseIntArray;
    if-nez v2, :cond_1

    .line 243
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    monitor-exit v0

    return v3

    .line 245
    :cond_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    monitor-exit v0

    return v3

    .line 246
    .end local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackagesWithNonDefaultModes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserPackage;",
            ">;"
        }
    .end annotation

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserPackage;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 695
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 696
    .local v3, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 697
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    .line 698
    .local v5, "modes":Landroid/util/SparseIntArray;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 699
    iget-object v6, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 700
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    .line 699
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 704
    .end local v2    # "i":I
    .end local v3    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v4    # "j":I
    .end local v5    # "modes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 696
    .restart local v2    # "i":I
    .restart local v3    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v4    # "j":I
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 694
    .end local v3    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 704
    .end local v2    # "i":I
    monitor-exit v1

    .line 706
    return-object v0

    .line 704
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUidMode(ILjava/lang/String;I)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .param p3, "op"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 188
    .local v1, "opModes":Landroid/util/SparseIntArray;
    if-nez v1, :cond_0

    .line 189
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 192
    .end local v1    # "opModes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 191
    .restart local v1    # "opModes":Landroid/util/SparseIntArray;
    :cond_0
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    monitor-exit v0

    return v2

    .line 192
    .end local v1    # "opModes":Landroid/util/SparseIntArray;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUidsWithNonDefaultModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 679
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 680
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 681
    .local v3, "modes":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 682
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 685
    .end local v2    # "i":I
    .end local v3    # "modes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 679
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 685
    .end local v2    # "i":I
    monitor-exit v1

    .line 687
    return-object v0

    .line 685
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public readState()V
    .locals 6

    .line 519
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    .line 522
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 522
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/AppOpsCheckingServiceImpl;
    :try_start_4
    throw v2

    .line 523
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsCheckingServiceImpl;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public removeAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .line 718
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 720
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePackage(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 322
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 324
    .local v1, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 325
    monitor-exit v0

    return v2

    .line 333
    .end local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 327
    .restart local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 328
    .local v3, "ops":Landroid/util/SparseIntArray;
    if-eqz v3, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 330
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 332
    :cond_1
    monitor-exit v0

    return v2

    .line 333
    .end local v1    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "ops":Landroid/util/SparseIntArray;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 312
    .local v1, "opModes":Landroid/util/SparseIntArray;
    if-nez v1, :cond_0

    .line 313
    monitor-exit v0

    return-void

    .line 317
    .end local v1    # "opModes":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 315
    .restart local v1    # "opModes":Landroid/util/SparseIntArray;
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 316
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 317
    .end local v1    # "opModes":Landroid/util/SparseIntArray;
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetUseFullScreenIntentLocked()V
    .locals 20

    .line 647
    move-object/from16 v0, p0

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 649
    .local v1, "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 650
    .local v2, "umi":Lcom/android/server/pm/UserManagerInternal;
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 651
    .local v3, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v4, v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/permission/PermissionManager;

    .line 652
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager;

    .line 654
    .local v4, "permissionManager":Landroid/permission/PermissionManager;
    const/16 v5, 0x85

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "permissionName":Ljava/lang/String;
    nop

    .line 656
    invoke-interface {v1, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "packagesDeclaringPermission":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v8

    .line 659
    .local v8, "userIds":[I
    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    aget-object v12, v7, v11

    .line 660
    .local v12, "pkg":Ljava/lang/String;
    array-length v13, v8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1

    aget v15, v8, v14

    .line 661
    .local v15, "userId":I
    move/from16 v16, v11

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v12, v10, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    .line 662
    .local v10, "uid":I
    nop

    .line 663
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 662
    invoke-virtual {v4, v12, v6, v11}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v11

    .line 664
    .local v11, "flags":I
    and-int/lit8 v17, v11, 0x1

    if-nez v17, :cond_0

    .line 665
    nop

    .line 669
    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    .line 665
    move-object/from16 v18, v1

    .end local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .local v18, "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    const-string v1, "default:0"

    move-object/from16 v19, v2

    move/from16 v2, v17

    .end local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .local v19, "umi":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0, v10, v1, v2, v5}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(ILjava/lang/String;II)Z

    goto :goto_2

    .line 664
    .end local v18    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v19    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .restart local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move v2, v5

    .line 660
    .end local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .end local v10    # "uid":I
    .end local v11    # "flags":I
    .end local v15    # "userId":I
    .restart local v18    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v19    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move v5, v2

    move/from16 v11, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto :goto_1

    .end local v18    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v19    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .restart local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move v2, v5

    move/from16 v16, v11

    .line 659
    .end local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .end local v12    # "pkg":Ljava/lang/String;
    .restart local v18    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v19    # "umi":Lcom/android/server/pm/UserManagerInternal;
    add-int/lit8 v11, v16, 0x1

    move-object/from16 v2, v19

    goto :goto_0

    .line 673
    .end local v18    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v19    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .restart local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :cond_2
    return-void
.end method

.method public setPackageMode(Ljava/lang/String;III)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "mode"    # I
    .param p4, "userId"    # I

    .line 251
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 253
    .local v0, "defaultMode":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 255
    .local v2, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_0

    if-eq p3, v0, :cond_0

    .line 256
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 257
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 301
    .end local v2    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 259
    .restart local v2    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 260
    .local v3, "opModes":Landroid/util/SparseIntArray;
    move v4, v0

    .line 261
    .local v4, "previousMode":I
    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    move-object v3, v5

    .line 263
    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    move v4, v5

    .line 268
    :cond_1
    if-ne p3, v4, :cond_2

    .line 269
    monitor-exit v1

    return-void

    .line 272
    :cond_2
    if-ne p3, v0, :cond_3

    .line 273
    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 274
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 275
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 277
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v5, p4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 281
    :cond_3
    if-nez v2, :cond_4

    .line 282
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v5

    .line 283
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v5, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    :cond_4
    if-nez v3, :cond_5

    .line 286
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v5

    .line 287
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_5
    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    .line 293
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .local v5, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;>;"
    invoke-static {}, Lcom/nothing/app/NtAppOpsManager;->getOpNone()I

    move-result v6

    if-le p2, v6, :cond_7

    .line 298
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeImmediately()V

    .line 301
    .end local v2    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v4    # "previousMode":I
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 304
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    invoke-interface {v2, p1, p4, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onPackageModeChanged(Ljava/lang/String;III)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    nop

    .line 306
    .end local v1    # "i":I
    return-void

    .line 301
    .end local v5    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;>;"
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setUidMode(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I

    .line 197
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 199
    .local v0, "defaultMode":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 202
    .local v2, "opModes":Landroid/util/SparseIntArray;
    move v3, v0

    .line 203
    .local v3, "previousMode":I
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 225
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v3    # "previousMode":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 206
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "previousMode":I
    :cond_0
    :goto_0
    if-ne p4, v3, :cond_1

    .line 207
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 210
    :cond_1
    if-ne p4, v0, :cond_2

    .line 211
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 212
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 213
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 216
    :cond_2
    if-nez v2, :cond_3

    .line 217
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v2, v4

    .line 218
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    :cond_3
    invoke-virtual {v2, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleWriteLocked()V

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v3    # "previousMode":I
    .local v4, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 228
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    invoke-interface {v2, p1, p3, p4, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onUidModeChanged(IIILjava/lang/String;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 231
    .end local v1    # "i":I
    const/4 v1, 0x1

    return v1

    .line 225
    .end local v4    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;>;"
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public shutdown()V
    .locals 3

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 530
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 531
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    .line 532
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    .line 533
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeState()V

    .line 540
    :cond_1
    return-void

    .line 536
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    invoke-direct {p0, v1}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeLocked(I)V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method upgradeRunAnyInBackgroundLocked()V
    .locals 11

    .line 573
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 574
    .local v0, "uidModesSize":I
    const/4 v1, 0x0

    .local v1, "uidIdx":I
    :goto_0
    const/16 v2, 0x46

    const/16 v3, 0x3f

    if-ge v1, v0, :cond_1

    .line 575
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 577
    .local v4, "modesForUid":Landroid/util/SparseIntArray;
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 578
    .local v3, "idx":I
    if-ltz v3, :cond_0

    .line 580
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 574
    .end local v3    # "idx":I
    .end local v4    # "modesForUid":Landroid/util/SparseIntArray;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 584
    .end local v1    # "uidIdx":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 585
    .local v1, "usersSize":I
    const/4 v4, 0x0

    .local v4, "userIdx":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 586
    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 587
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 589
    .local v5, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v6, 0x0

    .local v6, "pkgIdx":I
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 590
    .local v7, "packageModesSize":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 591
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 593
    .local v8, "modes":Landroid/util/SparseIntArray;
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    .line 594
    .local v9, "idx":I
    if-ltz v9, :cond_2

    .line 596
    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v8, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    .end local v8    # "modes":Landroid/util/SparseIntArray;
    .end local v9    # "idx":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 585
    .end local v5    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v6    # "pkgIdx":I
    .end local v7    # "packageModesSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 600
    .end local v4    # "userIdx":I
    return-void
.end method

.method upgradeScheduleExactAlarmLocked()V
    .locals 18

    .line 610
    move-object/from16 v0, p0

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 612
    .local v1, "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 613
    .local v2, "umi":Lcom/android/server/pm/UserManagerInternal;
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 615
    .local v3, "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 616
    const/16 v4, 0x6b

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-interface {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, "packagesDeclaringPermission":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    .line 619
    .local v6, "userIds":[I
    array-length v7, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v5, v9

    .line 620
    .local v10, "pkg":Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_1

    aget v13, v6, v12

    .line 621
    .local v13, "userId":I
    const-wide/16 v14, 0x0

    invoke-virtual {v3, v10, v14, v15, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v14

    .line 622
    .local v14, "uid":I
    nop

    .line 623
    const-string v15, "default:0"

    invoke-virtual {v0, v14, v15, v4}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->getUidMode(ILjava/lang/String;I)I

    move-result v8

    .line 627
    .local v8, "oldMode":I
    move/from16 v17, v4

    invoke-static/range {v17 .. v17}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 628
    move-object/from16 v16, v1

    move/from16 v4, v17

    const/4 v1, 0x0

    .end local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .local v16, "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    invoke-virtual {v0, v14, v15, v4, v1}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(ILjava/lang/String;II)Z

    goto :goto_2

    .line 627
    .end local v16    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    :cond_0
    move-object/from16 v16, v1

    move/from16 v4, v17

    const/4 v1, 0x0

    .line 620
    .end local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v8    # "oldMode":I
    .end local v13    # "userId":I
    .end local v14    # "uid":I
    .restart local v16    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    goto :goto_1

    .end local v16    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    :cond_1
    move-object/from16 v16, v1

    const/4 v1, 0x0

    .line 619
    .end local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v10    # "pkg":Ljava/lang/String;
    .restart local v16    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .line 638
    .end local v16    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .restart local v1    # "pmsi":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    :cond_2
    return-void
.end method

.method public writeState()V
    .locals 22

    .line 402
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 405
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    .line 409
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 412
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    move-object v4, v0

    .line 413
    .local v4, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 414
    const-string v0, "app-ops"

    invoke-interface {v4, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    const-string/jumbo v0, "v"

    const/4 v6, 0x4

    invoke-interface {v4, v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    .line 418
    .local v6, "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v7, v0

    .line 422
    .local v7, "userPackageModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    iget-object v8, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 423
    :try_start_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 424
    .local v0, "uidModesSize":I
    const/4 v9, 0x0

    .local v9, "uidIdx":I
    :goto_0
    if-ge v9, v0, :cond_0

    .line 425
    :try_start_3
    iget-object v10, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 426
    .local v10, "uid":I
    iget-object v11, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseIntArray;

    .line 427
    .local v11, "modes":Landroid/util/SparseIntArray;
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    .end local v10    # "uid":I
    .end local v11    # "modes":Landroid/util/SparseIntArray;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "uidModesSize":I
    .end local v9    # "uidIdx":I
    :catchall_0
    move-exception v0

    move-object/from16 v21, v6

    goto/16 :goto_8

    .line 424
    .restart local v0    # "uidModesSize":I
    .restart local v9    # "uidIdx":I
    :cond_0
    nop

    .line 429
    .end local v9    # "uidIdx":I
    :try_start_4
    iget-object v9, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 430
    .local v9, "usersSize":I
    const/4 v10, 0x0

    .local v10, "userIdx":I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 431
    :try_start_5
    iget-object v11, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 432
    .local v11, "user":I
    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    .line 433
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 434
    .local v12, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 435
    .local v13, "packageModesCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    const/4 v14, 0x0

    .local v14, "pkgIdx":I
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 437
    .local v15, "packageModesSize":I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 438
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 439
    .local v17, "pkg":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseIntArray;

    .line 440
    .local v16, "modes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    move/from16 v18, v10

    move-object/from16 v10, v17

    .end local v17    # "pkg":Ljava/lang/String;
    .local v10, "pkg":Ljava/lang/String;
    .local v18, "userIdx":I
    invoke-virtual {v13, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 437
    nop

    .end local v10    # "pkg":Ljava/lang/String;
    .end local v16    # "modes":Landroid/util/SparseIntArray;
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v18

    const/4 v5, 0x0

    goto :goto_2

    .end local v18    # "userIdx":I
    .local v10, "userIdx":I
    :cond_1
    move/from16 v18, v10

    .line 430
    .end local v10    # "userIdx":I
    .end local v11    # "user":I
    .end local v12    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "packageModesCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v14    # "pkgIdx":I
    .end local v15    # "packageModesSize":I
    .restart local v18    # "userIdx":I
    add-int/lit8 v10, v18, 0x1

    const/4 v5, 0x0

    .end local v18    # "userIdx":I
    .restart local v10    # "userIdx":I
    goto :goto_1

    :cond_2
    move/from16 v18, v10

    .line 443
    .end local v10    # "userIdx":I
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 445
    const/4 v5, 0x0

    .local v5, "uidStateNum":I
    :goto_3
    if-ge v5, v0, :cond_4

    .line 446
    :try_start_7
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 447
    .local v8, "uid":I
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseIntArray;

    .line 449
    .local v10, "modes":Landroid/util/SparseIntArray;
    const-string/jumbo v11, "uid"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const-string/jumbo v11, "n"

    invoke-interface {v4, v12, v11, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 453
    .local v11, "modesSize":I
    const/4 v12, 0x0

    .local v12, "modeIdx":I
    :goto_4
    if-ge v12, v11, :cond_3

    .line 454
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 455
    .local v13, "op":I
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 456
    .local v14, "mode":I
    const-string/jumbo v15, "op"

    move/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "uidModesSize":I
    .local v16, "uidModesSize":I
    invoke-interface {v4, v0, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    const-string/jumbo v15, "n"

    invoke-interface {v4, v0, v15, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    const-string/jumbo v15, "m"

    invoke-interface {v4, v0, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    const-string/jumbo v15, "op"

    invoke-interface {v4, v0, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    nop

    .end local v13    # "op":I
    .end local v14    # "mode":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    goto :goto_4

    .line 502
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v5    # "uidStateNum":I
    .end local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "userPackageModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .end local v8    # "uid":I
    .end local v9    # "usersSize":I
    .end local v10    # "modes":Landroid/util/SparseIntArray;
    .end local v11    # "modesSize":I
    .end local v12    # "modeIdx":I
    .end local v16    # "uidModesSize":I
    :catchall_1
    move-exception v0

    goto/16 :goto_b

    .line 498
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 453
    .restart local v0    # "uidModesSize":I
    .restart local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v5    # "uidStateNum":I
    .restart local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "userPackageModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .restart local v8    # "uid":I
    .restart local v9    # "usersSize":I
    .restart local v10    # "modes":Landroid/util/SparseIntArray;
    .restart local v11    # "modesSize":I
    .restart local v12    # "modeIdx":I
    :cond_3
    move/from16 v16, v0

    .line 461
    .end local v0    # "uidModesSize":I
    .end local v12    # "modeIdx":I
    .restart local v16    # "uidModesSize":I
    const-string/jumbo v0, "uid"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    nop

    .end local v8    # "uid":I
    .end local v10    # "modes":Landroid/util/SparseIntArray;
    .end local v11    # "modesSize":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_3

    .end local v16    # "uidModesSize":I
    .restart local v0    # "uidModesSize":I
    :cond_4
    move/from16 v16, v0

    .line 464
    .end local v0    # "uidModesSize":I
    .end local v5    # "uidStateNum":I
    .restart local v16    # "uidModesSize":I
    const/4 v0, 0x0

    .local v0, "userIdx":I
    :goto_5
    if-ge v0, v9, :cond_7

    .line 465
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 466
    .local v5, "userId":I
    nop

    .line 467
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 469
    .local v8, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string/jumbo v10, "user"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    const-string/jumbo v10, "n"

    invoke-interface {v4, v12, v10, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 473
    .local v10, "packageModesSize":I
    const/4 v11, 0x0

    .local v11, "pkgIdx":I
    :goto_6
    if-ge v11, v10, :cond_6

    .line 474
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 475
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseIntArray;

    .line 477
    .local v13, "modes":Landroid/util/SparseIntArray;
    const-string/jumbo v14, "pkg"

    const/4 v15, 0x0

    invoke-interface {v4, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    const-string/jumbo v14, "n"

    invoke-interface {v4, v15, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    .line 481
    .local v14, "modesSize":I
    const/4 v15, 0x0

    .local v15, "modeIdx":I
    :goto_7
    if-ge v15, v14, :cond_5

    .line 482
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    move/from16 v18, v17

    .line 483
    .local v18, "op":I
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v17

    move/from16 v19, v17

    .line 485
    .local v19, "mode":I
    move/from16 v17, v0

    .end local v0    # "userIdx":I
    .local v17, "userIdx":I
    const-string/jumbo v0, "op"

    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "userId":I
    .local v20, "userId":I
    invoke-interface {v4, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    const-string/jumbo v0, "n"

    move-object/from16 v21, v6

    move/from16 v6, v18

    .end local v18    # "op":I
    .local v6, "op":I
    .local v21, "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    invoke-interface {v4, v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    const-string/jumbo v0, "m"

    move/from16 v18, v6

    move/from16 v6, v19

    .end local v19    # "mode":I
    .local v6, "mode":I
    .restart local v18    # "op":I
    invoke-interface {v4, v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    const-string/jumbo v0, "op"

    invoke-interface {v4, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    nop

    .end local v6    # "mode":I
    .end local v18    # "op":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    move/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_7

    .end local v17    # "userIdx":I
    .end local v20    # "userId":I
    .end local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v0    # "userIdx":I
    .restart local v5    # "userId":I
    .local v6, "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_5
    move/from16 v17, v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 490
    .end local v0    # "userIdx":I
    .end local v5    # "userId":I
    .end local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v15    # "modeIdx":I
    .restart local v17    # "userIdx":I
    .restart local v20    # "userId":I
    .restart local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    const-string/jumbo v0, "pkg"

    const/4 v15, 0x0

    invoke-interface {v4, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    nop

    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "modes":Landroid/util/SparseIntArray;
    .end local v14    # "modesSize":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    move/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_6

    .end local v17    # "userIdx":I
    .end local v20    # "userId":I
    .end local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v0    # "userIdx":I
    .restart local v5    # "userId":I
    .restart local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_6
    move/from16 v17, v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 492
    .end local v0    # "userIdx":I
    .end local v5    # "userId":I
    .end local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v11    # "pkgIdx":I
    .restart local v17    # "userIdx":I
    .restart local v20    # "userId":I
    .restart local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    const-string/jumbo v0, "user"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    nop

    .end local v8    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "packageModesSize":I
    .end local v20    # "userId":I
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v6, v21

    .end local v17    # "userIdx":I
    .restart local v0    # "userIdx":I
    goto/16 :goto_5

    .end local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_7
    move/from16 v17, v0

    move-object/from16 v21, v6

    .line 495
    .end local v0    # "userIdx":I
    .end local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    const-string v0, "app-ops"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 497
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 501
    .end local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v7    # "userPackageModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .end local v9    # "usersSize":I
    .end local v16    # "uidModesSize":I
    .end local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    goto :goto_a

    .line 443
    .restart local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "userPackageModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v21, v6

    .end local v6    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :goto_8
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/appop/AppOpsCheckingServiceImpl;
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsCheckingServiceImpl;
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 498
    .end local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v7    # "userPackageModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .end local v21    # "uidModesCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :goto_9
    nop

    .line 499
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    const-string v4, "LegacyAppOpsServiceInterfaceImpl"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    iget-object v4, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_a
    monitor-exit v2

    .line 503
    return-void

    .line 406
    :catch_1
    move-exception v0

    nop

    .line 407
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "LegacyAppOpsServiceInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v2

    return-void

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method
