.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/os/IBinder$FrozenStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    }
.end annotation


# instance fields
.field private mAlive:Z

.field private mCached:Z

.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field private mFrozen:Z

.field private mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mPackageName:Ljava/lang/String;

.field private mPendingDisplayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTopology:Landroid/hardware/display/DisplayTopology;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    .locals 4
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p5, "internalEventFlagsMask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4359
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4360
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4361
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 4362
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 4363
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    .line 4365
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    .line 4366
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    .line 4368
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4370
    :try_start_0
    invoke-interface {p4}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4380
    :goto_0
    goto :goto_3

    .line 4377
    :catch_0
    move-exception p1

    goto :goto_1

    .line 4371
    :catch_1
    move-exception v1

    goto :goto_2

    .line 4377
    :goto_1
    nop

    .line 4379
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4371
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2
    nop

    .line 4376
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrozenStateChangeCallback not supported for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 4383
    :cond_0
    :goto_3
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 4384
    .local p1, "packageNames":[Ljava/lang/String;
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_4

    :cond_1
    aget-object v0, p1, v0

    :goto_4
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    .line 4385
    return-void
.end method

.method private addDisplayEvent(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 4589
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    .line 4592
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4595
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4596
    .local v0, "last":Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 4597
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore redundant display event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    :cond_1
    return-void

    .line 4604
    .end local v0    # "last":Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;-><init>(IILcom/android/server/display/DisplayManagerService-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4605
    return-void
.end method

.method private dump()Ljava/lang/String;
    .locals 11

    .line 4719
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4720
    const-string/jumbo v1, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s cached=%s frozen=%s pendingDisplayEvents=%d pendingTopology=%b"

    .line 4723
    .local v1, "fmt":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v2

    .line 4724
    :try_start_0
    const-string/jumbo v0, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s cached=%s frozen=%s pendingDisplayEvents=%d pendingTopology=%b"

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4725
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 4726
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-nez v3, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 4727
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v9, v3

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    .line 4724
    invoke-static {v0, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 4728
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4730
    .end local v1    # "fmt":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s"

    .line 4732
    .local v0, "fmt":Ljava/lang/String;
    const-string/jumbo v1, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s"

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4733
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 4732
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasPendingAndIsReadyLocked()Z
    .locals 5

    .line 4417
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    .line 4418
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    nop

    .line 4419
    .local v0, "pendingDisplayEvents":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 4420
    .local v3, "pendingTopology":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    if-eqz v4, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private isReadyLocked()Z
    .locals 1

    .line 4409
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setFrozen(Z)Z
    .locals 2
    .param p1, "frozen"    # Z

    .line 4429
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4430
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    .line 4431
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldSendDisplayEvent(I)Z
    .locals 8
    .param p1, "event"    # I

    .line 4543
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 4544
    .local v0, "mask":J
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown display event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    return v5

    .line 4575
    :pswitch_0
    const-wide/16 v6, 0x200

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_0

    move v2, v5

    :cond_0
    return v2

    .line 4572
    :pswitch_1
    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1

    move v2, v5

    :cond_1
    return v2

    .line 4568
    :pswitch_2
    const-wide/16 v6, 0x40

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    return v2

    .line 4564
    :pswitch_3
    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    move v2, v5

    :cond_3
    return v2

    .line 4557
    :pswitch_4
    const-wide/16 v6, 0x10

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_4

    move v2, v5

    :cond_4
    return v2

    .line 4551
    :pswitch_5
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_5

    move v2, v5

    :cond_5
    return v2

    .line 4555
    :pswitch_6
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_6

    move v2, v5

    :cond_6
    return v2

    .line 4548
    :pswitch_7
    const-wide/16 v6, 0x2

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    move v2, v5

    :cond_7
    return v2

    .line 4546
    :pswitch_8
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_8

    move v2, v5

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transmitDisplayEvent(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4536
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    .line 4537
    return-void
.end method

.method private transmitTopologyUpdate(Landroid/hardware/display/DisplayTopology;)Z
    .locals 3
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 4649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4650
    const/4 v0, 0x1

    return v0

    .line 4651
    :catch_0
    move-exception v0

    .line 4652
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that display topology changed, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4654
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 4655
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 4452
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4453
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    .line 4454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4455
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4456
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display listener for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    :cond_1
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayManagerBinderDied#mPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4462
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 4463
    return-void

    .line 4454
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dispatchPending()Z
    .locals 9

    .line 4663
    const/4 v0, 0x0

    .line 4665
    .local v0, "pendingDisplayEvents":[Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v1

    .line 4666
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4667
    monitor-exit v1

    return v3

    .line 4681
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 4669
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 4670
    monitor-exit v1

    return v4

    .line 4673
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4674
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    move-object v0, v2

    .line 4675
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    move-object v0, v2

    .line 4676
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4679
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4680
    .local v2, "pendingTopology":Landroid/hardware/display/DisplayTopology;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4681
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4683
    if-eqz v0, :cond_5

    .line 4684
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v5, v0

    if-ge v1, v5, :cond_5

    .line 4685
    aget-object v5, v0, v1

    .line 4686
    .local v5, "displayEvent":Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4687
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send pending display event #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4709
    .end local v1    # "i":I
    .end local v5    # "displayEvent":Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 4692
    .restart local v1    # "i":I
    .restart local v5    # "displayEvent":Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    :cond_3
    :goto_1
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4693
    goto :goto_2

    .line 4696
    :cond_4
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v6

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitDisplayEvent(II)V

    .line 4684
    .end local v5    # "displayEvent":Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4700
    .end local v1    # "i":I
    :cond_5
    if-eqz v2, :cond_7

    .line 4701
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4702
    const-string v1, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send pending topology: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 4709
    :goto_3
    nop

    .line 4710
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notify process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", assuming it died."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4711
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 4712
    return v4

    .line 4708
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_7
    :goto_4
    return v3

    .line 4681
    .end local v2    # "pendingTopology":Landroid/hardware/display/DisplayTopology;
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyDisplayEventAsync(II)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 4479
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldSendDisplayEvent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4480
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4481
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not sending displayEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to mask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    :cond_0
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDisplayEventAsync#notSendingEvent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mInternalEventFlagsMask="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4491
    :cond_1
    return v1

    .line 4494
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4495
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4501
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    .line 4502
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 4508
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    monitor-exit v0

    goto :goto_2

    .line 4505
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->addDisplayEvent(II)V

    .line 4506
    monitor-exit v0

    return v1

    .line 4508
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4511
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4513
    return v1

    .line 4517
    :cond_6
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitDisplayEvent(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4518
    return v1

    .line 4519
    :catch_0
    move-exception v0

    .line 4520
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that displays changed, assuming it died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4522
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 4523
    const/4 v1, 0x0

    return v1
.end method

.method notifyTopologyUpdateAsync(Landroid/hardware/display/DisplayTopology;)Z
    .locals 5
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 4613
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4615
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4616
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not sending topology update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    :cond_0
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTopologyUpdateAsync#notSendingUpdate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mInternalEventFlagsMask="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4625
    :cond_1
    return v1

    .line 4628
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4629
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4631
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4633
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4634
    monitor-exit v0

    return v1

    .line 4636
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_3
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4639
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitTopologyUpdate(Landroid/hardware/display/DisplayTopology;)Z

    move-result v0

    return v0
.end method

.method public onFrozenStateChanged(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "state"    # I

    .line 4467
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setFrozen(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4468
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4469
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4471
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public setCached(Z)Z
    .locals 2
    .param p1, "cached"    # Z

    .line 4441
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4442
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    .line 4443
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldReceiveRefreshRateWithChangeUpdate(I)Z
    .locals 5
    .param p1, "event"    # I

    .line 4388
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefreshRateEventForForegroundAppsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4391
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    .line 4392
    .local v0, "procState":I
    nop

    .line 4393
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    .line 4394
    .local v2, "importance":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmMaxImportanceForRRCallbacks(Lcom/android/server/display/DisplayManagerService;)I

    move-result v3

    if-le v2, v3, :cond_0

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4397
    .end local v0    # "procState":I
    .end local v2    # "importance":I
    :cond_2
    return v1
.end method

.method public updateEventFlagsMask(J)V
    .locals 1
    .param p1, "internalEventFlag"    # J

    .line 4401
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4402
    return-void
.end method
