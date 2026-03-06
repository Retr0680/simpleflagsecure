.class public Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CancelNotificationRunnable"
.end annotation


# instance fields
.field private final mCallingPid:I

.field private final mCallingUid:I

.field private final mCancellationElapsedTimeMs:J

.field private final mCount:I

.field private final mId:I

.field private final mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field private final mMustHaveFlags:I

.field private final mMustNotHaveFlags:I

.field private final mPkg:Ljava/lang/String;

.field private final mRank:I

.field private final mReason:I

.field private final mSendDelete:Z

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$JqwDe9ZkYXAqtt5oz-qopN18Czk(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->lambda$run$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kYFIDEcWoLAYUYKeGjvl50FfPbY(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smisChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V
    .locals 14
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "mustHaveFlags"    # I
    .param p8, "mustNotHaveFlags"    # I
    .param p9, "sendDelete"    # Z
    .param p10, "userId"    # I
    .param p11, "reason"    # I
    .param p12, "rank"    # I
    .param p13, "count"    # I
    .param p14, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p15, "cancellationElapsedTimeMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 9540
    move-object v0, p1

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9541
    move/from16 v1, p2

    iput v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 9542
    move/from16 v2, p3

    iput v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 9543
    move-object/from16 v3, p4

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 9544
    move-object/from16 v4, p5

    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 9545
    move/from16 v5, p6

    iput v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 9546
    move/from16 v6, p7

    iput v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 9547
    move/from16 v7, p8

    iput v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 9548
    move/from16 v8, p9

    iput-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 9549
    move/from16 v9, p10

    iput v9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 9550
    move/from16 v10, p11

    iput v10, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 9551
    move/from16 v11, p12

    iput v11, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 9552
    move/from16 v12, p13

    iput v12, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 9553
    move-object/from16 v13, p14

    iput-object v13, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9554
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    .line 9555
    return-void
.end method

.method private synthetic lambda$run$0(I)Z
    .locals 4
    .param p1, "flags"    # I

    .line 9606
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 9614
    :cond_1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 9615
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_2

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 9617
    :cond_2
    return v3

    .line 9611
    :goto_0
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_3

    .line 9612
    return v3

    .line 9620
    :cond_3
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 9621
    return v3

    .line 9623
    :cond_4
    return v2
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 9559
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 9560
    .local v7, "listenerName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    .line 9561
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    move-object v9, v7

    .end local v7    # "listenerName":Ljava/lang/String;
    .local v9, "listenerName":Ljava/lang/String;
    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    move-object v11, v9

    .end local v9    # "listenerName":Ljava/lang/String;
    .local v11, "listenerName":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    move-object v9, v11

    .end local v11    # "listenerName":Ljava/lang/String;
    .restart local v9    # "listenerName":Ljava/lang/String;
    goto :goto_1

    .line 9560
    .end local v9    # "listenerName":Ljava/lang/String;
    .restart local v7    # "listenerName":Ljava/lang/String;
    :cond_1
    move-object v9, v7

    .line 9564
    .end local v7    # "listenerName":Ljava/lang/String;
    .restart local v9    # "listenerName":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 9565
    .local v0, "packageImportance":I
    nop

    .line 9566
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I

    move-result v15

    .line 9568
    .end local v0    # "packageImportance":I
    .local v15, "packageImportance":I
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 9570
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    .line 9572
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v3, :cond_b

    .line 9576
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v13, 0x1

    if-ne v0, v13, :cond_2

    .line 9577
    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 9659
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v12

    move/from16 v18, v15

    goto/16 :goto_7

    .line 9580
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :goto_2
    :try_start_2
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 9581
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_4

    :cond_3
    :try_start_4
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v0, v13, :cond_6

    .line 9582
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9583
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v0

    nop

    if-eqz v0, :cond_6

    .line 9584
    :cond_4
    const/4 v0, 0x0

    .line 9585
    .local v0, "flags":I
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 9586
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v2

    move v0, v2

    .line 9588
    :cond_5
    or-int/lit8 v0, v0, 0x2

    .line 9589
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lcom/android/server/notification/NotificationDelegate;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 9590
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 9592
    .end local v0    # "flags":I
    :cond_6
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v0, v2

    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v0, v2, :cond_7

    .line 9593
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .line 9595
    :cond_7
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 9596
    nop

    .line 9599
    :try_start_9
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v0, v3, v2, v15}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 9602
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    .line 9605
    :cond_8
    :try_start_a
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 9627
    .local v0, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 9628
    .local v8, "wasPosted":Z
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    iget-wide v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    invoke-static/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    move/from16 v16, v8

    .line 9631
    .end local v8    # "wasPosted":Z
    .local v16, "wasPosted":Z
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9632
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v4, v3

    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    move-object v5, v4

    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    move-object v6, v5

    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v7, "r":Lcom/android/server/notification/NotificationRecord;
    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda1;-><init>()V

    .line 9635
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v14, v12

    :try_start_b
    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move/from16 v18, v13

    move-object/from16 v17, v14

    :try_start_c
    iget-wide v13, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 9632
    move-object/from16 v19, v9

    move-object v9, v0

    move-object v0, v7

    move-object/from16 v7, v19

    move/from16 v19, v18

    move/from16 v18, v15

    move/from16 v15, v19

    .end local v15    # "packageImportance":I
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    .local v7, "listenerName":Ljava/lang/String;
    .local v9, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .local v18, "packageImportance":I
    :try_start_d
    invoke-static/range {v2 .. v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object v2, v9

    move-object v9, v7

    .end local v7    # "listenerName":Ljava/lang/String;
    .local v2, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .local v9, "listenerName":Ljava/lang/String;
    goto :goto_4

    .line 9659
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .end local v9    # "listenerName":Ljava/lang/String;
    .end local v16    # "wasPosted":Z
    .restart local v7    # "listenerName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v7

    .end local v7    # "listenerName":Ljava/lang/String;
    .restart local v9    # "listenerName":Ljava/lang/String;
    goto/16 :goto_7

    .end local v18    # "packageImportance":I
    .restart local v15    # "packageImportance":I
    :catchall_2
    move-exception v0

    :goto_3
    move/from16 v18, v15

    .end local v15    # "packageImportance":I
    .restart local v18    # "packageImportance":I
    goto/16 :goto_7

    .end local v18    # "packageImportance":I
    .restart local v15    # "packageImportance":I
    :catchall_3
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v17, v12

    goto :goto_3

    .line 9631
    .local v0, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v16    # "wasPosted":Z
    :cond_9
    move-object v2, v0

    move-object v0, v3

    move-object/from16 v17, v12

    move/from16 v18, v15

    move v15, v13

    .line 9637
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "packageImportance":I
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v2    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .restart local v18    # "packageImportance":I
    :goto_4
    :try_start_e
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 9638
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 9639
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v15}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_5

    .line 9659
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .end local v16    # "wasPosted":Z
    :catchall_5
    move-exception v0

    goto :goto_7

    .line 9642
    .restart local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_a
    :goto_5
    goto :goto_6

    .line 9643
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v18    # "packageImportance":I
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v15    # "packageImportance":I
    :cond_b
    move-object v0, v3

    move-object/from16 v17, v12

    move/from16 v18, v15

    .line 9645
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "packageImportance":I
    .restart local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v18    # "packageImportance":I
    nop

    .line 9646
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/GroupHelper;->maybeCancelGroupChildrenForCanceledSummary(Ljava/lang/String;Ljava/lang/String;III)V

    .line 9652
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    .line 9653
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 9654
    .local v2, "wasSnoozed":Z
    if-eqz v2, :cond_c

    .line 9655
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 9659
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "wasSnoozed":Z
    :cond_c
    :goto_6
    monitor-exit v17

    .line 9660
    return-void

    .line 9659
    :goto_7
    monitor-exit v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method
