.class public Lcom/android/server/accessibility/autoclick/AutoclickController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AutoclickController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;,
        Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;,
        Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SCROLL_AMOUNT:F = 1.0f


# instance fields
.field final clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

.field private mActiveClickType:I

.field mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

.field mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

.field mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

.field mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

.field mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field private final mContext:Landroid/content/Context;

.field private mHoveredDirection:I

.field mLastCursorX:F

.field mLastCursorY:F

.field final mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

.field private final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field private final mUserId:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPendingClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->handleScroll(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isHovered()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPaused(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isPaused()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 83
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "trace"    # Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 179
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    .line 110
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    .line 140
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    .line 180
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 181
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 182
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    .line 183
    return-void
.end method

.method static synthetic access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/autoclick/AutoclickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/autoclick/AutoclickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/autoclick/AutoclickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/autoclick/AutoclickController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private cancelPendingClick()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cancel()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->cancel()V

    .line 319
    :cond_1
    return-void
.end method

.method private handleMouseMotion(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    goto :goto_0

    .line 297
    :pswitch_1
    goto :goto_0

    .line 288
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->update(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 293
    nop

    .line 301
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleScroll(I)V
    .locals 17
    .param p1, "direction"    # I

    .line 325
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 328
    .local v1, "now":J
    const/4 v3, 0x1

    new-array v7, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 329
    .local v7, "pointerProps":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v7, v5

    .line 330
    aget-object v4, v7, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 331
    aget-object v4, v7, v5

    const/4 v6, 0x3

    iput v6, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 334
    new-array v8, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 335
    .local v8, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v8, v5

    .line 336
    aget-object v3, v8, v5

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mLastCursorX:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 337
    aget-object v3, v8, v5

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mLastCursorY:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 340
    const/16 v3, 0x9

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v9, 0xa

    packed-switch p1, :pswitch_data_0

    .line 356
    return-void

    .line 351
    :pswitch_0
    aget-object v3, v8, v5

    invoke-virtual {v3, v9, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 352
    goto :goto_0

    .line 348
    :pswitch_1
    aget-object v3, v8, v5

    invoke-virtual {v3, v9, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 349
    goto :goto_0

    .line 345
    :pswitch_2
    aget-object v4, v8, v5

    invoke-virtual {v4, v3, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 346
    goto :goto_0

    .line 342
    :pswitch_3
    aget-object v6, v8, v5

    invoke-virtual {v6, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 343
    nop

    .line 360
    :goto_0
    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmLastMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmLastMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    :goto_1
    move v13, v5

    goto :goto_2

    :cond_0
    goto :goto_1

    :goto_2
    nop

    .line 364
    .local v13, "deviceId":I
    const/16 v15, 0x2002

    const/16 v16, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 372
    .local v3, "scrollEvent":Landroid/view/MotionEvent;
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-static {v4}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$fgetmEventPolicyFlags(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I

    move-result v4

    invoke-super {v0, v3, v3, v4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 375
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 376
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initiateAutoclickIndicator(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 219
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    .line 222
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;-><init>(Landroid/content/Context;Landroid/view/WindowManager;ILcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    .line 224
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->show()V

    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v2}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method private isHovered()Z
    .locals 1

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method private isPaused()Z
    .locals 1

    .line 304
    nop

    .line 305
    nop

    .line 304
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .line 250
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 258
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 259
    return-void
.end method

.method public exitScrollMode()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 385
    :cond_0
    return-void
.end method

.method onChangeForTesting(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 389
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 390
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->stop()V

    .line 265
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cancel()V

    .line 269
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->cancel()V

    .line 274
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 275
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hide()V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 281
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    .line 283
    :cond_3
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onKeyEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateMetaState(I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 245
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 246
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onMotionEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";rawEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 191
    :cond_0
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    .local v0, "handler":Landroid/os/Handler;
    nop

    .line 198
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    const/16 v2, 0x258

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 200
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    .line 201
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 201
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;)V

    .line 207
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 214
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 215
    return-void
.end method
