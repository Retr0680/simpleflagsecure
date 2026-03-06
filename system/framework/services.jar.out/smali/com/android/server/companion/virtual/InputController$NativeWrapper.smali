.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/InputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NativeWrapper"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUinput(J)V
    .locals 0
    .param p1, "ptr"    # J

    .line 535
    invoke-static {p1, p2}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(J)V

    .line 536
    return-void
.end method

.method public openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 506
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 511
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 515
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 531
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "height"    # I
    .param p6, "width"    # I

    .line 526
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "height"    # I
    .param p6, "width"    # I

    .line 520
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeButtonEvent(JIIJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "buttonCode"    # I
    .param p4, "action"    # I
    .param p5, "eventTimeNanos"    # J

    .line 550
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(JIIJ)Z

    move-result v0

    return v0
.end method

.method public writeDpadKeyEvent(JIIJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "androidKeyCode"    # I
    .param p4, "action"    # I
    .param p5, "eventTimeNanos"    # J

    .line 540
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z

    move-result v0

    return v0
.end method

.method public writeKeyEvent(JIIJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "androidKeyCode"    # I
    .param p4, "action"    # I
    .param p5, "eventTimeNanos"    # J

    .line 545
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(JIIJ)Z

    move-result v0

    return v0
.end method

.method public writeRelativeEvent(JFFJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "relativeX"    # F
    .param p4, "relativeY"    # F
    .param p5, "eventTimeNanos"    # J

    .line 563
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    move-result v0

    return v0
.end method

.method public writeRotaryEncoderScrollEvent(JFJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "scrollAmount"    # F
    .param p4, "eventTimeNanos"    # J

    .line 584
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result v0

    return v0
.end method

.method public writeScrollEvent(JFFJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "xAxisMovement"    # F
    .param p4, "yAxisMovement"    # F
    .param p5, "eventTimeNanos"    # J

    .line 568
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    move-result v0

    return v0
.end method

.method public writeStylusButtonEvent(JIIJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "buttonCode"    # I
    .param p4, "action"    # I
    .param p5, "eventTimeNanos"    # J

    .line 579
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusButtonEvent(JIIJ)Z

    move-result v0

    return v0
.end method

.method public writeStylusMotionEvent(JIIIIIIIJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "toolType"    # I
    .param p4, "action"    # I
    .param p5, "locationX"    # I
    .param p6, "locationY"    # I
    .param p7, "pressure"    # I
    .param p8, "tiltX"    # I
    .param p9, "tiltY"    # I
    .param p10, "eventTimeNanos"    # J

    .line 573
    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result v0

    return v0
.end method

.method public writeTouchEvent(JIIIFFFFJ)Z
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "pointerId"    # I
    .param p4, "toolType"    # I
    .param p5, "action"    # I
    .param p6, "locationX"    # F
    .param p7, "locationY"    # F
    .param p8, "pressure"    # F
    .param p9, "majorAxisSize"    # F
    .param p10, "eventTimeNanos"    # J

    .line 556
    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result v0

    return v0
.end method
