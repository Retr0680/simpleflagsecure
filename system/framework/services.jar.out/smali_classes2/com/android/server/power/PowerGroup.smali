.class public Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "PowerGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerGroup$PowerGroupListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_TIMEOUT:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDimDuration:J

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private final mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field private final mGroupId:I

.field private mIsSandmanSummoned:Z

.field private mLastPowerOnTime:J

.field private mLastSleepReason:I

.field private mLastSleepTime:J

.field private mLastUserActivityEvent:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeReason:I

.field private mLastWakeTime:J

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private mPoweringOn:Z

.field private mReady:Z

.field private final mScreenOffTimeout:J

.field private final mSupportsSandman:Z

.field private mUserActivitySummary:I

.field private mWakeLockSummary:I

.field private mWakefulness:I

.field private final mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJLcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 18
    .param p1, "groupId"    # I
    .param p2, "wakefulnessListener"    # Lcom/android/server/power/PowerGroup$PowerGroupListener;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p5, "wakefulness"    # I
    .param p6, "ready"    # Z
    .param p7, "supportsSandman"    # Z
    .param p8, "eventTime"    # J
    .param p10, "featureFlags"    # Lcom/android/server/power/feature/PowerManagerFlags;

    .line 109
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 99
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    .line 101
    const/16 v4, 0xf

    iput v4, v0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 110
    move/from16 v4, p1

    iput v4, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 111
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 112
    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 113
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 114
    move/from16 v8, p5

    iput v8, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 115
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 116
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 117
    iput-wide v1, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 118
    iput-wide v1, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 119
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 121
    const-wide/16 v12, -0x1

    .line 122
    .local v12, "dimDuration":J
    const-wide/16 v14, -0x1

    .line 123
    .local v14, "screenOffTimeout":J
    move/from16 v16, v3

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-eqz v3, :cond_0

    .line 125
    nop

    .line 126
    const-class v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 127
    .local v3, "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    if-eqz v3, :cond_0

    .line 128
    iget-object v1, v0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object v1

    .line 129
    .local v1, "displayIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 130
    aget v2, v1, v16

    invoke-virtual {v3, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result v2

    .line 131
    .local v2, "deviceId":I
    invoke-virtual {v3, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDeviceId(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 132
    invoke-virtual {v3, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDimDurationMillisForDeviceId(I)J

    move-result-wide v12

    .line 133
    invoke-virtual {v3, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getScreenOffTimeoutMillisForDeviceId(I)J

    move-result-wide v14

    .line 134
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-lez v16, :cond_0

    cmp-long v16, v12, v14

    if-lez v16, :cond_0

    .line 136
    move-wide v12, v14

    .line 142
    .end local v1    # "displayIds":[I
    .end local v2    # "deviceId":I
    .end local v3    # "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    :cond_0
    iput-wide v12, v0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    .line 143
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    .line 144
    return-void
.end method

.method constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;JLcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 2
    .param p1, "wakefulness"    # I
    .param p2, "wakefulnessListener"    # Lcom/android/server/power/PowerGroup$PowerGroupListener;
    .param p3, "notifier"    # Lcom/android/server/power/Notifier;
    .param p4, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p5, "eventTime"    # J
    .param p7, "featureFlags"    # Lcom/android/server/power/feature/PowerManagerFlags;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    .line 101
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 149
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 150
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 151
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 152
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 153
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 154
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 156
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 157
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 158
    iput-object p7, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 159
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    .line 160
    iput-wide v0, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    .line 161
    return-void
.end method

.method private static sleepReasonToDisplayStateReason(I)I
    .locals 1
    .param p0, "sleepReason"    # I

    .line 583
    packed-switch p0, :pswitch_data_0

    .line 588
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 586
    :pswitch_1
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScreenPolicyLocked(ZZZZZ)V
    .locals 5
    .param p1, "quiescent"    # Z
    .param p2, "dozeAfterScreenOff"    # Z
    .param p3, "bootCompleted"    # Z
    .param p4, "screenBrightnessBoostInProgress"    # Z
    .param p5, "brightWhenDozing"    # Z

    .line 471
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    .line 472
    .local v0, "wakefulness":I
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v1

    .line 473
    .local v1, "wakeLockSummary":I
    const/4 v2, 0x1

    .line 474
    .local v2, "policyReason":I
    const v3, 0x7fffffff

    .line 475
    .local v3, "policy":I
    if-eqz p1, :cond_0

    .line 476
    const/4 v3, 0x0

    goto :goto_0

    .line 477
    :cond_0
    if-nez v0, :cond_1

    .line 478
    const/4 v3, 0x0

    .line 479
    iget v4, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    invoke-static {v4}, Lcom/android/server/power/PowerGroup;->sleepReasonToDisplayStateReason(I)I

    move-result v2

    goto :goto_0

    .line 480
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 481
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_2

    .line 482
    const/4 v3, 0x1

    goto :goto_0

    .line 483
    :cond_2
    if-eqz p2, :cond_3

    .line 484
    const/4 v3, 0x0

    goto :goto_0

    .line 485
    :cond_3
    if-eqz p5, :cond_4

    .line 486
    const/4 v3, 0x3

    .line 493
    :cond_4
    :goto_0
    const v4, 0x7fffffff

    if-ne v3, v4, :cond_9

    .line 494
    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 495
    iget v4, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    invoke-static {v4}, Lcom/android/server/power/PowerGroup;->wakeReasonToDisplayStateReason(I)I

    move-result v2

    .line 497
    :cond_5
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_8

    if-eqz p3, :cond_8

    .line 499
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6

    if-eqz p4, :cond_7

    :cond_6
    goto :goto_1

    .line 503
    :cond_7
    const/4 v3, 0x2

    goto :goto_2

    .line 501
    :cond_8
    :goto_1
    const/4 v3, 0x3

    .line 507
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 508
    iget-object v4, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v2, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    .line 510
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 511
    return-void
.end method

.method private static wakeReasonToDisplayStateReason(I)I
    .locals 1
    .param p0, "wakeReason"    # I

    .line 567
    sparse-switch p0, :sswitch_data_0

    .line 576
    const/4 v0, 0x1

    return v0

    .line 574
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 572
    :sswitch_1
    const/4 v0, 0x7

    return v0

    .line 570
    :sswitch_2
    const/4 v0, 0x6

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method dozeLocked(JII)Z
    .locals 14
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "reason"    # I

    .line 316
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v4, p4

    goto/16 :goto_1

    .line 320
    :cond_0
    const-string/jumbo v0, "powerOffDisplay"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    nop

    .line 323
    move/from16 v4, p4

    :try_start_0
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 322
    const/16 v1, 0xf

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v9, v0

    .line 324
    .end local p4    # "reason":I
    .local v9, "reason":I
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v4, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 326
    .local v0, "millisSinceLastUserActivity":J
    sget-object v4, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Powering off display group due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {v9}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (groupId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", millisSinceLastUserActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", lastUserActivityEvent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    .line 330
    invoke-static {v6}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 334
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x3

    const/4 v10, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    nop

    .end local v0    # "millisSinceLastUserActivity":J
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 338
    nop

    .line 339
    return v13

    .line 337
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v9    # "reason":I
    .restart local p4    # "reason":I
    :catchall_1
    move-exception v0

    move v9, v4

    .end local p4    # "reason":I
    .restart local v9    # "reason":I
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 338
    throw v0

    .line 316
    .end local v9    # "reason":I
    .restart local p4    # "reason":I
    :cond_1
    move/from16 v4, p4

    .line 317
    :goto_1
    return v1
.end method

.method dreamLocked(JIZ)Z
    .locals 12
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "allowWake"    # Z

    .line 299
    iget-wide v2, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    if-nez p4, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v2, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dreamPowerGroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 305
    :try_start_0
    sget-object v2, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Napping power group (groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 307
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 311
    nop

    .line 312
    return v0

    .line 310
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 311
    throw v0

    .line 300
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getGroupId()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return v0
.end method

.method getLastPowerOnTimeLocked()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-wide v0
.end method

.method getLastSleepTimeLocked()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-wide v0
.end method

.method getLastUserActivityTimeLocked()J
    .locals 2

    .line 362
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeNoChangeLightsLocked()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method getLastWakeTimeLocked()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    return-wide v0
.end method

.method getPolicyLocked()I
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return v0
.end method

.method getScreenDimDurationOverrideLocked(J)J
    .locals 4
    .param p1, "defaultScreenDimDuration"    # J

    .line 168
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    :goto_0
    return-wide v0
.end method

.method getScreenOffTimeoutOverrideLocked(J)J
    .locals 4
    .param p1, "defaultScreenOffTimeout"    # J

    .line 164
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    :goto_0
    return-wide v0
.end method

.method public getScreenTimeoutPolicy()I
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0
.end method

.method public getUserActivitySummaryLocked()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return v0
.end method

.method public getWakeLockSummaryLocked()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return v0
.end method

.method getWakefulnessLocked()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return v0
.end method

.method public hasWakeLockKeepingScreenOnLocked()Z
    .locals 2

    .line 416
    const/16 v0, 0x26

    .line 418
    .local v0, "screenOnWakeLockMask":I
    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x26

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBrightOrDimLocked()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    return v0
.end method

.method public isPolicyBrightLocked()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPolicyDimLocked()Z
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPoweringOnLocked()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return v0
.end method

.method isReadyLocked()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    return v0
.end method

.method isSandmanSummonedLocked()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return v0
.end method

.method needSuspendBlockerLocked(ZZ)Z
    .locals 3
    .param p1, "proximityPositive"    # Z
    .param p2, "suspendWhenScreenOffDueToProximityConfig"    # Z

    .line 445
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 452
    :cond_0
    return v1

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 461
    return v1

    .line 463
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method setIsPoweringOnLocked(Z)V
    .locals 0
    .param p1, "isPoweringOnNew"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    .line 257
    return-void
.end method

.method setLastPowerOnTimeLocked(J)V
    .locals 0
    .param p1, "time"    # J

    .line 248
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    .line 249
    return-void
.end method

.method setLastUserActivityTimeLocked(JI)V
    .locals 0
    .param p1, "lastUserActivityTime"    # J
    .param p3, "event"    # I

    .line 367
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 368
    iput p3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    .line 369
    return-void
.end method

.method public setLastUserActivityTimeNoChangeLightsLocked(JI)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "event"    # I

    .line 377
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    .line 378
    iput p3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    .line 379
    return-void
.end method

.method setReadyLocked(Z)Z
    .locals 1
    .param p1, "isReady"    # Z

    .line 236
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v0, p1, :cond_0

    .line 237
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 238
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setSandmanSummonedLocked(Z)V
    .locals 0
    .param p1, "isSandmanSummoned"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    .line 270
    return-void
.end method

.method public setUserActivitySummaryLocked(I)V
    .locals 0
    .param p1, "summary"    # I

    .line 398
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    .line 399
    return-void
.end method

.method public setWakeLockSummaryLocked(I)V
    .locals 0
    .param p1, "summary"    # I

    .line 428
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    .line 429
    return-void
.end method

.method setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "newWakefulness"    # I
    .param p2, "eventTime"    # J
    .param p4, "uid"    # I
    .param p5, "reason"    # I
    .param p6, "opUid"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "details"    # Ljava/lang/String;

    .line 194
    move/from16 v5, p5

    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v0, p1, :cond_2

    .line 195
    const/4 v10, 0x1

    if-ne p1, v10, :cond_0

    .line 196
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastPowerOnTimeLocked(J)V

    .line 197
    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 198
    iput-wide p2, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 199
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iput v5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    goto :goto_0

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iput-wide p2, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 204
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iput v5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 208
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 209
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    move-wide v3, p2

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/power/PowerGroup$PowerGroupListener;->onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    .line 211
    return v10

    .line 213
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method sleepLocked(JII)Z
    .locals 12
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I
    .param p4, "reason"    # I

    .line 343
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 347
    :cond_1
    const-string/jumbo v0, "sleepPowerGroup"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 349
    :try_start_0
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleeping power group (groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    .line 353
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v5, p1

    move v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 357
    nop

    .line 358
    return v0

    .line 356
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 357
    throw v0

    .line 344
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSandmanLocked()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    return v0
.end method

.method updateLocked(FLjava/lang/CharSequence;ZZIIFZZLandroid/os/PowerSaveState;ZZZZZZ)Z
    .locals 15
    .param p1, "screenBrightnessOverride"    # F
    .param p2, "overrideTag"    # Ljava/lang/CharSequence;
    .param p3, "useProximitySensor"    # Z
    .param p4, "boostScreenBrightness"    # Z
    .param p5, "dozeScreenState"    # I
    .param p6, "dozeScreenStateReason"    # I
    .param p7, "dozeScreenBrightness"    # F
    .param p8, "useNormalBrightnessForDoze"    # Z
    .param p9, "overrideDrawWakeLock"    # Z
    .param p10, "powerSaverState"    # Landroid/os/PowerSaveState;
    .param p11, "quiescent"    # Z
    .param p12, "dozeAfterScreenOff"    # Z
    .param p13, "bootCompleted"    # Z
    .param p14, "screenBrightnessBoostInProgress"    # Z
    .param p15, "waitForNegativeProximity"    # Z
    .param p16, "brightWhenDozing"    # Z

    .line 526
    move-object/from16 v0, p10

    move-object v1, p0

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerGroup;->updateScreenPolicyLocked(ZZZZZ)V

    .line 528
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v3, p1

    iput v3, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 529
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v4, p2

    iput-object v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverrideTag:Ljava/lang/CharSequence;

    .line 530
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v5, p3

    iput-boolean v5, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 531
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v6, p4

    iput-boolean v6, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 533
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 534
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v8, p5

    iput v8, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 535
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v9, p6

    iput v9, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 536
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    if-nez p9, :cond_1

    .line 537
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v7, 0x4

    const/4 v10, 0x2

    if-ne v2, v7, :cond_0

    .line 538
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v7, 0x3

    iput v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 539
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v7, 0x6

    if-ne v2, v7, :cond_1

    .line 543
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 544
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v10, p7

    iput v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 549
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v11, p8

    iput-boolean v11, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    goto :goto_0

    .line 551
    :cond_2
    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v12, 0x0

    iput v12, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 552
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/high16 v13, 0x7fc00000    # Float.NaN

    iput v13, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 553
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 555
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v12, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 557
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v7, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 558
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 559
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v7, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v12, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v13, p15

    invoke-virtual {v2, v7, v12, v13}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v2

    .line 561
    .local v2, "ready":Z
    iget-object v7, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget v12, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v14, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v7, v12, v14}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(II)V

    .line 562
    return v2
.end method

.method wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V
    .locals 13
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "opUid"    # I
    .param p8, "latencyTracker"    # Lcom/android/internal/util/LatencyTracker;

    .line 274
    iget-wide v2, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object/from16 v12, p8

    goto/16 :goto_1

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakePowerGroup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 280
    :try_start_0
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up power group from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 281
    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", details="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "Screen turning on"

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v10, v11, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 289
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x5

    move-object/from16 v12, p8

    :try_start_1
    invoke-virtual {v12, v2, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 291
    const/4 v2, 0x1

    move-object v1, p0

    move-wide v3, p1

    move/from16 v6, p3

    move-object/from16 v8, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v12, p8

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 295
    throw v0

    .line 274
    :cond_1
    move-object/from16 v12, p8

    .line 275
    :goto_1
    return-void
.end method
