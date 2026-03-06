.class public Lcom/android/server/wm/TrustedPresentationListenerController;
.super Ljava/lang/Object;
.source "TrustedPresentationListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;,
        Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandlerThreadLock:Ljava/lang/Object;

.field private mLastWindowHandles:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "[",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

.field private mWindowInfosListener:Landroid/window/WindowInfosListener;


# direct methods
.method public static synthetic $r8$lambda$3ELYbuMk2vwGwjmkKe4Qm4BtcDg([FLandroid/graphics/Rect;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$computeFractionRendered$3([FLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ps1sZOZ5gxyiF9hXAxVJv1jdPGY(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$unregisterListener$1(Landroid/window/ITrustedPresentationListener;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a20wCSIXWRHSUVxhdL2bS0npIMA(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$checkIfInThreshold$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wQvFMVTI3xuRVODQ9Y9ejpVjqzg(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TrustedPresentationListenerController;->lambda$registerListener$0(Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/TrustedPresentationListenerController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcomputeTpl(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;Lcom/android/server/wm/TrustedPresentationListenerController-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    return-void
.end method

.method private addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V
    .locals 4
    .param p2, "listener"    # Landroid/window/ITrustedPresentationListener;
    .param p3, "id"    # I
    .param p4, "presentationState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/window/ITrustedPresentationListener;",
            "Landroid/util/Pair<",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            ">;>;",
            "Landroid/window/ITrustedPresentationListener;",
            "IZ)V"
        }
    .end annotation

    .line 331
    .local p1, "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 332
    .local v0, "updates":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;"
    if-nez v0, :cond_0

    .line 333
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 334
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    if-eqz p4, :cond_1

    .line 337
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 341
    :goto_0
    return-void
.end method

.method private checkIfInThreshold(Ljava/util/ArrayList;Landroid/util/ArrayMap;FFJ)V
    .locals 28
    .param p3, "fractionRendered"    # F
    .param p4, "alpha"    # F
    .param p5, "currTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/window/ITrustedPresentationListener;",
            "Landroid/util/Pair<",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            ">;>;FFJ)V"
        }
    .end annotation

    .line 348
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .local p2, "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v7, 0x1

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    float-to-double v8, v2

    .local v8, "protoLogParam0":D
    float-to-double v10, v3

    .local v10, "protoLogParam1":D
    move-wide/from16 v12, p5

    .local v12, "protoLogParam2":J
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move/from16 v16, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v14, v15, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v14, 0xbdbbfb5325b3d44L

    move-wide/from16 v17, v8

    .end local v8    # "protoLogParam0":D
    .local v17, "protoLogParam0":D
    const/16 v8, 0x1a

    invoke-static {v6, v14, v15, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    .end local v10    # "protoLogParam1":D
    .end local v12    # "protoLogParam2":J
    .end local v17    # "protoLogParam0":D
    :cond_0
    move/from16 v16, v7

    .line 350
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 351
    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 352
    .local v8, "trustedPresentationInfo":Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
    iget-object v9, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    .line 353
    .local v9, "listener":Landroid/window/ITrustedPresentationListener;
    iget-boolean v10, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 354
    .local v10, "lastState":Z
    iget-object v11, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 355
    invoke-virtual {v11}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    move-result v11

    cmpl-float v11, v3, v11

    nop

    if-ltz v11, :cond_1

    iget-object v11, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 357
    invoke-virtual {v11}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    move-result v11

    cmpl-float v11, v2, v11

    if-ltz v11, :cond_1

    move/from16 v11, v16

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    nop

    .line 358
    .local v11, "newState":Z
    iput-boolean v11, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 360
    sget-object v13, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v13, v13, v16

    if-eqz v13, :cond_2

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    .local v17, "protoLogParam0":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v18

    .local v18, "protoLogParam1":Ljava/lang/String;
    float-to-double v13, v3

    .local v13, "protoLogParam2":D
    iget-object v15, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v15}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    move-result v15

    move-wide/from16 v24, v13

    .end local v13    # "protoLogParam2":D
    .local v24, "protoLogParam2":D
    float-to-double v12, v15

    .local v12, "protoLogParam3":D
    float-to-double v14, v2

    .local v14, "protoLogParam4":D
    iget-object v2, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v2}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    move-result v2

    float-to-double v2, v2

    move-wide/from16 v26, v2

    .local v26, "protoLogParam5":D
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v3

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    const-wide v6, -0x1f348c21345dc04bL    # -1.884566701359065E158

    move/from16 v20, v10

    .end local v10    # "lastState":Z
    .local v20, "lastState":Z
    const/16 v10, 0xaa0

    invoke-static {v2, v6, v7, v10, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3

    .end local v12    # "protoLogParam3":D
    .end local v14    # "protoLogParam4":D
    .end local v17    # "protoLogParam0":Ljava/lang/String;
    .end local v18    # "protoLogParam1":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "lastState":Z
    .end local v24    # "protoLogParam2":D
    .end local v26    # "protoLogParam5":D
    .restart local v6    # "i":I
    .restart local v10    # "lastState":Z
    :cond_2
    move/from16 v19, v6

    move/from16 v20, v10

    .line 367
    .end local v6    # "i":I
    .end local v10    # "lastState":Z
    .restart local v19    # "i":I
    .restart local v20    # "lastState":Z
    :goto_3
    const/4 v2, 0x4

    if-eqz v20, :cond_4

    if-nez v11, :cond_4

    .line 370
    iget-boolean v3, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    if-eqz v3, :cond_3

    .line 371
    const/4 v3, 0x0

    iput-boolean v3, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 372
    iget v6, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-direct {v0, v1, v9, v6, v3}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    .line 374
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget v6, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    int-to-long v6, v6

    .local v6, "protoLogParam1":J
    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v3, v12}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v13, 0x568b544bbdca3c3bL    # 8.022997441390794E108

    invoke-static {v10, v13, v14, v2, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 378
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":J
    :cond_3
    const-wide/16 v6, -0x1

    iput-wide v6, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    goto :goto_4

    .line 379
    :cond_4
    if-nez v20, :cond_5

    if-eqz v11, :cond_5

    .line 382
    iput-wide v4, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 383
    iget-object v3, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    iget-object v7, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 386
    invoke-virtual {v7}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    move-result v7

    int-to-double v12, v7

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 383
    invoke-virtual {v3, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    :cond_5
    :goto_4
    iget-boolean v3, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    if-nez v3, :cond_7

    if-eqz v11, :cond_7

    iget-wide v6, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    sub-long v6, v4, v6

    iget-object v3, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 393
    invoke-virtual {v3}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    move-result v3

    int-to-long v12, v3

    cmp-long v3, v6, v12

    if-lez v3, :cond_6

    .line 394
    move/from16 v3, v16

    iput-boolean v3, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 395
    iget v6, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-direct {v0, v1, v9, v6, v3}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    .line 397
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/16 v23, 0x0

    aget-boolean v6, v6, v23

    if-eqz v6, :cond_8

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    iget v7, v8, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    int-to-long v12, v7

    .local v12, "protoLogParam1":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v14, 0x4b0551b010a7372fL    # 2.5524542683740336E53

    invoke-static {v7, v14, v15, v2, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_5

    .line 393
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":J
    :cond_6
    move/from16 v3, v16

    goto :goto_5

    .line 390
    :cond_7
    move/from16 v3, v16

    .line 350
    .end local v8    # "trustedPresentationInfo":Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
    .end local v9    # "listener":Landroid/window/ITrustedPresentationListener;
    .end local v11    # "newState":Z
    .end local v20    # "lastState":Z
    :cond_8
    :goto_5
    add-int/lit8 v6, v19, 0x1

    move/from16 v2, p3

    move/from16 v16, v3

    move/from16 v3, p4

    .end local v19    # "i":I
    .local v6, "i":I
    goto/16 :goto_1

    :cond_9
    nop

    .line 401
    .end local v6    # "i":I
    return-void
.end method

.method private computeFractionRendered(Landroid/graphics/Region;Landroid/graphics/RectF;Landroid/util/Size;FF)F
    .locals 15
    .param p1, "visibleRegion"    # Landroid/graphics/Region;
    .param p2, "screenBounds"    # Landroid/graphics/RectF;
    .param p3, "contentSize"    # Landroid/util/Size;
    .param p4, "sx"    # F
    .param p5, "sy"    # F

    .line 406
    move/from16 v0, p4

    move/from16 v1, p5

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    float-to-double v6, v0

    .local v6, "protoLogParam3":D
    float-to-double v8, v1

    .local v8, "protoLogParam4":D
    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array {v2, v4, v5, v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v12, -0x47a5b213e60cccecL    # -3.09206546421734E-37

    const/16 v14, 0x280

    invoke-static {v10, v12, v13, v14, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 411
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    .end local v6    # "protoLogParam3":D
    .end local v8    # "protoLogParam4":D
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v7, p1

    goto/16 :goto_1

    .line 414
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    move-object/from16 v7, p1

    goto :goto_0

    .line 418
    :cond_2
    mul-float v2, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 419
    .local v2, "fractionRendered":F
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v4, v4, v3

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    float-to-double v6, v2

    .local v6, "protoLogParam0":D
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0xc7911e0fc813d91L

    invoke-static {v4, v9, v10, v5, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 421
    .end local v6    # "protoLogParam0":D
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 422
    .local v4, "boundsOverSourceW":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 423
    .local v6, "boundsOverSourceH":F
    mul-float v7, v4, v6

    mul-float/2addr v2, v7

    .line 424
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_4

    float-to-double v7, v2

    .local v7, "protoLogParam0":D
    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v11, -0x652440cf159cb8cL    # -1.317716381413378E278

    invoke-static {v9, v11, v12, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 426
    .end local v7    # "protoLogParam0":D
    :cond_4
    new-array v3, v3, [F

    .line 427
    .local v3, "visibleSize":[F
    new-instance v5, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;-><init>([F)V

    move-object/from16 v7, p1

    invoke-static {v7, v5}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 432
    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v8, v9

    div-float/2addr v5, v8

    mul-float/2addr v2, v5

    .line 433
    return v2

    .line 414
    .end local v2    # "fractionRendered":F
    .end local v3    # "visibleSize":[F
    .end local v4    # "boundsOverSourceW":F
    .end local v6    # "boundsOverSourceH":F
    :cond_5
    move-object/from16 v7, p1

    .line 415
    :goto_0
    return v4

    .line 411
    :cond_6
    move-object/from16 v7, p1

    .line 412
    :goto_1
    return v4
.end method

.method private computeTpl(Landroid/util/Pair;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "[",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p1, "windowHandles":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iput-object v8, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    .line 247
    iget-object v0, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputWindowHandle;

    array-length v0, v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 248
    invoke-virtual {v0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 252
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    .line 253
    .local v9, "tmpRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v10, v0

    .line 254
    .local v10, "tmpRectF":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 255
    .local v11, "tmpLogicalDisplaySize":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v0

    .line 256
    .local v12, "tmpInverseMatrix":Landroid/graphics/Matrix;
    const/16 v0, 0x9

    new-array v13, v0, [F

    .line 257
    .local v13, "tmpMatrix":[F
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v0

    .line 258
    .local v14, "coveredRegionsAboveByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Region;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 259
    .local v15, "currTimeMs":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v7, 0x1

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputWindowHandle;

    array-length v0, v0

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x58f0d07fa42a324fL    # 2.713694087337687E120

    invoke-static {v0, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 261
    .end local v2    # "protoLogParam0":J
    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v17, v3

    .line 263
    .local v17, "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    iget-object v0, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputWindowHandle;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v5, v0, v4

    .line 264
    .local v5, "windowHandle":Landroid/view/InputWindowHandle;
    iget v6, v5, Landroid/view/InputWindowHandle;->inputConfig:I

    move/from16 v18, v7

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    move/from16 v6, v18

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move/from16 v19, v6

    .line 266
    .local v19, "isInvisible":Z
    iget-boolean v6, v5, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    if-eqz v6, :cond_a

    if-eqz v19, :cond_3

    .line 267
    move-object/from16 v21, v0

    move/from16 v23, v2

    move/from16 v24, v4

    move-wide/from16 v25, v15

    move-object/from16 v3, v17

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 269
    :cond_3
    const/4 v6, -0x1

    .line 270
    .local v6, "displayId":I
    iget-object v7, v5, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v10, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 271
    iget-object v7, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [Landroid/window/WindowInfosListener$DisplayInfo;

    array-length v3, v7

    move-object/from16 v21, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    move/from16 v22, v0

    aget-object v0, v7, v22

    .line 272
    .local v0, "displayHandle":Landroid/window/WindowInfosListener$DisplayInfo;
    move/from16 v23, v2

    iget v2, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    move/from16 v24, v3

    iget v3, v5, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v2, v3, :cond_4

    .line 275
    iget-object v2, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 276
    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 277
    iget-object v2, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    .line 278
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 277
    const/4 v7, 0x0

    invoke-virtual {v11, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 280
    iget v6, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    .line 281
    move v0, v6

    goto :goto_3

    .line 272
    :cond_4
    nop

    .line 271
    .end local v0    # "displayHandle":Landroid/window/WindowInfosListener$DisplayInfo;
    add-int/lit8 v0, v22, 0x1

    move/from16 v2, v23

    move/from16 v3, v24

    goto :goto_2

    :cond_5
    move/from16 v23, v2

    move v0, v6

    .line 285
    .end local v6    # "displayId":I
    .local v0, "displayId":I
    :goto_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 286
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v2, v2, v18

    if-eqz v2, :cond_6

    iget-object v2, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget v6, v5, Landroid/view/InputWindowHandle;->displayId:I

    int-to-long v6, v6

    .local v6, "protoLogParam1":J
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 v24, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    move-wide/from16 v25, v6

    .end local v6    # "protoLogParam1":J
    .local v25, "protoLogParam1":J
    const-wide v6, -0x51ca82a2766c2d3L    # -8.988602139952866E283

    move-object/from16 v27, v2

    const/4 v2, 0x4

    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .local v27, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3, v6, v7, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 287
    .end local v25    # "protoLogParam1":J
    .end local v27    # "protoLogParam0":Ljava/lang/String;
    move-wide/from16 v25, v15

    move-object/from16 v3, v17

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 286
    :cond_6
    move/from16 v24, v4

    move-wide/from16 v25, v15

    move-object/from16 v3, v17

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 291
    :cond_7
    move/from16 v24, v4

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v14, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/graphics/Region;

    .line 292
    .local v7, "coveredRegionsAbove":Landroid/graphics/Region;
    iget-object v2, v1, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v5}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->get(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v25

    .line 293
    .local v25, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    if-eqz v25, :cond_8

    .line 294
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 295
    .local v2, "region":Landroid/graphics/Region;
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v9, v7, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 296
    iget-object v3, v5, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 297
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 298
    const/16 v20, 0x0

    aget v3, v13, v20

    aget v4, v13, v20

    mul-float/2addr v3, v4

    aget v4, v13, v18

    aget v6, v13, v18

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 300
    .local v3, "scaleX":F
    const/16 v22, 0x4

    aget v4, v13, v22

    aget v6, v13, v22

    mul-float/2addr v4, v6

    const/4 v6, 0x3

    aget v22, v13, v6

    aget v6, v13, v6

    mul-float v22, v22, v6

    add-float v4, v4, v22

    move-object v6, v2

    .end local v2    # "region":Landroid/graphics/Region;
    .local v6, "region":Landroid/graphics/Region;
    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 303
    .local v1, "scaleY":F
    move v2, v3

    .end local v3    # "scaleX":F
    .local v2, "scaleX":F
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v5, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    move-object v8, v5

    move v5, v2

    move-object v2, v6

    move v6, v1

    move-object/from16 v1, p0

    .end local v1    # "scaleY":F
    .local v2, "region":Landroid/graphics/Region;
    .local v5, "scaleX":F
    .local v6, "scaleY":F
    .local v8, "windowHandle":Landroid/view/InputWindowHandle;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeFractionRendered(Landroid/graphics/Region;Landroid/graphics/RectF;Landroid/util/Size;FF)F

    move-result v4

    .line 307
    move-object/from16 v22, v2

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v2    # "region":Landroid/graphics/Region;
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    .local v4, "fractionRendered":F
    .local v22, "region":Landroid/graphics/Region;
    .local v26, "scaleX":F
    .local v27, "scaleY":F
    iget v5, v8, Landroid/view/InputWindowHandle;->alpha:F

    move-wide v1, v15

    move-object v15, v7

    move-wide v6, v1

    move-object/from16 v1, p0

    move-object/from16 v3, v17

    move-object/from16 v2, v25

    .end local v7    # "coveredRegionsAbove":Landroid/graphics/Region;
    .end local v17    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v25    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .local v3, "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .local v6, "currTimeMs":J
    .local v15, "coveredRegionsAbove":Landroid/graphics/Region;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/TrustedPresentationListenerController;->checkIfInThreshold(Ljava/util/ArrayList;Landroid/util/ArrayMap;FFJ)V

    goto :goto_4

    .line 293
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .end local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v4    # "fractionRendered":F
    .end local v6    # "currTimeMs":J
    .end local v8    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v22    # "region":Landroid/graphics/Region;
    .end local v26    # "scaleX":F
    .end local v27    # "scaleY":F
    .local v5, "windowHandle":Landroid/view/InputWindowHandle;
    .restart local v7    # "coveredRegionsAbove":Landroid/graphics/Region;
    .local v15, "currTimeMs":J
    .restart local v17    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .restart local v25    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    :cond_8
    move-wide v2, v15

    move-object v15, v7

    move-wide v6, v2

    move-object v8, v5

    move-object/from16 v3, v17

    move-object/from16 v2, v25

    .line 311
    .end local v5    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v7    # "coveredRegionsAbove":Landroid/graphics/Region;
    .end local v17    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v25    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .restart local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .restart local v6    # "currTimeMs":J
    .restart local v8    # "windowHandle":Landroid/view/InputWindowHandle;
    .local v15, "coveredRegionsAbove":Landroid/graphics/Region;
    :goto_4
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v15, v9, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 312
    invoke-virtual {v14, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    aget-boolean v1, v1, v18

    if-eqz v1, :cond_9

    iget-object v1, v8, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move/from16 v16, v0

    .end local v0    # "displayId":I
    .local v5, "protoLogParam2":Ljava/lang/String;
    .local v16, "displayId":I
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    move-wide/from16 v25, v6

    .end local v6    # "currTimeMs":J
    .local v25, "currTimeMs":J
    const-wide v6, -0xfc2b3ca4a2bc081L    # -4.548520085728638E232

    move-object/from16 v17, v2

    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .local v17, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .local v22, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0, v6, v7, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_5

    .end local v4    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "displayId":I
    .end local v17    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .end local v22    # "protoLogParam0":Ljava/lang/String;
    .end local v25    # "currTimeMs":J
    .restart local v0    # "displayId":I
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .restart local v6    # "currTimeMs":J
    :cond_9
    move/from16 v16, v0

    move-object/from16 v17, v2

    move-wide/from16 v25, v6

    const/4 v1, 0x0

    .end local v0    # "displayId":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .end local v6    # "currTimeMs":J
    .restart local v16    # "displayId":I
    .restart local v17    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .restart local v25    # "currTimeMs":J
    goto :goto_5

    .line 266
    .end local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v8    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v16    # "displayId":I
    .end local v25    # "currTimeMs":J
    .local v5, "windowHandle":Landroid/view/InputWindowHandle;
    .local v15, "currTimeMs":J
    .local v17, "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    :cond_a
    move-object/from16 v21, v0

    move/from16 v23, v2

    move/from16 v24, v4

    move-object v8, v5

    move-wide/from16 v25, v15

    move-object/from16 v3, v17

    const/4 v1, 0x0

    .line 263
    .end local v5    # "windowHandle":Landroid/view/InputWindowHandle;
    .end local v15    # "currTimeMs":J
    .end local v17    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v19    # "isInvisible":Z
    .restart local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .restart local v25    # "currTimeMs":J
    :goto_5
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v17, v3

    move/from16 v7, v18

    move-object/from16 v0, v21

    move/from16 v2, v23

    move-wide/from16 v15, v25

    goto/16 :goto_0

    .line 317
    .end local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v25    # "currTimeMs":J
    .restart local v15    # "currTimeMs":J
    .restart local v17    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    :cond_b
    move-wide/from16 v25, v15

    move-object/from16 v3, v17

    .end local v15    # "currTimeMs":J
    .end local v17    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .restart local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .restart local v25    # "currTimeMs":J
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_6
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 318
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/util/Pair;

    .line 319
    .local v2, "updates":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/window/ITrustedPresentationListener;

    .line 321
    .local v4, "listener":Landroid/window/ITrustedPresentationListener;
    :try_start_0
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/util/IntArray;

    .line 322
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    .line 321
    invoke-interface {v4, v0, v5}, Landroid/window/ITrustedPresentationListener;->onTrustedPresentationChanged([I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_7

    .line 323
    :catch_0
    move-exception v0

    .line 317
    .end local v2    # "updates":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;"
    .end local v4    # "listener":Landroid/window/ITrustedPresentationListener;
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    nop

    .line 326
    .end local v1    # "i":I
    return-void

    .line 249
    .end local v3    # "listenerUpdates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/window/ITrustedPresentationListener;Landroid/util/Pair<Landroid/util/IntArray;Landroid/util/IntArray;>;>;"
    .end local v9    # "tmpRect":Landroid/graphics/Rect;
    .end local v10    # "tmpRectF":Landroid/graphics/RectF;
    .end local v11    # "tmpLogicalDisplaySize":Landroid/graphics/Rect;
    .end local v12    # "tmpInverseMatrix":Landroid/graphics/Matrix;
    .end local v13    # "tmpMatrix":[F
    .end local v14    # "coveredRegionsAboveByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Region;>;"
    .end local v25    # "currTimeMs":J
    :cond_d
    :goto_8
    return-void
.end method

.method private synthetic lambda$checkIfInThreshold$2()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    .line 385
    return-void
.end method

.method private static synthetic lambda$computeFractionRendered$3([FLandroid/graphics/Rect;)V
    .locals 3
    .param p0, "visibleSize"    # [F
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 429
    .local v0, "size":F
    const/4 v1, 0x0

    aget v2, p0, v1

    add-float/2addr v2, v0

    aput v2, p0, v1

    .line 430
    return-void
.end method

.method private synthetic lambda$registerListener$0(Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V
    .locals 10
    .param p1, "listener"    # Landroid/window/ITrustedPresentationListener;
    .param p2, "id"    # I
    .param p3, "window"    # Landroid/os/IBinder;
    .param p4, "thresholds"    # Landroid/window/TrustedPresentationThresholds;

    .line 178
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v1, p2

    .local v1, "protoLogParam1":J
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam3":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v0, v6, v3, v4}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x5538b0cc98a8c4fcL

    const/4 v9, 0x4

    invoke-static {v5, v7, v8, v9, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 181
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":J
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    .end local v4    # "protoLogParam3":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v0, p3, p1, p4, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->register(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V

    .line 182
    invoke-direct {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->registerWindowInfosListener()V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    .line 185
    return-void
.end method

.method private synthetic lambda$unregisterListener$1(Landroid/window/ITrustedPresentationListener;I)V
    .locals 8
    .param p1, "listener"    # Landroid/window/ITrustedPresentationListener;
    .param p2, "id"    # I

    .line 191
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v1, p2

    .local v1, "protoLogParam1":J
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x333969f592d6333aL    # 6.1777777016535966E-62

    const/4 v7, 0x4

    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 194
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->unregister(Landroid/window/ITrustedPresentationListener;I)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->unregisterWindowInfosListener()V

    .line 198
    :cond_1
    return-void
.end method

.method private registerWindowInfosListener()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    invoke-virtual {v0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    .line 232
    return-void
.end method

.method private startHandlerThreadIfNeeded()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WindowInfosListenerForTpl"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterWindowInfosListener()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    invoke-virtual {v0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Landroid/window/WindowInfosListener;

    .line 241
    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    .line 242
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 202
    const-string v0, "  "

    .line 203
    .local v0, "innerPrefix":Ljava/lang/String;
    const-string v1, "TrustedPresentationListenerController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Active unique listeners ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v2, v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 205
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v2, v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    window="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v3, v3, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 208
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v2, v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 210
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 211
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 212
    .local v4, "listener":Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    invoke-interface {v6}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " thresholds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .end local v4    # "listener":Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 206
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;>;"
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 217
    .end local v1    # "i":I
    return-void
.end method

.method registerListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V
    .locals 7
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/window/ITrustedPresentationListener;
    .param p3, "thresholds"    # Landroid/window/TrustedPresentationThresholds;
    .param p4, "id"    # I

    .line 176
    invoke-direct {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->startHandlerThreadIfNeeded()V

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v6, p3

    move v4, p4

    .end local p1    # "window":Landroid/os/IBinder;
    .end local p2    # "listener":Landroid/window/ITrustedPresentationListener;
    .end local p3    # "thresholds":Landroid/window/TrustedPresentationThresholds;
    .end local p4    # "id":I
    .local v3, "listener":Landroid/window/ITrustedPresentationListener;
    .local v4, "id":I
    .local v5, "window":Landroid/os/IBinder;
    .local v6, "thresholds":Landroid/window/TrustedPresentationThresholds;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method unregisterListener(Landroid/window/ITrustedPresentationListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/window/ITrustedPresentationListener;
    .param p2, "id"    # I

    .line 189
    invoke-direct {p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->startHandlerThreadIfNeeded()V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method
