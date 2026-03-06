.class Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "EventDispatcher"


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mContext:Landroid/content/Context;

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mState:Lcom/android/server/accessibility/gestures/TouchState;

.field private final mTempPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "receiver"    # Lcom/android/server/accessibility/EventStreamTransformation;
    .param p4, "state"    # Lcom/android/server/accessibility/gestures/TouchState;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 75
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 76
    return-void
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 4
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .line 474
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 476
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 477
    .local v0, "lastExplorePointerIndex":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 478
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 479
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 480
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 481
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 482
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastTouchedWindowId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    return v1

    .line 486
    :cond_1
    const/4 v1, 0x2

    return v1

    .line 490
    .end local v0    # "lastExplorePointerIndex":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    return v1

    .line 493
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private computeInjectionAction(II)I
    .locals 2
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .line 257
    sparse-switch p1, :sswitch_data_0

    .line 276
    return p1

    .line 269
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    return v1

    .line 272
    :cond_0
    shl-int/lit8 v0, p2, 0x8

    or-int/lit8 v0, v0, 0x6

    return v0

    .line 261
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 262
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_1
    shl-int/lit8 v0, p2, 0x8

    or-int/lit8 v0, v0, 0x5

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 17
    .param p1, "prototype"    # Landroid/view/MotionEvent;

    .line 341
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 342
    .local v6, "pointerCount":I
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    if-eq v6, v1, :cond_0

    .line 343
    const-string v1, "EventDispatcher"

    const-string v2, "The pointer count doesn\'t match the received count."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1

    .line 346
    :cond_0
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 347
    .local v8, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 349
    .local v7, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 350
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 351
    .local v3, "pointerId":I
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 352
    .local v4, "x":F
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v5

    .line 353
    .local v5, "y":F
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v9, v8, v1

    .line 354
    aget-object v9, v8, v1

    iput v4, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 355
    aget-object v9, v8, v1

    iput v5, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 356
    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v9, v7, v1

    .line 357
    aget-object v9, v7, v1

    iput v3, v9, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 358
    aget-object v9, v7, v1

    const/4 v10, 0x1

    iput v10, v9, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 349
    .end local v3    # "pointerId":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    .line 360
    .end local v1    # "i":I
    nop

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 361
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 379
    .local v1, "event":Landroid/view/MotionEvent;
    return-object v1
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .line 216
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 217
    return-object v0

    .line 219
    :cond_0
    move-object/from16 v3, p0

    iget v4, v3, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 220
    .local v4, "remappedIndex":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 221
    .local v5, "pointerCount":I
    invoke-static {v5}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v12

    .line 222
    .local v12, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v5}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v13

    .line 223
    .local v13, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 224
    aget-object v7, v12, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 225
    aget-object v7, v13, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 226
    if-ne v6, v4, :cond_1

    .line 227
    aget-object v7, v13, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 228
    aget-object v7, v13, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 223
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 231
    .end local v6    # "i":I
    nop

    .line 232
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 233
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 234
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 238
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    .line 239
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    .line 242
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 243
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 244
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 245
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    .line 246
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 231
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V
    .locals 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I
    .param p4, "targetAccessibilityFocus"    # Z

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 503
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 504
    .local v6, "pointerIdBits":I
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 505
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "prototype":Landroid/view/MotionEvent;
    .end local p2    # "rawEvent":Landroid/view/MotionEvent;
    .end local p3    # "policyFlags":I
    .local v3, "prototype":Landroid/view/MotionEvent;
    .local v5, "rawEvent":Landroid/view/MotionEvent;
    .local v7, "policyFlags":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 506
    invoke-virtual {v3, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 507
    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 508
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 429
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 430
    return-void
.end method

.method public clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 434
    .local v2, "pointerIndex":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 435
    .local v3, "pointerId":I
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 436
    .local v4, "clickLocation":Landroid/graphics/Point;
    invoke-direct {v0, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v5

    .line 437
    .local v5, "result":I
    if-nez v5, :cond_0

    .line 438
    const-string v6, "EventDispatcher"

    const-string v7, "Unable to compute click location."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_0
    const/4 v6, 0x1

    new-array v13, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 445
    .local v13, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/16 v24, 0x0

    aput-object v7, v13, v24

    .line 446
    aget-object v7, v13, v24

    invoke-virtual {v1, v2, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 447
    new-array v14, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 448
    .local v14, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v7, v14, v24

    .line 449
    aget-object v7, v14, v24

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 450
    aget-object v7, v14, v24

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 451
    nop

    .line 453
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    .line 454
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    .line 463
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    .line 465
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    .line 466
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v22

    .line 467
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 452
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    invoke-static/range {v7 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 468
    .local v7, "clickEvent":Landroid/view/MotionEvent;
    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v6, v24

    .line 469
    .local v6, "targetAccessibilityFocus":Z
    :goto_0
    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct {v0, v7, v8, v9, v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V

    .line 470
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 471
    return-void
.end method

.method public longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 410
    .local v0, "clickLocation":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v1

    .line 411
    .local v1, "result":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 412
    return v2

    .line 414
    :cond_0
    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 416
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 417
    .local v3, "pointerId":I
    iput v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 418
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 419
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 421
    const/4 v4, 0x1

    return v4

    .line 423
    .end local v2    # "pointerIndex":I
    .end local v3    # "pointerId":I
    :cond_1
    return v2
.end method

.method sendAccessibilityEvent(I)V
    .locals 4
    .param p1, "type"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 174
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 176
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    sget-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending accessibility event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "EventDispatcher"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedAccessibilityEvent(I)V

    .line 187
    return-void
.end method

.method sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 292
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 295
    .local v3, "pointerId":I
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int v9, v0, v4

    .line 297
    .end local v0    # "pointerIdBits":I
    .local v9, "pointerIdBits":I
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v7

    .line 298
    .local v7, "action":I
    nop

    .line 301
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 298
    move-object v5, p0

    move-object v6, p1

    move v10, p2

    .end local p1    # "prototype":Landroid/view/MotionEvent;
    .end local p2    # "policyFlags":I
    .local v6, "prototype":Landroid/view/MotionEvent;
    .local v10, "policyFlags":I
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move v0, v9

    goto :goto_1

    .line 295
    .end local v6    # "prototype":Landroid/view/MotionEvent;
    .end local v7    # "action":I
    .end local v9    # "pointerIdBits":I
    .end local v10    # "policyFlags":I
    .restart local v0    # "pointerIdBits":I
    .restart local p1    # "prototype":Landroid/view/MotionEvent;
    .restart local p2    # "policyFlags":I
    :cond_0
    move-object v6, p1

    move v10, p2

    .line 292
    .end local v3    # "pointerId":I
    .end local p1    # "prototype":Landroid/view/MotionEvent;
    .end local p2    # "policyFlags":I
    .restart local v6    # "prototype":Landroid/view/MotionEvent;
    .restart local v10    # "policyFlags":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p1, v6

    move p2, v10

    goto :goto_0

    .end local v6    # "prototype":Landroid/view/MotionEvent;
    .end local v10    # "policyFlags":I
    .restart local p1    # "prototype":Landroid/view/MotionEvent;
    .restart local p2    # "policyFlags":I
    :cond_1
    nop

    .line 307
    .end local v2    # "i":I
    return-void
.end method

.method sendDownForAllNotInjectedPointersWithOriginalDown(Landroid/view/MotionEvent;I)V
    .locals 10
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 322
    .local v1, "pointerCount":I
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 323
    .local v3, "event":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_1

    .line 324
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 326
    .local v9, "pointerId":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2, v9}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    const/4 v2, 0x1

    shl-int/2addr v2, v9

    or-int v6, v0, v2

    .line 328
    .end local v0    # "pointerIdBits":I
    .local v6, "pointerIdBits":I
    const/4 v0, 0x0

    invoke-direct {p0, v0, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v4

    .line 329
    .local v4, "action":I
    nop

    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v5

    .line 329
    move-object v2, p0

    move v7, p2

    .end local p2    # "policyFlags":I
    .local v7, "policyFlags":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move v0, v6

    goto :goto_1

    .line 326
    .end local v4    # "action":I
    .end local v6    # "pointerIdBits":I
    .end local v7    # "policyFlags":I
    .restart local v0    # "pointerIdBits":I
    .restart local p2    # "policyFlags":I
    :cond_0
    move v7, p2

    .line 323
    .end local v9    # "pointerId":I
    .end local p2    # "policyFlags":I
    .restart local v7    # "policyFlags":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move p2, v7

    goto :goto_0

    .end local v7    # "policyFlags":I
    .restart local p2    # "policyFlags":I
    :cond_1
    nop

    .line 338
    .end local v8    # "i":I
    return-void
.end method

.method sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V
    .locals 26
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "pointerIdBits"    # I
    .param p5, "policyFlags"    # I

    .line 97
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, "event":Landroid/view/MotionEvent;
    const/4 v0, -0x1

    const-string v5, "EventDispatcher"

    if-ne v3, v0, :cond_0

    .line 101
    move-object/from16 v0, p1

    .end local v4    # "event":Landroid/view/MotionEvent;
    .local v0, "event":Landroid/view/MotionEvent;
    goto :goto_0

    .line 104
    .end local v0    # "event":Landroid/view/MotionEvent;
    .restart local v4    # "event":Landroid/view/MotionEvent;
    :cond_0
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v4    # "event":Landroid/view/MotionEvent;
    .restart local v0    # "event":Landroid/view/MotionEvent;
    nop

    .line 111
    :goto_0
    if-nez p2, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-wide v8, v6

    .local v6, "downTime":J
    goto :goto_1

    .line 114
    .end local v6    # "downTime":J
    :cond_1
    iget-object v4, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedDownEventTime()J

    move-result-wide v6

    move-wide v8, v6

    .line 118
    .local v8, "downTime":J
    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    new-array v14, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 119
    .local v14, "properties":[Landroid/view/MotionEvent$PointerProperties;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    new-array v15, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 120
    .local v15, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 121
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 122
    .local v6, "c":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v0, v4, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 123
    aput-object v6, v15, v4

    .line 124
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 125
    .local v7, "p":Landroid/view/MotionEvent$PointerProperties;
    invoke-virtual {v0, v4, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 126
    aput-object v7, v14, v4

    .line 120
    .end local v6    # "c":Landroid/view/MotionEvent$PointerCoords;
    .end local v7    # "p":Landroid/view/MotionEvent$PointerProperties;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 128
    .end local v4    # "i":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 130
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    .line 131
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v18

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v20

    .line 132
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v23

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v24

    .line 133
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v25

    .line 128
    invoke-static/range {v8 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 140
    iget v4, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    if-ltz v4, :cond_3

    .line 141
    iget v4, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    neg-int v4, v4

    iget v6, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    neg-int v6, v6

    invoke-direct {v1, v0, v4, v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 144
    :cond_3
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Injecting event: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", policyFlags=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    or-int v4, p5, v4

    .line 155
    .end local p5    # "policyFlags":I
    .local v4, "policyFlags":I
    iget-object v6, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v6, :cond_5

    .line 156
    iget-object v5, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    move-object/from16 v6, p3

    invoke-interface {v5, v0, v6, v4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_3

    .line 158
    :cond_5
    move-object/from16 v6, p3

    const-string v7, "Error sending event: no receiver specified."

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_3
    iget-object v5, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5, v0}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    .line 162
    if-eq v0, v2, :cond_6

    .line 163
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 165
    :cond_6
    return-void

    .line 105
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v8    # "downTime":J
    .end local v14    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v15    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .local v4, "event":Landroid/view/MotionEvent;
    .restart local p5    # "policyFlags":I
    :catch_0
    move-exception v0

    move-object/from16 v6, p3

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 392
    .local v0, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 393
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    move v7, v0

    .end local v0    # "pointerIdBits":I
    .local v2, "i":I
    .local v7, "pointerIdBits":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 394
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 396
    .local v0, "pointerId":I
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    move-object v4, p1

    move v8, p2

    goto :goto_1

    .line 399
    :cond_0
    const/4 v3, 0x6

    invoke-direct {p0, v3, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v5

    .line 400
    .local v5, "action":I
    nop

    .line 401
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v6

    .line 400
    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .end local p1    # "prototype":Landroid/view/MotionEvent;
    .end local p2    # "policyFlags":I
    .local v4, "prototype":Landroid/view/MotionEvent;
    .local v8, "policyFlags":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 404
    const/4 p1, 0x1

    shl-int/2addr p1, v0

    not-int p1, p1

    and-int/2addr p1, v7

    move v7, p1

    .line 393
    .end local v0    # "pointerId":I
    .end local v5    # "action":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p1, v4

    move p2, v8

    goto :goto_0

    .end local v4    # "prototype":Landroid/view/MotionEvent;
    .end local v8    # "policyFlags":I
    .restart local p1    # "prototype":Landroid/view/MotionEvent;
    .restart local p2    # "policyFlags":I
    :cond_1
    nop

    .line 406
    .end local v2    # "i":I
    return-void
.end method

.method public setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 79
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointersDown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 202
    .end local v1    # "i":I
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
