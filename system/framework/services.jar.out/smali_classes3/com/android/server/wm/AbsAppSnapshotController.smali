.class abstract Lcom/android/server/wm/AbsAppSnapshotController;
.super Ljava/lang/Object;
.source "AbsAppSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TYPE:",
        "Lcom/android/server/wm/WindowContainer;",
        "CACHE:",
        "Lcom/android/server/wm/SnapshotCache<",
        "TTYPE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final THEME_SNAPSHOT_MIN_Length:F = 128.0f


# instance fields
.field protected mCache:Lcom/android/server/wm/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCACHE;"
        }
    .end annotation
.end field

.field protected mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

.field protected final mHighResSnapshotScale:F

.field protected final mIsRunningOnIoT:Z

.field protected final mIsRunningOnTv:Z

.field protected final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSnapshotEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$9lPJ2o9QEm-SsCOn95NbpJpCRPo(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/AbsAppSnapshotController;->lambda$recordSnapshotInner$0(Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rUA7BKb_tu-qRrpgQfCNvHbszzk(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)Landroid/window/TaskSnapshot;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/AbsAppSnapshotController;->lambda$drawAppThemeSnapshot$1(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 112
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->initSnapshotScale()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 119
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/WindowContainer;)Ljava/util/function/Supplier;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Ljava/util/function/Supplier<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 437
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 438
    return-object v2

    .line 440
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 441
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 442
    return-object v2

    .line 444
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v8

    .line 445
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    nop

    .line 446
    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    .line 445
    const/16 v5, 0xff

    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    .line 447
    .local v11, "color":I
    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 448
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 449
    .local v13, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v14

    .line 450
    .local v14, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/android/server/wm/AbsAppSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v15

    .line 451
    .local v15, "systemBarInsets":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 452
    .local v4, "taskWidth":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 453
    .local v5, "taskHeight":I
    iget v9, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 454
    .local v9, "scale":F
    nop

    .line 461
    move v6, v4

    .end local v4    # "taskWidth":I
    .local v6, "taskWidth":I
    new-instance v4, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    move v7, v5

    .end local v5    # "taskHeight":I
    .local v7, "taskHeight":I
    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v10, v6

    .end local v6    # "taskWidth":I
    .local v10, "taskWidth":I
    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, v12, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    .line 463
    move/from16 v17, v10

    .end local v10    # "taskWidth":I
    .local v17, "taskWidth":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v10

    move/from16 v21, v7

    move v7, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v3, v21

    .end local v7    # "taskHeight":I
    .local v2, "taskWidth":I
    .local v3, "taskHeight":I
    .local v17, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-direct/range {v4 .. v10}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V

    .line 464
    .local v4, "decorPainter":Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    int-to-float v5, v2

    mul-float/2addr v5, v9

    float-to-int v5, v5

    .line 465
    .local v5, "width":I
    int-to-float v6, v3

    mul-float/2addr v6, v9

    float-to-int v6, v6

    .line 466
    .local v6, "height":I
    const-string v7, "SnapshotController"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v7

    .line 467
    .local v7, "node":Landroid/graphics/RenderNode;
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v5, v6}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 468
    invoke-virtual {v7, v10}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 469
    invoke-virtual {v7, v5, v6}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v10

    .line 470
    .local v10, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v10, v11}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 471
    invoke-virtual {v4, v15}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 472
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v18, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v4, v10, v8}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 473
    invoke-virtual {v7, v10}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 475
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 476
    .local v8, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v16, v4

    .end local v4    # "decorPainter":Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    .local v16, "decorPainter":Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v4

    .line 477
    .local v4, "letterboxInsets":Landroid/graphics/Rect;
    invoke-static {v8, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 479
    new-instance v19, Landroid/window/TaskSnapshot$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    move-object/from16 v20, v19

    .line 480
    .local v20, "builder":Landroid/window/TaskSnapshot$Builder;
    move/from16 v19, v9

    move-object/from16 v9, v20

    const/4 v0, 0x0

    .end local v20    # "builder":Landroid/window/TaskSnapshot$Builder;
    .local v9, "builder":Landroid/window/TaskSnapshot$Builder;
    .local v19, "scale":F
    invoke-virtual {v9, v0}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 481
    move-object/from16 v20, v10

    move v0, v11

    .end local v10    # "c":Landroid/graphics/RecordingCanvas;
    .end local v11    # "color":I
    .local v0, "color":I
    .local v20, "c":Landroid/graphics/RecordingCanvas;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 482
    invoke-virtual {v9, v8}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 483
    invoke-virtual {v9, v4}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 485
    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 488
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 490
    iget-object v10, v12, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v10, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 491
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setUiMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 493
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 494
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 495
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    .line 498
    new-instance v10, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v7, v5, v6, v9}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)V

    return-object v10
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "frame"    # Landroid/graphics/Rect;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 517
    nop

    .line 518
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    .line 517
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 517
    return-object v0
.end method

.method static isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z
    .locals 2
    .param p0, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 319
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 319
    :goto_1
    return v0
.end method

.method private static synthetic lambda$drawAppThemeSnapshot$1(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)Landroid/window/TaskSnapshot;
    .locals 4
    .param p0, "node"    # Landroid/graphics/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 500
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "drawAppThemeSnapshot_acquire"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 502
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    .local v2, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 505
    nop

    .line 511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 505
    const/4 v0, 0x0

    return-object v0

    .line 507
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 508
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 509
    invoke-virtual {p3}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    return-object v3

    .line 511
    .end local v2    # "hwBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 512
    throw v2
.end method

.method private synthetic lambda$recordSnapshotInner$0(Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "inLockConsumer"    # Ljava/util/function/Consumer;
    .param p3, "t"    # Landroid/window/TaskSnapshot;

    .line 207
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 215
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 211
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/SnapshotCache;->putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V

    .line 212
    if-eqz p2, :cond_1

    .line 213
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 215
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    return-void

    .line 215
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;
    .locals 3
    .param p0, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 264
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 265
    .local v0, "buffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 271
    :cond_1
    return-object p0

    .line 266
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid snapshot dimensions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .locals 4
    .param p2, "allowAppTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;Z)",
            "Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    new-instance v0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    invoke-direct {v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;-><init>()V

    .line 167
    .local v0, "supplier":Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopUpView: skip captureTaskSnapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    const-string v1, "drawAppThemeSnapshot"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 175
    nop

    .line 176
    if-eqz p2, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/WindowContainer;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setSupplier(Ljava/util/function/Supplier;)V

    .line 184
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 185
    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setSnapshot(Landroid/window/TaskSnapshot;)V

    .line 188
    nop

    .line 192
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WindowManager"

    if-nez v0, :cond_1

    .line 404
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    return-object v1

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 410
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_3

    .line 411
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_2

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_2
    return-object v1

    .line 416
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 417
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_4

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to take screenshot. No main window for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v1

    .line 421
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 422
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v4, :cond_5

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip taking screenshot. App has fixed rotation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_5
    return-object v1

    .line 428
    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method createSnapshot(Lcom/android/server/wm/WindowContainer;FLandroid/graphics/Rect;Landroid/window/TaskSnapshot$Builder;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 9
    .param p2, "scaleFraction"    # F
    .param p3, "crop"    # Landroid/graphics/Rect;
    .param p4, "builder"    # Landroid/window/TaskSnapshot$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;F",
            "Landroid/graphics/Rect;",
            "Landroid/window/TaskSnapshot$Builder;",
            ")",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 278
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    return-object v1

    .line 284
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 286
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    nop

    .line 288
    .local v4, "excludeIme":Z
    nop

    .line 289
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 293
    .local v5, "navWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v3

    .line 294
    .local v6, "excludeNavBar":Z
    :goto_1
    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    .line 295
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/SurfaceControl;

    .line 296
    .local v7, "excludeLayers":[Landroid/view/SurfaceControl;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    aput-object v8, v7, v3

    .line 297
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    aput-object v8, v7, v2

    goto :goto_4

    .line 298
    .end local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    goto :goto_2

    .line 303
    :cond_6
    new-array v7, v3, [Landroid/view/SurfaceControl;

    .restart local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    goto :goto_4

    .line 299
    .end local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    :goto_2
    new-array v7, v2, [Landroid/view/SurfaceControl;

    .line 300
    .restart local v7    # "excludeLayers":[Landroid/view/SurfaceControl;
    nop

    .line 301
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    :goto_3
    aput-object v8, v7, v3

    .line 305
    :goto_4
    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    invoke-virtual {p4, v2}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    .line 306
    nop

    .line 308
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 309
    invoke-virtual {p4}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v3

    .line 307
    invoke-static {v2, p3, p2, v3, v7}, Landroid/window/ScreenCapture;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 310
    .local v2, "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v2, :cond_9

    move-object v3, v1

    goto :goto_6

    .line 311
    :cond_9
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    :goto_6
    nop

    .line 312
    .local v3, "buffer":Landroid/hardware/HardwareBuffer;
    invoke-static {v3}, Lcom/android/server/wm/AbsAppSnapshotController;->isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 313
    return-object v1

    .line 315
    :cond_a
    return-object v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 540
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHighResSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSnapshotEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method protected abstract findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation
.end method

.method protected abstract getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
.end method

.method getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)I"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 222
    .local v0, "type":I
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    .line 226
    return v1

    .line 228
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 229
    .local v2, "topChild":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    const/4 v1, 0x1

    return v1

    .line 232
    :cond_3
    return v1

    .line 223
    .end local v2    # "topChild":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    return v2
.end method

.method abstract getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/app/ActivityManager$TaskDescription;"
        }
    .end annotation
.end method

.method abstract getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation
.end method

.method protected initSnapshotScale()F
    .locals 3

    .line 122
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 124
    .local v0, "config":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method protected initialize(Lcom/android/server/wm/SnapshotCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCACHE;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "cache":Lcom/android/server/wm/SnapshotCache;, "TCACHE;"
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 132
    return-void
.end method

.method isAnimatingByRecents(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 536
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    return v0
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 532
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 533
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 525
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 526
    return-void
.end method

.method prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;
    .locals 19
    .param p2, "builder"    # Landroid/window/TaskSnapshot$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;",
            "Landroid/window/TaskSnapshot$Builder;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v2

    .line 336
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    if-nez v2, :cond_0

    .line 337
    const/4 v3, 0x0

    return-object v3

    .line 339
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 340
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 341
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    .line 342
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v6

    .line 341
    invoke-static {v5, v6}, Lcom/android/server/wm/AbsAppSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v5

    .line 343
    .local v5, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v6

    .line 344
    .local v6, "letterboxInsets":Landroid/graphics/Rect;
    invoke-static {v5, v6}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 345
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 347
    invoke-virtual {v1, v5}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 348
    invoke-virtual {v1, v6}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 349
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 350
    .local v8, "isWindowTranslucent":Z
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v9

    .line 351
    .local v9, "isShowWallpaper":Z
    invoke-virtual {v1}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v11

    .line 352
    .local v11, "pixelFormat":I
    if-nez v11, :cond_4

    .line 354
    nop

    .line 353
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->use16BitFormat()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v8, :cond_2

    if-nez v9, :cond_3

    .line 355
    :cond_2
    const/4 v12, 0x4

    goto :goto_1

    .line 356
    :cond_3
    move v12, v7

    :goto_1
    move v11, v12

    .line 358
    :cond_4
    invoke-static {v11}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 359
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    move v12, v7

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    nop

    .line 360
    .local v12, "isTranslucent":Z
    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v13}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 361
    invoke-virtual {v1, v11}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    .line 362
    invoke-virtual {v1, v12}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 364
    iget-object v13, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v13, v13, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {v1, v13}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 365
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v13}, Landroid/window/TaskSnapshot$Builder;->setUiMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 367
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 368
    .local v13, "taskConfig":Landroid/content/res/Configuration;
    iget-object v14, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v14

    .line 369
    .local v14, "displayRotation":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v15, "outCrop":Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v17, v16

    .line 371
    .local v17, "taskSize":Landroid/graphics/Point;
    iget-object v7, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 372
    .local v7, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    if-eqz v7, :cond_8

    iget v10, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq v10, v14, :cond_8

    .line 375
    iget-object v10, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 376
    iget-object v10, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v0, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .end local v17    # "taskSize":Landroid/graphics/Point;
    .local v2, "taskSize":Landroid/graphics/Point;
    .local v18, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2, v10, v0}, Landroid/graphics/Point;->set(II)V

    .line 377
    iget v0, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v1, v0}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 378
    nop

    .line 379
    iget-object v0, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v10, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 379
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lt v0, v10, :cond_7

    .line 380
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    .line 378
    :goto_3
    invoke-virtual {v1, v0}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_4

    .line 372
    .end local v18    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    .restart local v17    # "taskSize":Landroid/graphics/Point;
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .line 382
    .end local v17    # "taskSize":Landroid/graphics/Point;
    .local v2, "taskSize":Landroid/graphics/Point;
    .restart local v18    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 383
    .local v0, "srcConfig":Landroid/content/res/Configuration;
    iget-object v10, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    iget-object v10, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 385
    .local v10, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v16, v3

    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v16, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v17, v4

    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v17, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 386
    invoke-virtual {v1, v14}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 387
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v3}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 389
    .end local v0    # "srcConfig":Landroid/content/res/Configuration;
    .end local v10    # "taskBounds":Landroid/graphics/Rect;
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 390
    invoke-virtual {v1, v2}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 391
    return-object v15
.end method

.method final recordSnapshotInner(Lcom/android/server/wm/WindowContainer;ZLjava/util/function/Consumer;)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .locals 2
    .param p2, "allowAppTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;Z",
            "Ljava/util/function/Consumer<",
            "Landroid/window/TaskSnapshot;",
            ">;)",
            "Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    .local p3, "inLockConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/window/TaskSnapshot;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v0

    .line 206
    .local v0, "supplier":Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    new-instance v1, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setConsumer(Ljava/util/function/Consumer;)V

    .line 217
    return-object v0
.end method

.method setSnapshotEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 139
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    iput-boolean p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    .line 140
    return-void
.end method

.method setSnapshotReleaser(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/HardwareBuffer;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "releaser":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/HardwareBuffer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotCache;->setSafeSnapshotReleaser(Ljava/util/function/Consumer;)V

    .line 136
    return-void
.end method

.method shouldDisableSnapshots()Z
    .locals 1

    .line 143
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method snapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/window/TaskSnapshot;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    iget v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;
    .locals 6
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;F)",
            "Landroid/window/TaskSnapshot;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/android/server/wm/AbsAppSnapshotController;, "Lcom/android/server/wm/AbsAppSnapshotController<TTYPE;TCACHE;>;"
    .local p1, "source":Lcom/android/server/wm/WindowContainer;, "TTYPE;"
    new-instance v0, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 243
    .local v0, "builder":Landroid/window/TaskSnapshot$Builder;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    .line 244
    .local v1, "crop":Landroid/graphics/Rect;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 246
    return-object v2

    .line 248
    :cond_0
    const-string v3, "createSnapshot"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 249
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->createSnapshot(Lcom/android/server/wm/WindowContainer;FLandroid/graphics/Rect;Landroid/window/TaskSnapshot$Builder;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v3

    .line 251
    .local v3, "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    if-nez v3, :cond_1

    .line 254
    return-object v2

    .line 256
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    .line 257
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 258
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object v2

    .line 260
    .local v2, "snapshot":Landroid/window/TaskSnapshot;
    invoke-static {v2}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object v4

    return-object v4
.end method

.method protected abstract use16BitFormat()Z
.end method
