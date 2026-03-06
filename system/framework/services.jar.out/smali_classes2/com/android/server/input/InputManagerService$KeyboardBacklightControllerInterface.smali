.class interface abstract Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "KeyboardBacklightControllerInterface"
.end annotation


# virtual methods
.method public decrementKeyboardBacklight(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 4158
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4164
    return-void
.end method

.method public incrementKeyboardBacklight(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 4157
    return-void
.end method

.method public notifyUserActivity()V
    .locals 0

    .line 4162
    return-void
.end method

.method public onInteractiveChanged(Z)V
    .locals 0
    .param p1, "isInteractive"    # Z

    .line 4161
    return-void
.end method

.method public registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 0
    .param p1, "l"    # Landroid/hardware/input/IKeyboardBacklightListener;
    .param p2, "pid"    # I

    .line 4159
    return-void
.end method

.method public systemRunning()V
    .locals 0

    .line 4163
    return-void
.end method

.method public unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 0
    .param p1, "l"    # Landroid/hardware/input/IKeyboardBacklightListener;
    .param p2, "pid"    # I

    .line 4160
    return-void
.end method
