.class final Lcom/android/server/wm/ContentRecorder;
.super Ljava/lang/Object;
.source "ContentRecorder.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;,
        Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;
    }
.end annotation


# static fields
.field private static final MAX_ANISOTROPY:F = 0.025f


# instance fields
.field private mContentRecordingSession:Landroid/view/ContentRecordingSession;

.field private final mCorrectForAnisotropicPixels:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mLastConsumingSurfaceSize:Landroid/graphics/Point;

.field private mLastOrientation:I

.field private mLastRecordedBounds:Landroid/graphics/Rect;

.field private mLastWindowingMode:I

.field private final mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

.field private mRecordedSurface:Landroid/view/SurfaceControl;

.field private mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 111
    new-instance v0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v0, v1}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;-><init>(I)V

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    .line 112
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ContentRecorder;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;Z)V

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;Z)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mediaProjectionManager"    # Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;
    .param p3, "correctForAnisotropicPixels"    # Z

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 82
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 88
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 93
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    .line 103
    iput v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 106
    iput v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 121
    iput-object p2, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    .line 122
    iput-boolean p3, p0, Lcom/android/server/wm/ContentRecorder;->mCorrectForAnisotropicPixels:Z

    .line 123
    return-void
.end method

.method private clearContentRecordingSession()V
    .locals 3

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 329
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    .line 331
    return-void
.end method

.method private computeScaling(IIFFIIFFLandroid/graphics/PointF;)V
    .locals 6
    .param p1, "inputSizeX"    # I
    .param p2, "inputSizeY"    # I
    .param p3, "inputDpiX"    # F
    .param p4, "inputDpiY"    # F
    .param p5, "outputSizeX"    # I
    .param p6, "outputSizeY"    # I
    .param p7, "outputDpiX"    # F
    .param p8, "outputDpiY"    # F
    .param p9, "scaleOut"    # Landroid/graphics/PointF;

    .line 557
    div-float v0, p4, p3

    div-float v1, p8, p7

    div-float/2addr v0, v1

    .line 558
    .local v0, "relAnisotropy":F
    iget-boolean v1, p0, Lcom/android/server/wm/ContentRecorder;->mCorrectForAnisotropicPixels:Z

    if-eqz v1, :cond_0

    const v1, 0x3f79999a    # 0.975f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const v1, 0x3f833333    # 1.025f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 570
    :cond_1
    div-float v1, p7, p3

    .line 571
    .local v1, "relDpiX":F
    div-float v2, p8, p4

    .line 573
    .local v2, "relDpiY":F
    int-to-float v3, p5

    div-float/2addr v3, v1

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p6

    div-float/2addr v4, v2

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 575
    .local v3, "scale":F
    mul-float v4, v3, v1

    iput v4, p9, Landroid/graphics/PointF;->x:F

    .line 576
    mul-float v4, v3, v2

    iput v4, p9, Landroid/graphics/PointF;->y:F

    .line 577
    return-void

    .line 562
    .end local v1    # "relDpiX":F
    .end local v2    # "relDpiY":F
    .end local v3    # "scale":F
    :goto_0
    int-to-float v1, p5

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 563
    .local v1, "scaleX":F
    int-to-float v2, p6

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 564
    .local v2, "scaleY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 565
    .restart local v3    # "scale":F
    iput v3, p9, Landroid/graphics/PointF;->x:F

    .line 566
    iput v3, p9, Landroid/graphics/PointF;->y:F

    .line 567
    return-void
.end method

.method private fetchSurfaceSizeIfPresent()Landroid/graphics/Point;
    .locals 8

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 660
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 659
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;

    move-result-object v0

    .line 661
    .local v0, "surfaceSize":Landroid/graphics/Point;
    if-nez v0, :cond_1

    .line 665
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x20592f932c1d353bL    # 7.513782880242941E-153

    invoke-static {v1, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 669
    .end local v3    # "protoLogParam0":J
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 671
    :cond_1
    return-object v0
.end method

.method private handleStartRecordingFailed()V
    .locals 2

    .line 542
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->isRecordingContentTask()Z

    move-result v0

    .line 543
    .local v0, "shouldExitTaskRecording":Z
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    .line 544
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->clearContentRecordingSession()V

    .line 545
    if-eqz v0, :cond_0

    .line 548
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/server/wm/ContentRecorder;->stopMediaProjection(I)V

    .line 550
    :cond_0
    return-void
.end method

.method private isDisplayReadyForMirroring()Z
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    nop

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 305
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 304
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->isDisplayReadyForMirroring(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 303
    :goto_1
    return v0
.end method

.method private isRecordingContentTask()Z
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 817
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 816
    :goto_0
    return v1
.end method

.method private retrieveRecordedWindowContainer()Lcom/android/server/wm/WindowContainer;
    .locals 11

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    .line 475
    .local v0, "contentToRecord":I
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v1

    .line 476
    .local v1, "tokenToRecord":Landroid/os/IBinder;
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 521
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 522
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    int-to-long v4, v4

    .local v4, "protoLogParam0":J
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, -0x31770038aab0c69dL    # -2.1567211370427395E70

    invoke-static {v6, v8, v9, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 526
    .end local v4    # "protoLogParam0":J
    :cond_0
    return-object v2

    .line 497
    :pswitch_0
    if-eqz v1, :cond_1

    .line 498
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 499
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-nez v4, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 501
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    int-to-long v5, v5

    .local v5, "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0x52f4a660020031c5L    # 4.206459422493839E91

    invoke-static {v7, v9, v10, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 505
    .end local v5    # "protoLogParam0":J
    :cond_2
    return-object v2

    .line 507
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 508
    .local v2, "taskToRecord":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    goto :goto_1

    .line 515
    :cond_5
    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    goto :goto_2

    .line 509
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 510
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v5, v5, v3

    nop

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    int-to-long v5, v5

    .restart local v5    # "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, -0xce2f7e5a32bce6bL

    invoke-static {v7, v9, v10, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 513
    .end local v5    # "protoLogParam0":J
    nop

    .line 517
    :cond_6
    :goto_2
    return-object v2

    .line 479
    .end local v2    # "taskToRecord":Lcom/android/server/wm/Task;
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 481
    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v5

    .line 480
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 482
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v4, :cond_8

    .line 484
    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 485
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    .line 484
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/DisplayManagerInternal;->setWindowManagerMirroring(IZ)V

    .line 486
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->handleStartRecordingFailed()V

    .line 487
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    int-to-long v5, v5

    .restart local v5    # "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0x1f7dac0487da3af0L    # 5.402916735791569E-157

    invoke-static {v7, v9, v10, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 490
    .end local v5    # "protoLogParam0":J
    :cond_7
    return-object v2

    .line 493
    :cond_8
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startRecordingIfNeeded()V
    .locals 15

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 352
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 359
    :cond_1
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 360
    invoke-virtual {v0}, Landroid/view/Display;->canHostTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    return-void

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->isDisplayReadyForMirroring()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    goto/16 :goto_3

    .line 370
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->retrieveRecordedWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    .line 374
    return-void

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_6

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecordingIfNeeded: skip for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentRecorder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 385
    .local v0, "sourceSurface":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    goto/16 :goto_2

    .line 393
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v4}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v4

    .line 396
    .local v4, "contentToRecord":I
    if-ne v4, v1, :cond_a

    .line 397
    iget-object v5, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 398
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v2, v2

    .local v2, "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, 0x5e16e522a8363939L    # 1.7868155149658225E145

    invoke-static {v5, v7, v8, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 402
    .end local v2    # "protoLogParam0":J
    :cond_9
    return-void

    .line 406
    :cond_a
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v5

    .line 407
    .local v5, "surfaceSize":Landroid/graphics/Point;
    if-nez v5, :cond_c

    .line 408
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v2, v2

    .restart local v2    # "protoLogParam0":J
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0x61daeee590bf3e2fL    # 2.423402035558802E163

    invoke-static {v6, v8, v9, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 412
    .end local v2    # "protoLogParam0":J
    :cond_b
    return-void

    .line 414
    :cond_c
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    int-to-long v6, v6

    .local v6, "protoLogParam0":J
    iget-object v8, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v8, v8, Landroid/view/DisplayInfo;->state:I

    int-to-long v8, v8

    .local v8, "protoLogParam1":J
    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v12, 0x1f4e1038d0503faaL    # 6.842737851919891E-158

    const/4 v14, 0x5

    invoke-static {v10, v12, v13, v14, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 420
    .end local v6    # "protoLogParam0":J
    .end local v8    # "protoLogParam1":J
    :cond_d
    invoke-static {v0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 421
    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 422
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 429
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 434
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 435
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 437
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v3, v6, v5}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 438
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 442
    if-ne v4, v1, :cond_e

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 444
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    .line 443
    invoke-interface {v1, v2}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    goto :goto_1

    .line 446
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 447
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->state:I

    .line 448
    .local v6, "currentDisplayState":I
    iget-object v7, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    if-eq v6, v1, :cond_f

    goto :goto_0

    :cond_f
    move v1, v2

    :goto_0
    invoke-interface {v7, v1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    .line 453
    .end local v6    # "currentDisplayState":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 454
    invoke-virtual {v2}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 455
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    .line 453
    invoke-interface {v1, v4, v2, v6}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyWindowingModeChanged(III)V

    .line 461
    return-void

    .line 386
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v4    # "contentToRecord":I
    .end local v5    # "surfaceSize":Landroid/graphics/Point;
    :goto_2
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v2, v2

    .restart local v2    # "protoLogParam0":J
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x694a856f3a74ca5fL    # -2.806030050928672E-199

    invoke-static {v4, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 390
    .end local v2    # "protoLogParam0":J
    :cond_10
    return-void

    .line 365
    .end local v0    # "sourceSurface":Landroid/view/SurfaceControl;
    :goto_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x2f1f87ab538ac922L    # -3.905741977683878E81

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 367
    :cond_11
    return-void

    .line 354
    :cond_12
    :goto_4
    return-void
.end method

.method private stopMediaProjection(I)V
    .locals 7
    .param p1, "stopReason"    # I

    .line 313
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x5297be083f2335bdL    # 7.556866628430533E89

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 316
    .end local v2    # "protoLogParam0":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->stopActiveProjection(I)V

    .line 319
    :cond_1
    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 336
    .local v0, "recordedTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->isRecordingContentTask()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 340
    iput-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 341
    return-void

    .line 337
    :goto_1
    return-void
.end method


# virtual methods
.method isContentRecordingSessionSet()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCurrentlyRecording()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onConfigurationChanged(II)V
    .locals 17
    .param p1, "lastOrientation"    # I
    .param p2, "lastWindowingMode"    # I

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    move/from16 v7, p1

    goto/16 :goto_3

    .line 177
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 178
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x5be0aef84533cfcbL

    invoke-static {v1, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 182
    .end local v3    # "protoLogParam0":J
    :cond_1
    return-void

    .line 187
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 188
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 189
    .local v1, "capturedTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    int-to-long v3, v3

    .restart local v3    # "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, 0x644831a3168135c8L    # 1.1967771415304633E175

    invoke-static {v5, v7, v8, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 194
    .end local v3    # "protoLogParam0":J
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    .line 195
    return-void

    .line 200
    .end local v1    # "capturedTask":Lcom/android/server/wm/Task;
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 201
    .local v1, "recordedContentWindowingMode":I
    move/from16 v3, p2

    if-eq v3, v1, :cond_5

    .line 202
    iget-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 203
    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 204
    invoke-virtual {v6}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v6

    .line 202
    invoke-interface {v4, v5, v6, v1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyWindowingModeChanged(III)V

    .line 209
    :cond_5
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    int-to-long v4, v4

    .local v4, "protoLogParam0":J
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, -0x450e649b5fcc792L

    invoke-static {v6, v8, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 215
    .end local v4    # "protoLogParam0":J
    :cond_6
    iget-object v4, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 216
    .local v4, "recordedContentBounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 217
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 218
    .local v5, "recordedContentOrientation":I
    invoke-direct {v0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v6

    .line 219
    .local v6, "surfaceSize":Landroid/graphics/Point;
    iget-object v7, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move/from16 v7, p1

    nop

    if-ne v7, v5, :cond_9

    iget-object v8, v0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    .line 221
    invoke-virtual {v8, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_0

    :cond_7
    move v15, v1

    goto/16 :goto_2

    .line 219
    :cond_8
    move/from16 v7, p1

    .line 222
    :cond_9
    :goto_0
    if-eqz v6, :cond_b

    .line 223
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v2, v9, v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v9, v2

    .local v9, "protoLogParam0":J
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    int-to-long v11, v5

    .local v11, "protoLogParam2":J
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam3":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v15, v2, v8, v13}, [Ljava/lang/Object;

    move-result-object v8

    move v15, v1

    move-object/from16 v16, v2

    .end local v1    # "recordedContentWindowingMode":I
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .local v15, "recordedContentWindowingMode":I
    .local v16, "protoLogParam1":Ljava/lang/String;
    const-wide v1, 0x20a003f3ca7d3425L    # 1.52894206491876E-151

    const/16 v3, 0x11

    invoke-static {v14, v1, v2, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    .end local v9    # "protoLogParam0":J
    .end local v11    # "protoLogParam2":J
    .end local v13    # "protoLogParam3":Ljava/lang/String;
    .end local v15    # "recordedContentWindowingMode":I
    .end local v16    # "protoLogParam1":Ljava/lang/String;
    .restart local v1    # "recordedContentWindowingMode":I
    :cond_a
    move v15, v1

    .line 230
    .end local v1    # "recordedContentWindowingMode":I
    .restart local v15    # "recordedContentWindowingMode":I
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    goto :goto_2

    .line 235
    .end local v15    # "recordedContentWindowingMode":I
    .restart local v1    # "recordedContentWindowingMode":I
    :cond_b
    move v15, v1

    .end local v1    # "recordedContentWindowingMode":I
    .restart local v15    # "recordedContentWindowingMode":I
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    int-to-long v1, v1

    .local v1, "protoLogParam0":J
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    int-to-long v8, v5

    .local v8, "protoLogParam2":J
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam3":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v12, v3, v13, v10}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v13, 0x7538ea2bb40c317cL    # 4.676193748808675E256

    const/16 v0, 0x11

    invoke-static {v11, v13, v14, v0, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 243
    .end local v1    # "protoLogParam0":J
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v8    # "protoLogParam2":J
    .end local v10    # "protoLogParam3":Ljava/lang/String;
    :cond_c
    :goto_2
    return-void

    .line 172
    .end local v4    # "recordedContentBounds":Landroid/graphics/Rect;
    .end local v5    # "recordedContentOrientation":I
    .end local v6    # "surfaceSize":Landroid/graphics/Point;
    .end local v15    # "recordedContentWindowingMode":I
    :cond_d
    move/from16 v7, p1

    .line 173
    :goto_3
    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "mergedOverrideConfiguration"    # Landroid/content/res/Configuration;

    .line 693
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 695
    iget v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    iget v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    .line 696
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 697
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 698
    return-void
.end method

.method onMirrorOutputSurfaceOrientationChanged()V
    .locals 2

    .line 162
    iget v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    iget v1, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    .line 163
    return-void
.end method

.method public onRemoved()V
    .locals 7

    .line 677
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x6eed00ee2f523a98L    # 2.1471341689903853E226

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 681
    .end local v2    # "protoLogParam0":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    .line 683
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->clearContentRecordingSession()V

    .line 686
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/ContentRecorder;->stopMediaProjection(I)V

    .line 687
    return-void
.end method

.method public onVisibleRequestedChanged(Z)V
    .locals 2
    .param p1, "isVisibleRequested"    # Z

    .line 704
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 712
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 716
    :cond_0
    return-void
.end method

.method pauseRecording()V
    .locals 8

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v2

    .local v2, "protoLogParam1":Z
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x3bf3bccc7b9acc94L    # -6.516889920730127E19

    const/16 v7, 0xd

    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 272
    .end local v0    # "protoLogParam0":J
    .end local v2    # "protoLogParam1":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 278
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 279
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 284
    return-void
.end method

.method resetRecordingDisplay(I)V
    .locals 7
    .param p1, "displayId"    # I

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 248
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x3cee864fee1fc9a2L    # -1.2297179312981995E15

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 253
    .end local v2    # "protoLogParam0":J
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 256
    return-void

    .line 249
    :cond_2
    :goto_0
    return-void
.end method

.method setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .locals 0
    .param p1, "session"    # Landroid/view/ContentRecordingSession;

    .line 132
    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 133
    return-void
.end method

.method stopRecording()V
    .locals 2

    .line 290
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->unregisterListener()V

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 296
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->clearContentRecordingSession()V

    .line 300
    :cond_0
    return-void
.end method

.method updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 45
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "recordedContentBounds"    # Landroid/graphics/Rect;
    .param p3, "surfaceSize"    # Landroid/graphics/Point;

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v10, p3

    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 594
    .local v11, "inputDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 596
    .local v12, "outputDisplayInfo":Landroid/view/DisplayInfo;
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    .line 597
    .local v9, "scale":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v11, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v4, v11, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v5, v10, Landroid/graphics/Point;->x:I

    iget v6, v10, Landroid/graphics/Point;->y:I

    iget v7, v12, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v8, v12, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ContentRecorder;->computeScaling(IIFFIIFFLandroid/graphics/PointF;)V

    .line 603
    iget v1, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 604
    .local v1, "scaledWidth":I
    iget v2, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 608
    .local v2, "scaledHeight":I
    const/4 v3, 0x0

    .line 609
    .local v3, "shiftedX":I
    iget v4, v10, Landroid/graphics/Point;->x:I

    if-eq v1, v4, :cond_0

    .line 610
    iget v4, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    .line 612
    :cond_0
    const/4 v4, 0x0

    .line 613
    .local v4, "shiftedY":I
    iget v5, v10, Landroid/graphics/Point;->y:I

    if-eq v2, v5, :cond_1

    .line 614
    iget v5, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    div-int/lit8 v4, v5, 0x2

    .line 617
    :cond_1
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_2

    int-to-long v5, v3

    .local v5, "protoLogParam0":J
    int-to-long v7, v4

    .local v7, "protoLogParam1":J
    iget v13, v9, Landroid/graphics/PointF;->x:F

    float-to-double v13, v13

    .local v13, "protoLogParam2":D
    iget v15, v9, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "scaledWidth":I
    .end local v2    # "scaledHeight":I
    .local v16, "scaledWidth":I
    .local v17, "scaledHeight":I
    float-to-double v1, v15

    .local v1, "protoLogParam3":D
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-wide/from16 v18, v1

    .end local v1    # "protoLogParam3":D
    .local v18, "protoLogParam3":D
    int-to-long v1, v15

    .local v1, "protoLogParam4":J
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-wide/from16 v20, v1

    .end local v1    # "protoLogParam4":J
    .local v20, "protoLogParam4":J
    int-to-long v1, v15

    .local v1, "protoLogParam5":J
    iget-object v15, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v15

    move-wide/from16 v22, v1

    .end local v1    # "protoLogParam5":J
    .local v22, "protoLogParam5":J
    int-to-long v1, v15

    .local v1, "protoLogParam6":J
    iget-object v15, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-wide/from16 v24, v1

    .end local v1    # "protoLogParam6":J
    .local v24, "protoLogParam6":J
    int-to-long v1, v15

    .local v1, "protoLogParam7":J
    iget-object v15, v0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->screenHeightDp:I

    move-wide/from16 v26, v1

    .end local v1    # "protoLogParam7":J
    .local v26, "protoLogParam7":J
    int-to-long v1, v15

    .local v1, "protoLogParam8":J
    iget v15, v10, Landroid/graphics/Point;->x:I

    move-wide/from16 v28, v1

    .end local v1    # "protoLogParam8":J
    .local v28, "protoLogParam8":J
    int-to-long v1, v15

    .local v1, "protoLogParam9":J
    iget v15, v10, Landroid/graphics/Point;->y:I

    move-wide/from16 v30, v1

    .end local v1    # "protoLogParam9":J
    .local v30, "protoLogParam9":J
    int-to-long v1, v15

    .local v1, "protoLogParam10":J
    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-wide/from16 v43, v1

    .end local v1    # "protoLogParam10":J
    .local v43, "protoLogParam10":J
    filled-new-array/range {v32 .. v42}, [Ljava/lang/Object;

    move-result-object v1

    move-wide/from16 v32, v5

    .end local v5    # "protoLogParam0":J
    .local v32, "protoLogParam0":J
    const-wide v5, 0xf46630637663bb4L

    const v2, 0x1555a5

    invoke-static {v15, v5, v6, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    .end local v7    # "protoLogParam1":J
    .end local v13    # "protoLogParam2":D
    .end local v16    # "scaledWidth":I
    .end local v17    # "scaledHeight":I
    .end local v18    # "protoLogParam3":D
    .end local v20    # "protoLogParam4":J
    .end local v22    # "protoLogParam5":J
    .end local v24    # "protoLogParam6":J
    .end local v26    # "protoLogParam7":J
    .end local v28    # "protoLogParam8":J
    .end local v30    # "protoLogParam9":J
    .end local v32    # "protoLogParam0":J
    .end local v43    # "protoLogParam10":J
    .local v1, "scaledWidth":I
    .restart local v2    # "scaledHeight":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    .line 626
    .end local v1    # "scaledWidth":I
    .end local v2    # "scaledHeight":I
    .restart local v16    # "scaledWidth":I
    .restart local v17    # "scaledHeight":I
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 629
    move-object/from16 v6, p1

    invoke-virtual {v6, v1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v18

    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    .line 633
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v1

    move/from16 v20, v2

    move/from16 v23, v5

    invoke-virtual/range {v18 .. v23}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v3

    int-to-float v7, v4

    .line 636
    invoke-virtual {v1, v2, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 637
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 638
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    iget v5, v10, Landroid/graphics/Point;->x:I

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 639
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mLastConsumingSurfaceSize:Landroid/graphics/Point;

    iget v5, v10, Landroid/graphics/Point;->y:I

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 642
    iget-object v1, v0, Lcom/android/server/wm/ContentRecorder;->mMediaProjectionManager:Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;

    iget-object v5, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 643
    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result v5

    iget-object v7, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    .line 644
    invoke-virtual {v7}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/ContentRecorder;->mLastRecordedBounds:Landroid/graphics/Rect;

    .line 642
    invoke-interface {v1, v5, v7, v8}, Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V

    .line 647
    return-void
.end method

.method updateRecording()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    nop

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 152
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ContentRecorder;->startRecordingIfNeeded()V

    .line 159
    :goto_0
    return-void
.end method
