.class public final Lcom/android/server/accessibility/magnification/MouseEventHandler;
.super Ljava/lang/Object;
.source "MouseEventHandler.java"


# instance fields
.field private final mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0
    .param p1, "fullScreenMagnificationController"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MouseEventHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 33
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "displayId"    # I

    .line 44
    nop

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, "isSynthesizedFromTouchpad":Z
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x2002

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, p2

    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 51
    .local v5, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 56
    .local v6, "eventY":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MouseEventHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p2, v5, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MouseEventHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    .end local p2    # "displayId":I
    .local v4, "displayId":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setCenter(IFFZI)Z

    goto :goto_2

    .line 56
    .end local v4    # "displayId":I
    .restart local p2    # "displayId":I
    :cond_3
    move v4, p2

    .end local p2    # "displayId":I
    .restart local v4    # "displayId":I
    goto :goto_2

    .line 48
    .end local v4    # "displayId":I
    .end local v5    # "eventX":F
    .end local v6    # "eventY":F
    .restart local p2    # "displayId":I
    :cond_4
    move v4, p2

    .line 66
    .end local p2    # "displayId":I
    .restart local v4    # "displayId":I
    :goto_2
    return-void
.end method
