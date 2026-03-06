.class Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$BarWindow;,
        Lcom/android/server/wm/InsetsPolicy$ControlTarget;,
        Lcom/android/server/wm/InsetsPolicy$Host;
    }
.end annotation


# static fields
.field public static final CONTROLLABLE_TYPES:I


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mFocusedWin:Lcom/android/server/wm/WindowState;

.field private mForcedShowingTypes:I

.field private final mHideNavBarForKeyboard:Z

.field private final mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private mShowingTransientTypes:I

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private final mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 76
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    .line 77
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 104
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 111
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 112
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 113
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x11101c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 116
    new-instance v1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const-string v2, "TransientControlTarget"

    invoke-direct {v1, p2, v2}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 117
    new-instance v1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const-string v2, "PermanentControlTarget"

    invoke-direct {v1, p2, v2}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 118
    return-void
.end method

.method private abortTransient()V
    .locals 3

    .line 525
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_0

    .line 526
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 529
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(II)V

    .line 532
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 533
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 534
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 536
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 540
    return-void
.end method

.method private adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 4
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "copyState"    # Z

    .line 468
    if-eqz p1, :cond_3

    .line 469
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 470
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 471
    .local v1, "task":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v2

    if-nez v2, :cond_3

    .line 473
    if-eqz p3, :cond_1

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    goto :goto_1

    .line 474
    :cond_1
    move-object v2, p2

    :goto_1
    nop

    .line 475
    .local v2, "state":Landroid/view/InsetsState;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_2

    .line 477
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 475
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    .line 478
    return-object v2

    .line 481
    .end local v0    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "state":Landroid/view/InsetsState;
    :cond_3
    return-object p2
.end method

.method private static adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;
    .locals 3
    .param p0, "originalState"    # Landroid/view/InsetsState;
    .param p1, "type"    # I
    .param p2, "source"    # Landroid/view/InsetsSource;
    .param p3, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 397
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    goto :goto_0

    .line 400
    :cond_1
    invoke-interface {p3, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v0

    .line 401
    .local v0, "isRequestedVisible":Z
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 402
    return-object p0

    .line 405
    :cond_2
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 408
    .local v1, "state":Landroid/view/InsetsState;
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 409
    .local v2, "outSource":Landroid/view/InsetsSource;
    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 410
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 411
    return-object v1

    .line 398
    .end local v0    # "isRequestedVisible":Z
    .end local v1    # "state":Landroid/view/InsetsState;
    .end local v2    # "outSource":Landroid/view/InsetsSource;
    :goto_0
    return-object p0
.end method

.method private adjustVisibilityForFakeControllingSources(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 5
    .param p1, "originalState"    # Landroid/view/InsetsState;

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_0

    .line 382
    return-object p1

    .line 384
    :cond_0
    move-object v0, p1

    .line 385
    .local v0, "state":Landroid/view/InsetsState;
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 387
    .local v2, "source":Landroid/view/InsetsSource;
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object v0

    .line 389
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object v0

    .line 385
    .end local v2    # "source":Landroid/view/InsetsSource;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 392
    .end local v1    # "i":I
    return-object v0
.end method

.method private adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "copyState"    # Z

    .line 416
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_4

    .line 417
    move-object v0, p2

    .line 420
    .local v0, "state":Landroid/view/InsetsState;
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    xor-int/lit8 v1, v1, 0x1

    .line 421
    .local v1, "navVisible":Z
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 422
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 423
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    nop

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-ne v4, v1, :cond_0

    .line 424
    goto :goto_1

    .line 426
    :cond_0
    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_1

    .line 427
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v4

    .line 429
    :cond_1
    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v3}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 430
    .local v4, "navSource":Landroid/view/InsetsSource;
    invoke-virtual {v4, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 431
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 421
    .end local v3    # "source":Landroid/view/InsetsSource;
    .end local v4    # "navSource":Landroid/view/InsetsSource;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 433
    .end local v2    # "i":I
    return-object v0

    .line 434
    .end local v0    # "state":Landroid/view/InsetsState;
    .end local v1    # "navVisible":Z
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 436
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 437
    .local v0, "originalImeSource":Landroid/view/InsetsSource;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    if-eqz p3, :cond_5

    .line 439
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    goto :goto_2

    .line 440
    :cond_5
    move-object v2, p2

    :goto_2
    nop

    .line 441
    .local v2, "state":Landroid/view/InsetsState;
    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, v0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 442
    .local v3, "imeSource":Landroid/view/InsetsSource;
    invoke-virtual {v3, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 443
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 444
    return-object v2

    .line 446
    .end local v0    # "originalImeSource":Landroid/view/InsetsSource;
    .end local v2    # "state":Landroid/view/InsetsState;
    .end local v3    # "imeSource":Landroid/view/InsetsSource;
    :cond_6
    goto :goto_4

    :cond_7
    iget v0, p1, Lcom/android/server/wm/WindowContainer;->mMergedExcludeInsetsTypes:I

    .line 447
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 450
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 451
    .restart local v0    # "originalImeSource":Landroid/view/InsetsSource;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 452
    if-eqz p3, :cond_8

    .line 453
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    goto :goto_3

    .line 454
    :cond_8
    move-object v2, p2

    :goto_3
    nop

    .line 455
    .restart local v2    # "state":Landroid/view/InsetsState;
    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, v0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 457
    .restart local v3    # "imeSource":Landroid/view/InsetsSource;
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 458
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 459
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 460
    return-object v2

    .line 463
    .end local v0    # "originalImeSource":Landroid/view/InsetsSource;
    .end local v2    # "state":Landroid/view/InsetsState;
    .end local v3    # "imeSource":Landroid/view/InsetsSource;
    :cond_9
    :goto_4
    return-object p2
.end method

.method private static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 595
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 598
    .local v2, "nonAttachedAppWindow":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    nop

    .line 598
    :goto_1
    return v0
.end method

.method private checkAbortTransient(Lcom/android/server/wm/InsetsTarget;)V
    .locals 5
    .param p1, "caller"    # Lcom/android/server/wm/InsetsTarget;

    .line 500
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_0

    .line 501
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    .line 504
    .local v0, "isImeVisible":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 505
    invoke-virtual {v1, p1}, Lcom/android/server/wm/InsetsStateController;->getFakeControllingTypes(Lcom/android/server/wm/InsetsTarget;)I

    move-result v1

    .line 506
    .local v1, "fakeControllingTypes":I
    nop

    .line 507
    invoke-interface {p1}, Lcom/android/server/wm/InsetsTarget;->getRequestedVisibleTypes()I

    move-result v2

    and-int/2addr v2, v1

    .line 508
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    .line 509
    .local v2, "abortTypes":I
    iget v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    not-int v4, v2

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 510
    if-eqz v2, :cond_2

    .line 511
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 512
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 513
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v3

    .line 514
    .local v3, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v3, :cond_2

    .line 515
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(II)V

    .line 518
    .end local v3    # "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_2
    return-void
.end method

.method private dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .locals 4
    .param p1, "focusedWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "areVisible"    # Z
    .param p3, "wereRevealedFromSwipeOnSystemBar"    # Z

    .line 734
    if-nez p1, :cond_0

    .line 735
    return-void

    .line 738
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 739
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_1

    .line 740
    return-void

    .line 743
    :cond_1
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 744
    .local v1, "taskId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 745
    .local v2, "isValidTaskId":Z
    :goto_0
    if-nez v2, :cond_3

    .line 746
    return-void

    .line 749
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 750
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->dispatchTransientSystemBarVisibilityChanged(IZZ)V

    .line 754
    return-void
.end method

.method private forceShowingNavigationBars(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isForceShowNavigationBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 703
    :goto_0
    return v1
.end method

.method private getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .locals 5
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "fake"    # Z
    .param p3, "requestedVisibleTypes"    # [I

    .line 604
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 605
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v1, 0x0

    aget v2, p3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    .line 607
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p3, v1

    .line 608
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v1

    .line 610
    :cond_0
    return-object v0
.end method

.method private getNavControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 4
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "fake"    # Z

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 616
    .local v0, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    if-nez v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 621
    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 626
    return-object p1

    .line 628
    :cond_2
    if-eqz p1, :cond_3

    .line 629
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 630
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 632
    return-object p1

    .line 635
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShowing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 638
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 640
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->areTypesForciblyShownTransiently(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 644
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 646
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 647
    .local v1, "notificationShade":Lcom/android/server/wm/WindowState;
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    nop

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 648
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v2

    nop

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 649
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    if-nez v2, :cond_7

    .line 652
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    return-object v2

    .line 656
    :cond_7
    if-eqz p1, :cond_8

    .line 657
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isNtWindowformWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 658
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    return-object v2

    .line 661
    :cond_8
    return-object p1
.end method

.method private getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .locals 5
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "fake"    # Z
    .param p3, "requestedVisibleTypes"    # [I

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 545
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x0

    aget v2, p3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    .line 547
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p3, v1

    .line 548
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v1

    .line 550
    :cond_0
    return-object v0
.end method

.method private getStatusControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 3
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "fake"    # Z

    .line 556
    if-nez p2, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 560
    .local v0, "notificationShade":Lcom/android/server/wm/WindowState;
    if-ne p1, v0, :cond_1

    .line 562
    return-object p1

    .line 564
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShowing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->areTypesForciblyShownTransiently(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 573
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 575
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    nop

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 576
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 577
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-nez v1, :cond_5

    .line 580
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    return-object v1

    .line 584
    :cond_5
    if-eqz p1, :cond_6

    .line 585
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isNtWindowformWindowMode(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 586
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    return-object v1

    .line 589
    :cond_6
    return-object p1
.end method

.method private notifyRemoteInsetsController(Lcom/android/server/wm/WindowState;I)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "requestVisibleTypes"    # I

    .line 666
    if-nez p1, :cond_0

    .line 667
    return-void

    .line 669
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 672
    .local v0, "component":Landroid/content/ComponentName;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V

    .line 674
    return-void
.end method


# virtual methods
.method adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 1
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v0

    return-object v0
.end method

.method adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 5
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "includesTransient"    # Z

    .line 249
    if-nez p3, :cond_0

    .line 250
    invoke-direct {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSources(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    .local v0, "state":Landroid/view/InsetsState;
    goto :goto_0

    .line 252
    .end local v0    # "state":Landroid/view/InsetsState;
    :cond_0
    move-object v0, p2

    .line 254
    .restart local v0    # "state":Landroid/view/InsetsState;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v0

    .line 255
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-ne v0, p2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/DisplayPolicy;->replaceInsetsSourcesIfNeeded(Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v0

    .line 262
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v0, p2, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v0

    .line 263
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    .line 264
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_EVENT_NOTIFIER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/server/ext/INtEventNotifier;

    new-instance v2, Lcom/android/server/wm/NtWmWrapper;

    invoke-direct {v2, p1}, Lcom/android/server/wm/NtWmWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 265
    invoke-interface {v1, v2, v0, v3}, Lcom/nothing/server/ext/INtEventNotifier;->adjustInsetsForWindow(Lcom/android/server/wm/NtWmWrapper;Landroid/view/InsetsState;Landroid/content/pm/ActivityInfo;)Landroid/view/InsetsState;

    move-result-object v0

    .line 267
    :cond_4
    return-object v0
.end method

.method areTypesForciblyShowing(I)Z
    .locals 1
    .param p1, "types"    # I

    .line 677
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InsetsPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nav: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mShowingTransientTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 763
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    if-eqz v0, :cond_1

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mForcedShowingTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 767
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    :cond_1
    return-void
.end method

.method enforceInsetsPolicyForTarget(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 8
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 310
    move-object v0, p2

    .line 311
    .local v0, "originalState":Landroid/view/InsetsState;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 314
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_0

    .line 315
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, v2

    .line 316
    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->removeSource(I)V

    goto :goto_2

    .line 317
    :cond_0
    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz v2, :cond_3

    .line 318
    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    nop

    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 319
    .local v5, "provider":Landroid/view/InsetsFrameProvider;
    invoke-virtual {v5}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    .line 320
    goto :goto_1

    .line 322
    :cond_1
    if-ne p2, v0, :cond_2

    .line 323
    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, v6

    .line 325
    :cond_2
    invoke-virtual {v5}, Landroid/view/InsetsFrameProvider;->getId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/InsetsState;->removeSource(I)V

    .line 318
    .end local v5    # "provider":Landroid/view/InsetsFrameProvider;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    if-eqz v2, :cond_7

    .line 330
    :cond_4
    if-ne p2, v0, :cond_5

    .line 331
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, v2

    .line 339
    :cond_5
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_7

    .line 340
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 341
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->removeSourceAt(I)V

    .line 339
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 346
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProviders()Landroid/util/SparseArray;

    move-result-object v2

    .line 347
    .local v2, "providers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/InsetsSourceProvider;>;"
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 348
    .local v3, "windowType":I
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_a

    .line 349
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 350
    .local v5, "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v5, v3}, Lcom/android/server/wm/InsetsSourceProvider;->overridesFrame(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 351
    if-ne p2, v0, :cond_8

    .line 352
    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, v6

    .line 354
    :cond_8
    new-instance v6, Landroid/view/InsetsSource;

    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 355
    .local v6, "override":Landroid/view/InsetsSource;
    invoke-virtual {v5, v3}, Lcom/android/server/wm/InsetsSourceProvider;->getOverriddenFrame(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 356
    invoke-virtual {p2, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 348
    .end local v5    # "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v6    # "override":Landroid/view/InsetsSource;
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_a
    nop

    .line 360
    .end local v4    # "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 361
    .local v4, "windowingMode":I
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v5

    nop

    if-nez v5, :cond_b

    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    .line 362
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 364
    :cond_b
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    .line 365
    .local v5, "types":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_c

    .line 366
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    nop

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 367
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v6

    if-ne p1, v6, :cond_c

    .line 368
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v7

    and-int/2addr v6, v7

    nop

    if-eqz v6, :cond_c

    .line 369
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    or-int/2addr v5, v6

    .line 372
    :cond_c
    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6}, Landroid/view/InsetsState;-><init>()V

    .line 373
    .local v6, "newState":Landroid/view/InsetsState;
    invoke-virtual {v6, p2, v5}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 374
    move-object p2, v6

    .line 377
    .end local v5    # "types":I
    .end local v6    # "newState":Landroid/view/InsetsState;
    :cond_d
    return-object p2
.end method

.method getInsetsForWindowMetrics(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;)V
    .locals 5
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;
    .param p2, "outInsetsState"    # Landroid/view/InsetsState;

    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    :goto_0
    nop

    .line 283
    .local v0, "srcState":Landroid/view/InsetsState;
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 284
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    const/4 v1, 0x0

    if-ltz v2, :cond_2

    .line 285
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 286
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    invoke-virtual {v3, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 284
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 290
    .end local v2    # "i":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 291
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->scale(F)V

    .line 294
    :cond_3
    return-void
.end method

.method getPermanentControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0
.end method

.method getTransientControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0
.end method

.method hasHiddenSources(I)Z
    .locals 5
    .param p1, "types"    # I

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 159
    .local v0, "state":Landroid/view/InsetsState;
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 161
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_0

    .line 162
    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    return v2

    .line 159
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 168
    .end local v1    # "i":I
    const/4 v1, 0x0

    return v1
.end method

.method hideTransient()V
    .locals 2

    .line 221
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideTransient: mShowingTransientTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_1

    .line 226
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 234
    iput v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 236
    return-void
.end method

.method isTransient(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 239
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1
    .param p1, "caller"    # Lcom/android/server/wm/InsetsTarget;
    .param p2, "changedTypes"    # I
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/InsetsTarget;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 489
    return-void
.end method

.method remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 712
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 716
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isRemoteInsetsControllerControllingSystemBars()Z

    move-result v2

    if-nez v2, :cond_0

    .line 717
    return v1

    .line 719
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 726
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v2, v4, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 721
    :goto_0
    return v1

    .line 713
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return v1
.end method

.method showTransient(IZ)V
    .locals 7
    .param p1, "types"    # I
    .param p2, "isGestureOnSystemBar"    # Z

    .line 172
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 173
    .local v0, "showingTransientTypes":I
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 174
    .local v1, "rawState":Landroid/view/InsetsState;
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 175
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 176
    .local v4, "source":Landroid/view/InsetsSource;
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 180
    .local v5, "type":I
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    and-int/2addr v6, p1

    if-nez v6, :cond_1

    .line 181
    goto :goto_1

    .line 183
    :cond_1
    or-int/2addr v0, v5

    .line 174
    .end local v4    # "source":Landroid/view/InsetsSource;
    .end local v5    # "type":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 187
    .end local v2    # "i":I
    sget-boolean v2, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v2, :cond_3

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTransient: mShowingTransientTypes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " showingTransientTypes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_3
    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eq v2, v0, :cond_6

    .line 193
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 194
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 195
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v2

    .line 196
    .local v2, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v2, :cond_4

    .line 197
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-interface {v2, v4, v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(IIZ)V

    .line 200
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 201
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 203
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    or-int/2addr v5, v6

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 201
    :goto_2
    invoke-direct {p0, v4, v3, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 206
    .end local v2    # "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_6
    return-void
.end method

.method updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 126
    nop

    .line 127
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    filled-new-array {v1}, [I

    move-result-object v1

    .line 128
    .local v1, "requestedVisibleTypes":[I
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 129
    .local v2, "notificationShade":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 130
    .local v3, "topApp":Lcom/android/server/wm/WindowState;
    nop

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    .line 132
    .local v4, "statusControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    .line 133
    invoke-direct {p0, p1, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    goto :goto_1

    .line 134
    :cond_2
    if-ne v4, v2, :cond_3

    .line 135
    invoke-direct {p0, v3, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    goto :goto_1

    .line 136
    :cond_3
    move-object v5, v6

    :goto_1
    iput-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 137
    nop

    .line 138
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    .line 139
    .local v5, "navControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v5, v8, :cond_4

    .line 140
    invoke-direct {p0, p1, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_2

    .line 141
    :cond_4
    if-ne v5, v2, :cond_5

    .line 142
    invoke-direct {p0, v3, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_2

    .line 143
    :cond_5
    nop

    :goto_2
    iput-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 144
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v6, v4, v7, v5, v8}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    .line 148
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v5, v6, :cond_6

    .line 150
    aget v0, v1, v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->notifyRemoteInsetsController(Lcom/android/server/wm/WindowState;I)V

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {v0, v4, v6}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 155
    return-void
.end method

.method updateSystemBars(Lcom/android/server/wm/WindowState;ZZ)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "inSplitScreenMode"    # Z
    .param p3, "inNonFullscreenFreeformMode"    # Z

    .line 682
    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->forceShowingNavigationBars(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    goto :goto_1

    .line 686
    :cond_2
    move v1, v0

    goto :goto_1

    .line 683
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 686
    :goto_1
    iput v1, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 690
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 692
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_2

    .line 693
    :cond_3
    nop

    :goto_2
    or-int/2addr v0, v2

    .line 690
    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController;->setForcedConsumingTypes(I)V

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 696
    return-void
.end method
