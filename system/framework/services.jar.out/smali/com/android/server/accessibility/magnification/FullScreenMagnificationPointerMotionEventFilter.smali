.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;
.super Ljava/lang/Object;
.source "FullScreenMagnificationPointerMotionEventFilter.java"

# interfaces
.implements Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;


# instance fields
.field private final mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 37
    return-void
.end method


# virtual methods
.method public filterPointerMotionEvent(FFFFI)[F
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F
    .param p5, "displayId"    # I

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v3, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v0

    return-object v1

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v3, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v3

    .line 56
    .local v3, "scale":F
    add-float v4, p3, p1

    .line 57
    .local v4, "newCursorX":F
    add-float v5, p4, p2

    .line 58
    .local v5, "newCursorY":F
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationPointerMotionEventFilter;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    mul-float v7, v4, v3

    sub-float v7, v4, v7

    mul-float v8, v5, v3

    sub-float v8, v5, v8

    invoke-virtual {v6, p5, v7, v8, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setOffset(IFFI)V

    .line 64
    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v0

    return-object v1
.end method
