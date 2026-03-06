.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakefulnessSessionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WakefulnessSessionPowerGroup"
.end annotation


# static fields
.field private static final TIMEOUT_OFF_RESET_TIMESTAMP:J = -0x1L


# instance fields
.field private mCurrentScreenPolicy:I

.field private mCurrentScreenPolicyTimestamp:J

.field protected mCurrentUserActivityEvent:I

.field protected mCurrentUserActivityTimestamp:J

.field private mCurrentWakefulness:I

.field private mInteractiveOffTimestamp:J

.field private mInteractiveStateOnStartTimestamp:J

.field protected mIsInteractive:Z

.field protected mPastDimDurationMs:I

.field private mPowerGroupId:I

.field private mPrevScreenPolicy:I

.field private mPrevScreenPolicyDurationMs:I

.field protected mPrevUserActivityEvent:I

.field protected mPrevUserActivityTimestamp:J

.field private mSendOverrideTimeoutLogTimestamp:J

.field private mTimeoutOffTimestamp:J

.field private mTimeoutOverrideReleaseReason:I

.field private mTimeoutOverrideWakeLockCounter:I

.field final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public static synthetic $r8$lambda$KmXu3QokAZYu-qVjwdvvOaylSoE(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->lambda$checkAndLogDimIfQualified$0(IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/power/WakefulnessSessionObserver;
    .param p2, "powerGroupId"    # I
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

    .line 405
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    .line 385
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 406
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 407
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 408
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 409
    iput-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 410
    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    .line 411
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    .line 412
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    .line 413
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    .line 414
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    .line 415
    return-void
.end method

.method private checkAndLogDimIfQualified(IJ)V
    .locals 14
    .param p1, "reasonToBeChecked"    # I
    .param p2, "eventTime"    # J

    .line 608
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    if-eqz v0, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v7

    .line 613
    .local v7, "screenOffTimeoutMs":I
    const/4 v0, 0x0

    .line 614
    .local v0, "dimDurationMs":I
    iget v4, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 615
    .local v4, "lastUserActivity":I
    iget-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v1, p2, v1

    long-to-int v5, v1

    .line 616
    .local v5, "lastUserActivityDurationMs":I
    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    .line 702
    return-void

    .line 688
    :pswitch_0
    iget-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    sub-long v8, p2, v1

    .line 689
    .local v8, "offToOnDurationMs":J
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    if-lez v1, :cond_1

    const-wide/16 v1, 0x1388

    cmp-long v1, v8, v1

    if-gez v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v2}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    iget v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    move v10, v4

    move v11, v5

    .end local v4    # "lastUserActivity":I
    .end local v5    # "lastUserActivityDurationMs":I
    .local v10, "lastUserActivity":I
    .local v11, "lastUserActivityDurationMs":I
    goto :goto_0

    .line 689
    .end local v10    # "lastUserActivity":I
    .end local v11    # "lastUserActivityDurationMs":I
    .restart local v4    # "lastUserActivity":I
    .restart local v5    # "lastUserActivityDurationMs":I
    :cond_1
    move v10, v4

    move v11, v5

    .line 699
    .end local v4    # "lastUserActivity":I
    .end local v5    # "lastUserActivityDurationMs":I
    .restart local v10    # "lastUserActivity":I
    .restart local v11    # "lastUserActivityDurationMs":I
    :goto_0
    return-void

    .line 659
    .end local v8    # "offToOnDurationMs":J
    .end local v10    # "lastUserActivity":I
    .end local v11    # "lastUserActivityDurationMs":I
    .restart local v4    # "lastUserActivity":I
    .restart local v5    # "lastUserActivityDurationMs":I
    :pswitch_1
    move v10, v4

    move v11, v5

    .end local v4    # "lastUserActivity":I
    .end local v5    # "lastUserActivityDurationMs":I
    .restart local v10    # "lastUserActivity":I
    .restart local v11    # "lastUserActivityDurationMs":I
    iget v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v2, v1, :cond_2

    .line 660
    iget-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v1, p2, v1

    long-to-int v6, v1

    .line 661
    .local v6, "savedDimDurationMs":I
    move v4, v10

    .line 662
    .local v4, "savedLastUserActivity":I
    move v5, v11

    .line 672
    .local v5, "savedLastUserActivityDurationMs":I
    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmHandler(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/os/Handler;

    move-result-object v8

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V

    sget-object v2, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v8, v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 683
    .end local v4    # "savedLastUserActivity":I
    .end local v5    # "savedLastUserActivityDurationMs":I
    .end local v6    # "savedDimDurationMs":I
    :cond_2
    return-void

    .line 637
    .end local v10    # "lastUserActivity":I
    .end local v11    # "lastUserActivityDurationMs":I
    .local v4, "lastUserActivity":I
    .local v5, "lastUserActivityDurationMs":I
    :pswitch_2
    move v10, v4

    move v11, v5

    .end local v4    # "lastUserActivity":I
    .end local v5    # "lastUserActivityDurationMs":I
    .restart local v10    # "lastUserActivity":I
    .restart local v11    # "lastUserActivityDurationMs":I
    iget v4, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 638
    .end local v10    # "lastUserActivity":I
    .restart local v4    # "lastUserActivity":I
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v2, p2, v2

    long-to-int v5, v2

    .line 641
    .end local v11    # "lastUserActivityDurationMs":I
    .restart local v5    # "lastUserActivityDurationMs":I
    const/4 v0, 0x0

    .line 642
    iget v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v2, v1, :cond_3

    .line 643
    iget-wide v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v1, p2, v1

    long-to-int v6, v1

    .line 644
    .end local v0    # "dimDurationMs":I
    .local v6, "dimDurationMs":I
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    .line 651
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmHandler(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v0, v6

    .line 654
    .end local v6    # "dimDurationMs":I
    .restart local v0    # "dimDurationMs":I
    :cond_3
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    .line 655
    return-void

    .line 620
    :pswitch_3
    move v10, v4

    move v11, v5

    .end local v4    # "lastUserActivity":I
    .end local v5    # "lastUserActivityDurationMs":I
    .restart local v10    # "lastUserActivity":I
    .restart local v11    # "lastUserActivityDurationMs":I
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v2, p2, v2

    long-to-int v0, v2

    .line 621
    iget v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    if-ne v2, v1, :cond_4

    .line 622
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    move v6, v0

    goto :goto_1

    .line 621
    :cond_4
    move v6, v0

    .line 624
    .end local v0    # "dimDurationMs":I
    .restart local v6    # "dimDurationMs":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    move v3, p1

    move v4, v10

    move v5, v11

    .end local v10    # "lastUserActivity":I
    .end local v11    # "lastUserActivityDurationMs":I
    .restart local v4    # "lastUserActivity":I
    .restart local v5    # "lastUserActivityDurationMs":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    .line 631
    iput v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    .line 632
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$checkAndLogDimIfQualified$0(IIIII)V
    .locals 8
    .param p1, "reasonToBeChecked"    # I
    .param p2, "savedLastUserActivity"    # I
    .param p3, "savedLastUserActivityDurationMs"    # I
    .param p4, "savedDimDurationMs"    # I
    .param p5, "screenOffTimeoutMs"    # I

    .line 673
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "reasonToBeChecked":I
    .end local p2    # "savedLastUserActivity":I
    .end local p3    # "savedLastUserActivityDurationMs":I
    .end local p4    # "savedDimDurationMs":I
    .end local p5    # "screenOffTimeoutMs":I
    .local v3, "reasonToBeChecked":I
    .local v4, "savedLastUserActivity":I
    .local v5, "savedLastUserActivityDurationMs":I
    .local v6, "savedDimDurationMs":I
    .local v7, "screenOffTimeoutMs":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    .line 680
    iput v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    .line 681
    return-void
.end method


# virtual methods
.method public acquireTimeoutOverrideWakeLock()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 549
    :try_start_0
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 550
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 10
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;

    .line 707
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmClock(Lcom/android/server/power/WakefulnessSessionObserver;)Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/WakefulnessSessionObserver$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 709
    .local v0, "now":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wakefulness Session Power Group powerGroupId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current wakefulness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user activity event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v2, v0, v2

    .line 714
    .local v2, "currentUserActivityDurationMs":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current user activity duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "previous user activity event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    iget-wide v4, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v4, v0, v4

    .line 717
    .local v4, "prevUserActivityDurationMs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "previous user activity duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is in override timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsInteractive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current screen policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    iget-wide v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v6, v0, v6

    .line 722
    .local v6, "currentScreenPolicyDurationMs":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current screen policy duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "previous screen policy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "past screen policy duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 726
    return-void
.end method

.method protected isInOverrideTimeout()Z
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 601
    :try_start_0
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 602
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyUserActivity(JI)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "event"    # I

    .line 419
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    if-ne p3, v0, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 423
    iput p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 424
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 425
    iput-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 426
    return-void
.end method

.method public onScreenPolicyUpdate(JI)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "newPolicy"    # I

    .line 429
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne p3, v0, :cond_0

    .line 430
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 434
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    .line 437
    :cond_1
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    .line 438
    iput p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    .line 439
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    .line 440
    iput-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    .line 441
    return-void
.end method

.method public onWakefulnessChangeStarted(IIJ)V
    .locals 22
    .param p1, "wakefulness"    # I
    .param p2, "changeReason"    # I
    .param p3, "eventTime"    # J

    .line 444
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p1

    iput v4, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    .line 445
    iget-boolean v5, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    invoke-static {v4}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 446
    return-void

    .line 449
    :cond_0
    iget-object v5, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v5}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v5

    .line 450
    .local v5, "screenOffTimeoutMs":I
    invoke-static {v4}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    .line 451
    iget-boolean v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v6, :cond_3

    .line 452
    iput-wide v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    .line 456
    iget-wide v9, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-eqz v6, :cond_2

    .line 457
    iget-wide v9, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    sub-long v9, v2, v9

    .line 458
    .local v9, "timeoutOffToOnDurationMs":J
    const-wide/16 v13, 0x1388

    cmp-long v6, v9, v13

    if-gez v6, :cond_1

    .line 459
    iget-object v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v6, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v13, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    iget-object v14, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v14}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v14

    invoke-virtual {v6, v13, v8, v14, v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 464
    iput-wide v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 466
    :cond_1
    iput-wide v11, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 469
    .end local v9    # "timeoutOffToOnDurationMs":J
    :cond_2
    invoke-direct {v0, v7, v2, v3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    goto/16 :goto_1

    .line 472
    :cond_3
    iget v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 473
    .local v6, "lastUserActivity":I
    iget-wide v9, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v9, v2, v9

    .line 474
    .local v9, "lastUserActivityDurationMs":J
    const/4 v11, 0x0

    .line 475
    .local v11, "interactiveStateOffReason":I
    const/4 v12, 0x0

    .line 476
    .local v12, "reducedInteractiveStateOnDurationMs":I
    iput-wide v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    .line 478
    if-ne v1, v7, :cond_6

    .line 479
    const/4 v11, 0x2

    .line 483
    iget v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 484
    iget-wide v13, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v9, v2, v13

    .line 486
    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v7

    const/4 v13, 0x5

    if-nez v7, :cond_4

    iget v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    if-ne v7, v13, :cond_5

    .line 489
    :cond_4
    iget-object v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v7, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v14, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    iget-object v15, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v15}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v15

    invoke-virtual {v7, v14, v13, v15, v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 494
    iput-wide v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 495
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 498
    :cond_5
    invoke-direct {v0, v8, v2, v3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    move/from16 v18, v6

    move-wide/from16 v19, v9

    move v15, v11

    goto :goto_0

    .line 500
    :cond_6
    if-ne v1, v8, :cond_8

    .line 502
    const/4 v11, 0x1

    .line 504
    iget v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 505
    iget-wide v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v9, v2, v7

    .line 509
    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    .line 510
    iget-object v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v7}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v7

    sub-int v12, v5, v7

    .line 512
    iget-object v7, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v7, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v13, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    iget-object v14, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v14}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v14

    invoke-virtual {v7, v13, v8, v14, v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 517
    iput-wide v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 521
    iput-wide v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 524
    :cond_7
    invoke-direct {v0, v8, v2, v3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    move/from16 v18, v6

    move-wide/from16 v19, v9

    move v15, v11

    goto :goto_0

    .line 500
    :cond_8
    move/from16 v18, v6

    move-wide/from16 v19, v9

    move v15, v11

    .line 527
    .end local v6    # "lastUserActivity":I
    .end local v9    # "lastUserActivityDurationMs":J
    .end local v11    # "interactiveStateOffReason":I
    .local v15, "interactiveStateOffReason":I
    .local v18, "lastUserActivity":I
    .local v19, "lastUserActivityDurationMs":J
    :goto_0
    iget-wide v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    sub-long v16, v2, v6

    .line 530
    .local v16, "interactiveStateOnDurationMs":J
    if-ge v12, v5, :cond_9

    if-ltz v12, :cond_9

    .line 532
    iget-object v6, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v13, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v14, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    move/from16 v21, v12

    .end local v12    # "reducedInteractiveStateOnDurationMs":I
    .local v21, "reducedInteractiveStateOnDurationMs":I
    invoke-virtual/range {v13 .. v21}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logSessionEvent(IIJIJI)V

    .end local v21    # "reducedInteractiveStateOnDurationMs":I
    .restart local v12    # "reducedInteractiveStateOnDurationMs":I
    goto :goto_1

    .line 540
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid reducedInteractiveStateOnDurationMs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WakefulnessSessionObserver"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v12    # "reducedInteractiveStateOnDurationMs":I
    .end local v15    # "interactiveStateOffReason":I
    .end local v16    # "interactiveStateOnDurationMs":J
    .end local v18    # "lastUserActivity":I
    .end local v19    # "lastUserActivityDurationMs":J
    :goto_1
    return-void
.end method

.method public releaseTimeoutOverrideWakeLock(I)V
    .locals 10
    .param p1, "releaseReason"    # I

    .line 555
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 556
    :try_start_0
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 557
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {p0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 561
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmClock(Lcom/android/server/power/WakefulnessSessionObserver;)Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/WakefulnessSessionObserver$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 566
    .local v0, "now":J
    iget-wide v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    sub-long v3, v0, v3

    .line 567
    .local v3, "sendOverrideTimeoutLogDuration":J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 569
    .local v2, "sendOverrideTimeoutLogSoon":Z
    :goto_0
    if-nez v2, :cond_1

    .line 570
    const/4 v5, 0x0

    .line 571
    .local v5, "outcome":I
    packed-switch p1, :pswitch_data_0

    .line 587
    const/4 v5, 0x0

    goto :goto_1

    .line 580
    :pswitch_0
    const/4 v5, 0x6

    .line 581
    goto :goto_1

    .line 577
    :pswitch_1
    const/4 v5, 0x4

    .line 578
    goto :goto_1

    .line 584
    :pswitch_2
    const/4 v5, 0x7

    .line 585
    nop

    .line 589
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v6, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v7, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    iget-object v8, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v8}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 593
    invoke-static {v9}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v9

    .line 589
    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 596
    .end local v0    # "now":J
    .end local v2    # "sendOverrideTimeoutLogSoon":Z
    .end local v3    # "sendOverrideTimeoutLogDuration":J
    .end local v5    # "outcome":I
    :cond_1
    return-void

    .line 557
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
