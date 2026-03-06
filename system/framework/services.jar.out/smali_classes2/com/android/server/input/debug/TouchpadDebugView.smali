.class public Lcom/android/server/input/debug/TouchpadDebugView;
.super Landroid/widget/LinearLayout;
.source "TouchpadDebugView.java"


# static fields
.field private static final BUTTON_PRESSED_BACKGROUND_COLOR:I

.field private static final BUTTON_RELEASED_BACKGROUND_COLOR:I

.field private static final DEFAULT_RES_X:F = 47.0f

.field private static final DEFAULT_RES_Y:F = 45.0f

.field private static final MAX_SCREEN_HEIGHT_PROPORTION:F = 0.4f

.field private static final MAX_SCREEN_WIDTH_PROPORTION:F = 0.4f

.field private static final MIN_SCALE_FACTOR:F = 10.0f

.field private static final ROUNDED_CORNER_RADIUS_DP:I = 0x18

.field private static final TAG:Ljava/lang/String; = "TouchpadDebugView"

.field private static final TEXT_PADDING_DP:I = 0xc

.field private static final TEXT_SIZE_SP:F = 16.0f


# instance fields
.field private mGestureInfoView:Landroid/widget/TextView;

.field private mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

.field private mLatestGestureType:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private final mTouchSlop:I

.field private final mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

.field private final mTouchpadId:I

.field private mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

.field private mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

.field private final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowLocationBeforeDragX:I

.field private mWindowLocationBeforeDragY:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$hVfjbUWxFvWaxm-hd4RfCwE-EcM(Lcom/android/server/input/debug/TouchpadDebugView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    const/16 v0, 0x97

    const/16 v1, 0x63

    const/16 v2, 0x76

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_PRESSED_BACKGROUND_COLOR:I

    .line 56
    const/16 v0, 0x55

    const/16 v1, 0xa9

    const/16 v2, 0x54

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/input/TouchpadHardwareProperties;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "touchpadId"    # I
    .param p3, "touchpadHardwareProperties"    # Lcom/android/server/input/TouchpadHardwareProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/server/input/TouchpadHardwareProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p4, "touchpadSwitchHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    .line 81
    new-instance v1, Lcom/android/server/input/TouchpadHardwareState;

    const/4 v5, 0x0

    new-array v6, v0, [Lcom/android/server/input/TouchpadFingerState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/TouchpadHardwareState;-><init>(FIII[Lcom/android/server/input/TouchpadFingerState;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    .line 91
    iput p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    .line 92
    nop

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 95
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/input/debug/TouchpadDebugView;->init(Landroid/content/Context;ILjava/util/function/Consumer;)V

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    .line 98
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 99
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 100
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x108

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 104
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 105
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 107
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 108
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchpadDebugView - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 111
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 112
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 114
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    return-void
.end method

.method static getGestureText(I)Ljava/lang/String;
    .locals 3
    .param p0, "gestureType"    # I

    .line 382
    packed-switch p0, :pswitch_data_0

    .line 394
    const-string v0, "Unknown Gesture"

    goto :goto_0

    .line 393
    :pswitch_0
    const-string v0, "Mouse Wheel"

    goto :goto_0

    .line 392
    :pswitch_1
    const-string v0, "Four Finger Swipe Lift, 4 Fingers"

    goto :goto_0

    .line 391
    :pswitch_2
    const-string v0, "Four Finger Swipe, 4 Fingers"

    goto :goto_0

    .line 390
    :pswitch_3
    const-string v0, "Metrics"

    goto :goto_0

    .line 389
    :pswitch_4
    const-string v0, "Swipe Lift, 3 Fingers"

    goto :goto_0

    .line 388
    :pswitch_5
    const-string v0, "Pinch, 2 Fingers"

    goto :goto_0

    .line 387
    :pswitch_6
    const-string v0, "Swipe, 3 Fingers"

    goto :goto_0

    .line 386
    :pswitch_7
    const-string v0, "Fling"

    goto :goto_0

    .line 385
    :pswitch_8
    const-string v0, "Buttons Change, 1 Fingers"

    goto :goto_0

    .line 384
    :pswitch_9
    const-string v0, "Scroll, 2 Fingers"

    goto :goto_0

    .line 383
    :pswitch_a
    const-string v0, "Move, 1 Finger"

    .line 394
    :goto_0
    nop

    .line 396
    .local v0, "mGestureName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latest Gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "touchpadId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p3, "touchpadSwitchHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateScreenDimensions()V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 126
    new-instance v1, Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/input/debug/TouchpadSelectionView;-><init>(Landroid/content/Context;ILjava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    .line 128
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v3, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 129
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 130
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v0, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 132
    .local v0, "paddingInDP":I
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v1, Lcom/android/server/input/debug/TouchpadVisualizationView;

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-direct {v1, p1, v4}, Lcom/android/server/input/debug/TouchpadVisualizationView;-><init>(Landroid/content/Context;Lcom/android/server/input/TouchpadHardwareProperties;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    .line 139
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const-string v4, "Latest Gesture: "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v1}, Lcom/android/server/input/debug/TouchpadDebugView;->updateTheme(I)V

    .line 150
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateViewsDimensions()V

    .line 155
    return-void
.end method

.method private isSlopExceeded(FF)Z
    .locals 3
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 278
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 6

    .line 161
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 162
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const-string v1, "TouchpadDebugView"

    if-nez v0, :cond_0

    .line 163
    const-string v2, "ViewRootImpl is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 168
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 170
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    nop

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 171
    const/4 v4, 0x1

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 169
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    goto :goto_1

    .restart local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 176
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_1
    const-string v3, "SurfaceControl is invalid or has been released."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_1
    return-void
.end method

.method private onTouchpadButtonPress()V
    .locals 2

    .line 359
    const-string v0, "TouchpadDebugView"

    const-string v1, "You clicked me!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v1, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_PRESSED_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 361
    return-void
.end method

.method private onTouchpadButtonRelease()V
    .locals 2

    .line 364
    const-string v0, "TouchpadDebugView"

    const-string v1, "You released the click"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v1, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 366
    return-void
.end method

.method private setLightModeTheme()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->setLightModeTheme()V

    .line 267
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 268
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    return-void
.end method

.method private setNightModeTheme()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->setNightModeTheme()V

    .line 273
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 274
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    return-void
.end method

.method private updateScreenDimensions()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    .line 318
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 319
    .local v0, "windowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    .line 320
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    .line 321
    return-void
.end method

.method private updateTheme(I)V
    .locals 2
    .param p1, "uiMode"    # I

    .line 257
    and-int/lit8 v0, p1, 0x30

    .line 258
    .local v0, "currentNightMode":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->setNightModeTheme()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->setLightModeTheme()V

    .line 263
    :goto_0
    return-void
.end method

.method private updateViewsDimensions()V
    .locals 14

    .line 282
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x423c0000    # 47.0f

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v0

    :goto_0
    nop

    .line 284
    .local v0, "resX":F
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    const/high16 v1, 0x42340000    # 45.0f

    goto :goto_1

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v1

    :goto_1
    nop

    .line 287
    .local v1, "resY":F
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 288
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getBottom()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v3}, Lcom/android/server/input/TouchpadHardwareProperties;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    .line 287
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    .line 290
    .local v2, "touchpadHeightMm":F
    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 291
    invoke-virtual {v3}, Lcom/android/server/input/TouchpadHardwareProperties;->getLeft()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v4}, Lcom/android/server/input/TouchpadHardwareProperties;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    .line 290
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v0

    .line 294
    .local v3, "touchpadWidthMm":F
    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    .line 295
    .local v4, "maxViewWidthPx":F
    iget v6, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 297
    .local v6, "maxViewHeightPx":F
    nop

    .line 298
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 297
    const/4 v7, 0x1

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 301
    .local v5, "minScaleFactorPx":F
    mul-float v7, v3, v5

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    .line 302
    div-float v7, v4, v3

    goto :goto_2

    :cond_2
    move v7, v5

    .line 304
    .local v7, "scaleFactorBasedOnWidth":F
    :goto_2
    mul-float v8, v2, v5

    cmpl-float v8, v8, v6

    if-lez v8, :cond_3

    .line 305
    div-float v8, v6, v2

    goto :goto_3

    :cond_3
    move v8, v5

    .line 306
    .local v8, "scaleFactorBasedOnHeight":F
    :goto_3
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 308
    .local v9, "scaleFactorUsed":F
    iget-object v10, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v12, v3, v9

    float-to-int v12, v12

    mul-float v13, v2, v9

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v10, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v10, v9}, Lcom/android/server/input/debug/TouchpadVisualizationView;->updateScaleFactor(F)V

    .line 313
    iget-object v10, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 314
    return-void
.end method


# virtual methods
.method getGestureInfoView()Landroid/widget/TextView;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTouchpadId()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    return v0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 160
    new-instance v0, Lcom/android/server/input/debug/TouchpadDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/TouchpadDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 242
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateTheme(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateScreenDimensions()V

    .line 246
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateViewsDimensions()V

    .line 249
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 251
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    .line 252
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 229
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 224
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 225
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return v1

    .line 199
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v3

    .line 200
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr v3, v4

    .line 201
    .local v3, "deltaY":F
    invoke-direct {p0, v0, v3}, Lcom/android/server/input/debug/TouchpadDebugView;->isSlopExceeded(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    .line 203
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 205
    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 206
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 209
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_1
    return v1

    .line 214
    .end local v0    # "deltaX":F
    .end local v3    # "deltaY":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v2

    .line 215
    .restart local v0    # "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr v2, v3

    .line 216
    .local v2, "deltaY":F
    invoke-direct {p0, v0, v2}, Lcom/android/server/input/debug/TouchpadDebugView;->isSlopExceeded(FF)Z

    move-result v3

    if-nez v3, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->performClick()Z

    .line 219
    :cond_2
    return v1

    .line 192
    .end local v0    # "deltaX":F
    .end local v2    # "deltaY":F
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    .line 193
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    .line 196
    return v1

    .line 185
    :cond_3
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .line 235
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 236
    const-string v0, "TouchpadDebugView"

    const-string v1, "You tapped the window!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public updateGestureInfo(II)V
    .locals 2
    .param p1, "newGestureType"    # I
    .param p2, "deviceId"    # I

    .line 372
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    if-eq v0, p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/server/input/debug/TouchpadDebugView;->getGestureText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    .line 376
    :cond_0
    return-void
.end method

.method public updateHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 1
    .param p1, "touchpadHardwareState"    # Lcom/android/server/input/TouchpadHardwareState;
    .param p2, "deviceId"    # I

    .line 341
    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-eq p2, v0, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {v0, p1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->onTouchpadHardwareStateNotified(Lcom/android/server/input/TouchpadHardwareState;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result v0

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result v0

    if-lez v0, :cond_2

    .line 348
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->onTouchpadButtonPress()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->onTouchpadButtonRelease()V

    .line 355
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    .line 356
    return-void
.end method
