.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastRecord$DeliveryState;
    }
.end annotation


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static CORE_DEFER_UNTIL_ACTIVE:Z = false

.field static final DELIVERY_DEFERRED:I = 0x6

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_FAILURE:I = 0x5

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SCHEDULED:I = 0x4

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

.field static final EMPTY_RECEIVERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final IDLE:I = 0x0

.field static final LIMIT_PRIORITY_SCOPE:J = 0x1621b4c8L

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field final alarm:Z

.field anrCount:I

.field final appOp:I

.field beyondCount:I

.field final blockedUntilBeyondCount:[I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerFeatureId:Ljava/lang/String;

.field final callerInstantApp:Z

.field final callerInstrumented:Z

.field final callerPackage:Ljava/lang/String;

.field final callerProcState:I

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curFilteredExtras:Landroid/os/Bundle;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field final deferUntilActive:Z

.field deferredCount:I

.field final delivery:[I

.field final deliveryReasons:[Ljava/lang/String;

.field dispatchClockTime:J

.field dispatchRealTime:J

.field dispatchTime:J

.field enqueueClockTime:J

.field enqueueRealTime:J

.field enqueueTime:J

.field final excludedPackages:[Ljava/lang/String;

.field final excludedPermissions:[Ljava/lang/String;

.field final filterExtrasForReceiver:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field final interactive:Z

.field final mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field private mBroadcastProcessedRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastProcessedEventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedToShortString:Ljava/lang/String;

.field private mCachedToString:Ljava/lang/String;

.field private mMatchingRecordsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field manifestCount:I

.field manifestSkipCount:I

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field originalEnqueueClockTime:J

.field final originalStickyCallingUid:I

.field final prioritized:Z

.field final pushMessage:Z

.field final pushMessageOverQuota:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiverTime:J

.field final receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field resultToApp:Lcom/android/server/am/ProcessRecord;

.field final scheduledTime:[J

.field final shareIdentity:Z

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field terminalCount:I

.field final terminalTime:[J

.field final timeoutExempt:Z

.field final urgent:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 187
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .locals 18
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callerFeatureId"    # Ljava/lang/String;
    .param p6, "_callingPid"    # I
    .param p7, "_callingUid"    # I
    .param p8, "_callerInstantApp"    # Z
    .param p9, "_resolvedType"    # Ljava/lang/String;
    .param p10, "_requiredPermissions"    # [Ljava/lang/String;
    .param p11, "_excludedPermissions"    # [Ljava/lang/String;
    .param p12, "_excludedPackages"    # [Ljava/lang/String;
    .param p13, "_appOp"    # I
    .param p14, "_options"    # Landroid/app/BroadcastOptions;
    .param p15, "_receivers"    # Ljava/util/List;
    .param p16, "_resultToApp"    # Lcom/android/server/am/ProcessRecord;
    .param p17, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p18, "_resultCode"    # I
    .param p19, "_resultData"    # Ljava/lang/String;
    .param p20, "_resultExtras"    # Landroid/os/Bundle;
    .param p21, "_serialized"    # Z
    .param p22, "_sticky"    # Z
    .param p23, "_initialSticky"    # Z
    .param p24, "_userId"    # I
    .param p25, "originalStickyCallingUid"    # I
    .param p26, "backgroundStartPrivileges"    # Landroid/app/BackgroundStartPrivileges;
    .param p27, "timeoutExempt"    # Z
    .param p29, "callerAppProcessState"    # I
    .param p30, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastQueue;",
            "Landroid/content/Intent;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/BroadcastOptions;",
            "Ljava/util/List;",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/content/IIntentReceiver;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "ZZZII",
            "Landroid/app/BackgroundStartPrivileges;",
            "Z",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;I",
            "Lcom/android/server/compat/PlatformCompat;",
            ")V"
        }
    .end annotation

    .line 459
    .local p28, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p7

    move-object/from16 v4, p14

    move-object/from16 v5, p17

    move/from16 v6, p21

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 172
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 460
    if-eqz v1, :cond_7

    .line 463
    move-object/from16 v7, p1

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 465
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 466
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 467
    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 468
    move-object/from16 v9, p5

    iput-object v9, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 469
    move/from16 v10, p6

    iput v10, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 470
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 471
    move/from16 v11, p29

    iput v11, v0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 472
    move/from16 v12, p8

    iput-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 473
    invoke-static {v2, v3}, Lcom/android/server/am/BroadcastRecord;->isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 474
    move-object/from16 v13, p9

    iput-object v13, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 475
    move-object/from16 v14, p10

    iput-object v14, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 476
    move-object/from16 v15, p11

    iput-object v15, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 477
    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 478
    move/from16 v2, p13

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 479
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 480
    if-eqz p15, :cond_0

    move-object/from16 v2, p15

    goto :goto_0

    :cond_0
    sget-object v16, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    move-object/from16 v2, v16

    :goto_0
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 481
    if-eqz p15, :cond_1

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v2, v16

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 482
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 483
    invoke-static {v1, v4}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 484
    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 486
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v1, p30

    invoke-static {v2, v6, v1}, Lcom/android/server/am/BroadcastRecord;->calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 488
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 489
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 490
    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 491
    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 492
    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 493
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 494
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 495
    iput-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 496
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 497
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 498
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    invoke-static {v1, v6}, Lcom/android/server/am/BroadcastRecord;->isPrioritized([IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 499
    move/from16 v1, p24

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 500
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 501
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 502
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 503
    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 504
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const/16 v17, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v1, v17

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 505
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->isPushMessagingBroadcast()Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v1, v17

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 506
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->isPushMessagingOverQuotaBroadcast()Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v1, v17

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 507
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v1, v17

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 508
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v1, v17

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 509
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 510
    move/from16 v1, p25

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    .line 511
    return-void

    .line 461
    :cond_7
    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v2, p16

    move/from16 v1, p25

    move/from16 v11, p29

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .locals 31
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "callerPackage"    # Ljava/lang/String;
    .param p5, "callerFeatureId"    # Ljava/lang/String;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "callerInstantApp"    # Z
    .param p9, "resolvedType"    # Ljava/lang/String;
    .param p10, "requiredPermissions"    # [Ljava/lang/String;
    .param p11, "excludedPermissions"    # [Ljava/lang/String;
    .param p12, "excludedPackages"    # [Ljava/lang/String;
    .param p13, "appOp"    # I
    .param p14, "options"    # Landroid/app/BroadcastOptions;
    .param p15, "receivers"    # Ljava/util/List;
    .param p16, "resultToApp"    # Lcom/android/server/am/ProcessRecord;
    .param p17, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p18, "resultCode"    # I
    .param p19, "resultData"    # Ljava/lang/String;
    .param p20, "resultExtras"    # Landroid/os/Bundle;
    .param p21, "serialized"    # Z
    .param p22, "sticky"    # Z
    .param p23, "initialSticky"    # Z
    .param p24, "userId"    # I
    .param p25, "backgroundStartPrivileges"    # Landroid/app/BackgroundStartPrivileges;
    .param p26, "timeoutExempt"    # Z
    .param p28, "callerAppProcessState"    # I
    .param p29, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastQueue;",
            "Landroid/content/Intent;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/BroadcastOptions;",
            "Ljava/util/List;",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/content/IIntentReceiver;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "ZZZI",
            "Landroid/app/BackgroundStartPrivileges;",
            "Z",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;I",
            "Lcom/android/server/compat/PlatformCompat;",
            ")V"
        }
    .end annotation

    .line 438
    .local p27, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    invoke-direct/range {v0 .. v30}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    .line 444
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 2
    .param p1, "from"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "newIntent"    # Landroid/content/Intent;

    .line 517
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 518
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 519
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 521
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 522
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 523
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 524
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 525
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 526
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 527
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 528
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 529
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 530
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 531
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 532
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 533
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 534
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 535
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 536
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 537
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 538
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 539
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 540
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 541
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 542
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 543
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 544
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 545
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 546
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 547
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 548
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 549
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 550
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 551
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 552
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 553
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 554
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 555
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 556
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 557
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 558
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 559
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 560
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 561
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 562
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 563
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 564
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 565
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 566
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 567
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 568
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 569
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 570
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 571
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 572
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 573
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 574
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 575
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 576
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    .line 577
    return-void
.end method

.method private static areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5
    .param p0, "newRecord"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "oldRecord"    # Lcom/android/server/am/BroadcastRecord;

    .line 1237
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "newNamespaceFragment":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "oldNamespaceFragment":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1240
    const/4 v2, 0x0

    return v2

    .line 1243
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, "newKeyFragment":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1245
    .local v3, "oldKeyFragment":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method static calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I
    .locals 12
    .param p1, "ordered"    # Z
    .param p2, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[I"
        }
    .end annotation

    .line 788
    .local p0, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 789
    .local v0, "N":I
    new-array v1, v0, [I

    .line 790
    .local v1, "blockedUntilBeyondCount":[I
    if-eqz p1, :cond_1

    .line 793
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 794
    aput v2, v1, v2

    .line 793
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v2    # "i":I
    goto :goto_3

    .line 797
    :cond_1
    nop

    .line 798
    const-wide/32 v2, 0x1621b4c8

    invoke-static {p0, v2, v3, p2}, Lcom/android/server/am/BroadcastRecord;->calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z

    move-result-object v2

    .line 802
    .local v2, "changeEnabled":[Z
    const/4 v3, 0x0

    .line 804
    .local v3, "lastTranchePriority":I
    const/4 v4, 0x0

    .line 806
    .local v4, "currentTranchePriority":I
    const/4 v5, -0x1

    .line 808
    .local v5, "lastTranchePriorityIndex":I
    const/4 v6, -0x1

    .line 810
    .local v6, "lastTrancheChangeDisabledIndex":I
    const/4 v7, -0x1

    .line 812
    .local v7, "currentTrancheChangeDisabledIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v9, -0x1

    if-ge v8, v0, :cond_7

    .line 813
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v10

    .line 814
    .local v10, "thisPriority":I
    if-nez v8, :cond_2

    .line 815
    move v4, v10

    .line 816
    aget-boolean v9, v2, v8

    if-nez v9, :cond_6

    .line 817
    move v7, v8

    goto :goto_2

    .line 823
    :cond_2
    if-eq v10, v4, :cond_4

    .line 825
    if-eq v7, v9, :cond_3

    .line 826
    move v6, v7

    .line 828
    :cond_3
    move v3, v4

    .line 829
    add-int/lit8 v5, v8, -0x1

    .line 830
    move v4, v10

    .line 831
    const/4 v7, -0x1

    .line 833
    :cond_4
    aget-boolean v11, v2, v8

    if-nez v11, :cond_5

    .line 834
    move v7, v8

    .line 838
    add-int/lit8 v9, v5, 0x1

    aput v9, v1, v8

    goto :goto_2

    .line 839
    :cond_5
    if-eq v10, v3, :cond_6

    .line 843
    if-eq v6, v9, :cond_6

    .line 844
    add-int/lit8 v9, v6, 0x1

    aput v9, v1, v8

    .line 812
    .end local v10    # "thisPriority":I
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    nop

    .line 850
    .end local v8    # "i":I
    if-lez v0, :cond_9

    if-eq v5, v9, :cond_8

    if-ne v6, v9, :cond_9

    if-ne v7, v9, :cond_9

    .line 853
    :cond_8
    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([II)V

    .line 855
    .end local v2    # "changeEnabled":[Z
    .end local v3    # "lastTranchePriority":I
    .end local v4    # "currentTranchePriority":I
    .end local v5    # "lastTranchePriorityIndex":I
    .end local v6    # "lastTrancheChangeDisabledIndex":I
    .end local v7    # "currentTrancheChangeDisabledIndex":I
    :cond_9
    nop

    .line 877
    :goto_3
    return-object v1
.end method

.method static calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z
    .locals 9
    .param p1, "changeId"    # J
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[Z"
        }
    .end annotation

    .line 885
    .local p0, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 886
    .local v0, "changeStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 887
    .local v1, "count":I
    new-array v2, v1, [Z

    .line 888
    .local v2, "changeStateForReceivers":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 889
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->getReceiverAppInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 891
    .local v4, "receiverAppInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    .line 892
    .local v5, "idx":I
    if-ltz v5, :cond_0

    .line 893
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .local v6, "isChangeEnabled":Z
    goto :goto_1

    .line 895
    .end local v6    # "isChangeEnabled":Z
    :cond_0
    invoke-virtual {p3, p1, p2, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v6

    .line 897
    .restart local v6    # "isChangeEnabled":Z
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :goto_1
    aput-boolean v6, v2, v3

    .line 888
    .end local v4    # "receiverAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "idx":I
    .end local v6    # "isChangeEnabled":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 901
    .end local v3    # "i":I
    return-object v2
.end method

.method static calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z
    .locals 3
    .param p0, "callingUid"    # I
    .param p1, "options"    # Landroid/app/BroadcastOptions;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p3, "ordered"    # Z
    .param p4, "urgent"    # Z

    .line 995
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 996
    return v0

    .line 1000
    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 1001
    return v1

    .line 1006
    :cond_1
    if-eqz p1, :cond_2

    .line 1007
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getDeferralPolicy()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1009
    :pswitch_0
    return v1

    .line 1011
    :pswitch_1
    return v0

    .line 1016
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 1017
    return v0

    .line 1021
    :cond_3
    sget-boolean v2, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    if-eqz v2, :cond_4

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1022
    return v1

    .line 1024
    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "options"    # Landroid/app/BroadcastOptions;

    .line 972
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 973
    return v1

    .line 975
    :cond_0
    if-eqz p1, :cond_2

    .line 976
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    return v1

    .line 979
    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    return v1

    .line 983
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static debugLog(Landroid/app/BroadcastOptions;)Z
    .locals 1
    .param p0, "options"    # Landroid/app/BroadcastOptions;

    .line 1337
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static deliveryStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "deliveryState"    # I

    .line 223
    packed-switch p0, :pswitch_data_0

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_0
    const-string v0, "DEFERRED"

    return-object v0

    .line 229
    :pswitch_1
    const-string v0, "FAILURE"

    return-object v0

    .line 228
    :pswitch_2
    const-string v0, "SCHEDULED"

    return-object v0

    .line 227
    :pswitch_3
    const-string v0, "TIMEOUT"

    return-object v0

    .line 226
    :pswitch_4
    const-string v0, "SKIPPED"

    return-object v0

    .line 225
    :pswitch_5
    const-string v0, "DELIVERED"

    return-object v0

    .line 224
    :pswitch_6
    const-string v0, "PENDING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 1263
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingFilter()Landroid/content/IntentFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 1257
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez v0, :cond_0

    .line 1258
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    move-result-object v0

    .line 1257
    :goto_0
    return-object v0
.end method

.method private static getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 1251
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez v0, :cond_0

    .line 1252
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    move-result-object v0

    .line 1251
    :goto_0
    return-object v0
.end method

.method static getReceiverAppInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 905
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 906
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastFilter;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 908
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 937
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 938
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastFilter;->getReceiverClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 940
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 929
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 930
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 932
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static getReceiverPriority(Ljava/lang/Object;)I
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 945
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 946
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    return v0

    .line 948
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    return v0
.end method

.method static getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 921
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 922
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    return-object v0

    .line 924
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method static getReceiverUid(Ljava/lang/Object;)I
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Object;

    .line 913
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 914
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget v0, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return v0

    .line 916
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public static intentToString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :cond_0
    return-object v0
.end method

.method static isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 3
    .param p0, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "callingUid"    # I

    .line 751
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 758
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 756
    :sswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method static isDeliveryStateBeyond(I)Z
    .locals 1
    .param p0, "deliveryState"    # I

    .line 256
    packed-switch p0, :pswitch_data_0

    .line 264
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 262
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isDeliveryStateTerminal(I)Z
    .locals 1
    .param p0, "deliveryState"    # I

    .line 240
    packed-switch p0, :pswitch_data_0

    .line 247
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 245
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p0, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 1229
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "namespace":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    .local v1, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method static isPrioritized([IZ)Z
    .locals 3
    .param p0, "blockedUntilBeyondCount"    # [I
    .param p1, "ordered"    # Z

    .line 769
    const/4 v0, 0x0

    if-nez p1, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    aget v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 953
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 954
    return v0

    .line 955
    :cond_0
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_2

    .line 956
    move-object v1, p0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 957
    .local v1, "infoA":Landroid/content/pm/ResolveInfo;
    move-object v3, p1

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 958
    .local v3, "infoB":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 959
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 958
    :goto_0
    return v0

    .line 961
    .end local v1    # "infoA":Landroid/content/pm/ResolveInfo;
    .end local v3    # "infoB":Landroid/content/pm/ResolveInfo;
    :cond_2
    return v2
.end method

.method private static matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p0, "newRecord"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "oldRecord"    # Lcom/android/server/am/BroadcastRecord;

    .line 1215
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1218
    .local v0, "newMatchingFilter":Landroid/content/IntentFilter;
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 1222
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/IntentFilter;->asPredicate()Ljava/util/function/Predicate;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1223
    const/4 v1, 0x0

    return v1

    .line 1225
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method allReceiversPending()Z
    .locals 4

    .line 1274
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 1162
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1164
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1165
    .local v1, "receiver":Ljava/lang/Object;
    instance-of v2, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1

    .line 1166
    move-object v2, v1

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1167
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 1169
    .local v3, "isSingleton":Z
    :try_start_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1174
    goto :goto_1

    .line 1172
    :catch_0
    move-exception v4

    .line 1173
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1175
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_1
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1176
    .local v4, "receiverUid":I
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1

    if-eqz v3, :cond_1

    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1177
    invoke-virtual {p1, v5, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1178
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1163
    .end local v1    # "receiver":Ljava/lang/Object;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "isSingleton":Z
    .end local v4    # "receiverUid":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1183
    .end local v0    # "i":I
    return-void
.end method

.method calculateTypeForLogging()I
    .locals 2

    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1033
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 1035
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1

    .line 1036
    or-int/lit8 v0, v0, 0x4

    .line 1038
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_2

    .line 1039
    or-int/lit8 v0, v0, 0x8

    .line 1041
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    .line 1042
    or-int/lit8 v0, v0, 0x10

    .line 1044
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_4

    .line 1045
    or-int/lit8 v0, v0, 0x20

    .line 1047
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_5

    .line 1048
    or-int/lit8 v0, v0, 0x40

    .line 1050
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_6

    .line 1051
    or-int/lit16 v0, v0, 0x80

    .line 1053
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_7

    .line 1054
    or-int/lit16 v0, v0, 0x100

    .line 1056
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_8

    .line 1057
    or-int/lit16 v0, v0, 0x200

    .line 1059
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_9

    .line 1060
    or-int/lit16 v0, v0, 0x400

    .line 1062
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v1, :cond_a

    .line 1063
    or-int/lit16 v0, v0, 0x800

    .line 1065
    :cond_a
    return v0
.end method

.method calculateTypesForLogging()[I
    .locals 2

    .line 1069
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1070
    .local v0, "types":Landroid/util/IntArray;
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    .line 1073
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1075
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1

    .line 1076
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1078
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_2

    .line 1079
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1081
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    .line 1082
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1084
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_4

    .line 1085
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1087
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_5

    .line 1088
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1090
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_6

    .line 1091
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1093
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_7

    .line 1094
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1096
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_8

    .line 1097
    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1099
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_9

    .line 1100
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1102
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v1, :cond_a

    .line 1103
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1105
    :cond_a
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 1118
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1119
    return v1

    .line 1122
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1123
    .local v3, "cleanupAllUsers":Z
    :goto_0
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v4, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1124
    .local v0, "sendToAllUsers":Z
    :goto_1
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-eq v4, p3, :cond_3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 1125
    return v1

    .line 1128
    :cond_3
    const/4 v4, 0x0

    .line 1130
    .local v4, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_a

    .line 1131
    iget-object v6, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1132
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v6, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_4

    .line 1133
    goto :goto_5

    .line 1135
    :cond_4
    move-object v7, v6

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1137
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    nop

    nop

    if-eqz p1, :cond_6

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1138
    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-eqz v8, :cond_5

    nop

    if-eqz p2, :cond_6

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1139
    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v2

    :goto_4
    nop

    .line 1140
    .local v8, "sameComponent":Z
    nop

    nop

    if-eqz v8, :cond_9

    nop

    if-nez v3, :cond_7

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1141
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, p3, :cond_9

    .line 1142
    :cond_7
    if-nez p4, :cond_8

    .line 1143
    return v2

    .line 1145
    :cond_8
    const/4 v4, 0x1

    .line 1146
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1147
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v5, v9, :cond_9

    .line 1148
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1130
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "sameComponent":Z
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v6    # "o":Ljava/lang/Object;
    :cond_a
    nop

    .line 1152
    .end local v5    # "i":I
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1154
    return v4
.end method

.method clearMatchingRecordsCache()V
    .locals 1

    .line 1301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 1302
    return-void
.end method

.method containsAllReceivers(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1195
    .local p1, "otherReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1196
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    const/4 v1, 0x0

    return v1

    .line 1195
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1200
    .end local v0    # "i":I
    return v1
.end method

.method containsReceiver(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    return v1

    .line 1186
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1191
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "replacedBroadcast"    # Lcom/android/server/am/BroadcastRecord;

    .line 675
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 676
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 677
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 678
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 679
    return-void
.end method

.method public debugLog()Z
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 286
    .local v3, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " to user "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 287
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 289
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  targetComp: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 292
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 293
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  extras: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "caller="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "null"

    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v6, " pid="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 298
    const-string v6, " uid="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 299
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-gtz v6, :cond_4

    :cond_3
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v6, v7, :cond_5

    .line 301
    :cond_4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "requiredPermissions="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    const-string v6, "  appOp="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 305
    :cond_5
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_6

    .line 306
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "excludedPermissions="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    :cond_6
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_7

    .line 310
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "excludedPackages="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :cond_7
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v6, :cond_8

    .line 314
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "options="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "enqueueClockTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v6, " dispatchClockTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_9

    .line 321
    const-string v6, " originalEnqueueClockTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :cond_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 325
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "dispatchTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 327
    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v8, v12

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 329
    const-string v8, " since enq)"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    .line 331
    const-string v8, " finishTime="

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 332
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v8, v12

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 334
    const-string v6, " since disp)"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_a
    const-string v6, " receiverTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 338
    :goto_1
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v6, :cond_b

    .line 340
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "anrCount="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 342
    :cond_b
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v6, :cond_c

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v6, v7, :cond_c

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 343
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "resultTo="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 344
    const-string v6, " resultCode="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 345
    const-string v6, " resultData="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    :cond_d
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_e

    .line 348
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "resultExtras="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    :cond_e
    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v6, :cond_f

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v6, :cond_f

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v6, :cond_f

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v6, :cond_10

    .line 351
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "resultAbort="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 352
    const-string v6, " ordered="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 353
    const-string v6, " sticky="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 354
    const-string v6, " initialSticky="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 355
    const-string v6, " originalStickyCallingUid="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 357
    :cond_10
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-eqz v6, :cond_11

    .line 358
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "nextReceiver="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 360
    :cond_11
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_12

    .line 361
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curFilter="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    :cond_12
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_13

    .line 364
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curReceiver="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    :cond_13
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_15

    .line 367
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curApp="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curComponent="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_14
    const-string v6, "--"

    :goto_2
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_15

    .line 371
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curSourceDir="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    :cond_15
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_16

    .line 376
    const-string v6, " filtered extras: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 378
    :cond_16
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v6, :cond_17

    .line 379
    const-string v6, " (?)"

    .line 380
    .local v6, "stateStr":Ljava/lang/String;
    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 384
    :pswitch_0
    const-string v6, " (WAITING_SERVICES)"

    goto :goto_3

    .line 383
    :pswitch_1
    const-string v6, " (CALL_DONE_RECEIVE)"

    goto :goto_3

    .line 382
    :pswitch_2
    const-string v6, " (CALL_IN_RECEIVE)"

    goto :goto_3

    .line 381
    :pswitch_3
    const-string v6, " (APP_RECEIVE)"

    .line 386
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "state="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .end local v6    # "stateStr":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "terminalCount="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 389
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_4

    :cond_18
    const/4 v6, 0x0

    .line 390
    .local v6, "N":I
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, "p2":Ljava/lang/String;
    new-instance v12, Landroid/util/PrintWriterPrinter;

    invoke-direct {v12, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 392
    .local v12, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v6, :cond_1e

    .line 393
    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 394
    .local v14, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v15, v15, v13

    invoke-static {v15}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    const/16 v15, 0x20

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 397
    move-wide/from16 v16, v10

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v10, v10, v13

    cmp-long v10, v10, v16

    if-eqz v10, :cond_19

    .line 398
    const-string/jumbo v10, "scheduled "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v10, v10, v13

    move-object/from16 v18, v8

    .end local v8    # "p2":Ljava/lang/String;
    .local v18, "p2":Ljava/lang/String;
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v10, v7

    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 400
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_6

    .line 397
    .end local v18    # "p2":Ljava/lang/String;
    .restart local v8    # "p2":Ljava/lang/String;
    :cond_19
    move-object/from16 v18, v8

    .line 402
    .end local v8    # "p2":Ljava/lang/String;
    .restart local v18    # "p2":Ljava/lang/String;
    :goto_6
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v7, v7, v13

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1a

    .line 403
    const-string/jumbo v7, "terminal "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v7, v7, v13

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v10, v10, v13

    sub-long/2addr v7, v10

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 405
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 407
    :cond_1a
    const-string v7, "("

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v7, v7, v13

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ") "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    instance-of v7, v14, Lcom/android/server/am/BroadcastFilter;

    if-eqz v7, :cond_1b

    .line 410
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 411
    move-object v7, v14

    check-cast v7, Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v8, v18

    .end local v18    # "p2":Ljava/lang/String;
    .restart local v8    # "p2":Ljava/lang/String;
    invoke-virtual {v7, v1, v8}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_7

    .line 412
    .end local v8    # "p2":Ljava/lang/String;
    .restart local v18    # "p2":Ljava/lang/String;
    :cond_1b
    move-object/from16 v8, v18

    .end local v18    # "p2":Ljava/lang/String;
    .restart local v8    # "p2":Ljava/lang/String;
    instance-of v7, v14, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_1c

    .line 413
    const-string v7, "(manifest)"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    move-object v7, v14

    check-cast v7, Landroid/content/pm/ResolveInfo;

    const/4 v10, 0x0

    invoke-virtual {v7, v12, v8, v10}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_7

    .line 416
    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 418
    :goto_7
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v7, v7, v13

    if-eqz v7, :cond_1d

    .line 419
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "reason: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v7, v7, v13

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    .end local v14    # "o":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v10, v16

    goto/16 :goto_5

    :cond_1e
    nop

    .line 422
    .end local v13    # "i":I
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

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1342
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1343
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1344
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1345
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1346
    return-void
.end method

.method getBroadcastProcessedRecordsForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastProcessedEventRecord;",
            ">;"
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getDeliveryGroupPolicy()I
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result v0

    goto :goto_0

    .line 1206
    :cond_0
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return v0
.end method

.method getDeliveryState(I)I
    .locals 1
    .param p1, "index"    # I

    .line 640
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p1

    return v0
.end method

.method getHostingRecordTriggerType()Ljava/lang/String;
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_0

    .line 707
    const-string v0, "alarm"

    return-object v0

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_1

    .line 709
    const-string/jumbo v0, "push_message"

    return-object v0

    .line 710
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v0, :cond_2

    .line 711
    const-string/jumbo v0, "push_message_over_quota"

    return-object v0

    .line 713
    :cond_2
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "newIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 729
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 730
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v2

    .line 731
    .local v2, "receiverUid":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 732
    .local v3, "filteredExtras":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 734
    const/4 v4, 0x0

    return-object v4

    .line 736
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v4

    .line 737
    invoke-virtual {v0, v3}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 741
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "receiverUid":I
    .end local v3    # "filteredExtras":Landroid/os/Bundle;
    :cond_1
    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_3

    .line 742
    if-nez v0, :cond_2

    .line 743
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 745
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 747
    :cond_3
    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v1
.end method

.method isAssumedDelivered(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 272
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBlocked(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 648
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v1, v1, p1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDeferUntilActive()Z
    .locals 1

    .line 698
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    return v0
.end method

.method isForeground()Z
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 1278
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 1279
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1284
    .local v1, "matches":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 1285
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 1286
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1287
    const/4 v1, 0x0

    .line 1288
    goto :goto_2

    .line 1285
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1292
    .end local v2    # "i":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    return v1
.end method

.method isNoAbort()Z
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOffload()Z
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReplacePending()Z
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUrgent()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    return v0
.end method

.method public logBroadcastProcessedEventRecord()V
    .locals 3

    .line 1375
    nop

    .line 1379
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1380
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->logToStatsD()V

    .line 1380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1383
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1384
    return-void
.end method

.method matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/BroadcastRecord;

    .line 1210
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    return-object p0

    .line 1112
    :cond_0
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method setDeliveryState(IILjava/lang/String;)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "newDeliveryState"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p1

    .line 590
    .local v0, "oldDeliveryState":I
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    goto :goto_3

    .line 597
    :cond_1
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 599
    :pswitch_0
    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    .line 602
    :goto_0
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 610
    :pswitch_1
    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    .line 611
    goto :goto_1

    .line 607
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v3, p1

    .line 608
    goto :goto_1

    .line 616
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v3, p1

    .line 617
    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    goto :goto_1

    .line 604
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, p1

    .line 605
    nop

    .line 621
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput p2, v3, p1

    .line 622
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aput-object p3, v3, p1

    .line 626
    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 627
    .local v3, "oldBeyondCount":I
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-lt p1, v4, :cond_2

    .line 628
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 629
    invoke-virtual {p0, v4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateBeyond(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 628
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 636
    .end local v4    # "i":I
    :cond_2
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-eq v4, v3, :cond_3

    move v2, v1

    :cond_3
    return v2

    .line 594
    .end local v3    # "oldBeyondCount":I
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method setMatchingRecordsCache(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1297
    .local p1, "matchingRecordsCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 1298
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 1320
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    return-object v0
.end method

.method public updateBroadcastProcessedEventRecord(Ljava/lang/Object;J)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "timeMillis"    # J

    .line 1353
    nop

    .line 1357
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "receiverProcessName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 1359
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessedEventRecord;

    .line 1360
    .local v1, "broadcastProcessedEventRecord":Lcom/android/server/am/BroadcastProcessedEventRecord;
    if-nez v1, :cond_0

    .line 1361
    new-instance v2, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;-><init>()V

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setBroadcastTypes([I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1363
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setIntentAction(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v2

    .line 1364
    invoke-virtual {v2, v0}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setReceiverProcessName(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v2

    .line 1365
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setReceiverUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1366
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setSenderUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1368
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->addReceiverFinishTime(J)V

    .line 1372
    return-void
.end method

.method wasDelivered(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    .line 665
    .local v0, "deliveryState":I
    packed-switch v0, :pswitch_data_0

    .line 670
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 668
    :pswitch_1
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method wasDeliveryAttempted(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    .line 653
    .local v0, "deliveryState":I
    packed-switch v0, :pswitch_data_0

    .line 659
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 657
    :pswitch_1
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
