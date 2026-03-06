.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Lcom/android/server/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3725
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Lcom/android/server/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "languageTag"    # Ljava/lang/String;
    .param p3, "layoutType"    # Ljava/lang/String;

    .line 3872
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->-$$Nest$maddKeyboardLayoutAssociation(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    return-void
.end method

.method public applyBackupPayload(Ljava/util/Map;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3938
    .local p1, "payload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    nop

    .line 3939
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3938
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3940
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object v1

    .line 3941
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3940
    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/KeyGestureController;->applyInputGesturesBackupPayload([BI)V

    .line 3943
    :cond_0
    return-void
.end method

.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 1
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .line 3825
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public decrementKeyboardBacklight(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 3856
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->decrementKeyboardBacklight(I)V

    .line 3857
    return-void
.end method

.method public getBackupPayload(I)Ljava/util/Map;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3928
    .local v0, "payload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    nop

    .line 3929
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object v2

    .line 3930
    invoke-virtual {v2, p1}, Lcom/android/server/input/KeyGestureController;->getInputGestureBackupPayload(I)[B

    move-result-object v2

    .line 3929
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    return-object v0
.end method

.method public getCursorPosition(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "displayId"    # I

    .line 3786
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMouseCursorPosition(I)[F

    move-result-object v0

    .line 3787
    .local v0, "p":[F
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3790
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    .line 3788
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get mouse cursor position"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLastUsedInputDeviceId()I
    .locals 1

    .line 3888
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->getLastUsedInputDeviceId()I

    move-result v0

    return v0
.end method

.method public handleKeyGestureInKeyGestureController(I[III)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "keycodes"    # [I
    .param p3, "modifierState"    # I
    .param p4, "gestureType"    # I

    .line 3901
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[III)V

    .line 3902
    return-void
.end method

.method public incrementKeyboardBacklight(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 3849
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->incrementKeyboardBacklight(I)V

    .line 3850
    return-void
.end method

.method public notifyInputMethodConnectionActive(Z)V
    .locals 1
    .param p1, "connectionIsActive"    # Z

    .line 3820
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInputMethodConnectionIsActive(Z)V

    .line 3821
    return-void
.end method

.method public notifyKeyGestureCompleted(I[III)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "keycodes"    # [I
    .param p3, "modifierState"    # I
    .param p4, "gestureType"    # I

    .line 3894
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->notifyKeyGestureCompleted(I[III)V

    .line 3896
    return-void
.end method

.method public notifyUserActivity()V
    .locals 1

    .line 3842
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->notifyUserActivity()V

    .line 3843
    return-void
.end method

.method public onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "subtypeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 3837
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardLayoutManager(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyboardLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->onInputMethodSubtypeChanged(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3838
    return-void
.end method

.method public pilferPointers(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3830
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    .line 3831
    return-void
.end method

.method public registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;

    .line 3948
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V

    .line 3949
    return-void
.end method

.method public registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 3810
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 3811
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 1
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutKeyReceiver"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3917
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/KeyGestureController;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 3918
    return-void
.end method

.method public removeKeyboardLayoutAssociation(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 3878
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mremoveKeyboardLayoutAssociation(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    .line 3879
    return-void
.end method

.method public setAccessibilityPointerIconScaleFactor(IF)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "scaleFactor"    # F

    .line 3906
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->setAccessibilityPointerIconScaleFactor(IF)V

    .line 3907
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 3911
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3912
    return-void
.end method

.method public setDisplayEligibilityForPointerCapture(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "isEligible"    # Z

    .line 3800
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V

    .line 3801
    return-void
.end method

.method public setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V
    .locals 6
    .param p1, "displayInteractivities"    # Landroid/util/SparseBooleanArray;

    .line 3738
    const/4 v0, 0x0

    .line 3739
    .local v0, "globallyInteractive":Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3740
    .local v1, "nonInteractiveDisplays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3741
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3742
    .local v3, "displayId":I
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 3743
    .local v4, "displayInteractive":Z
    if-eqz v4, :cond_0

    .line 3744
    const/4 v0, 0x1

    goto :goto_1

    .line 3746
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3740
    .end local v3    # "displayId":I
    .end local v4    # "displayInteractive":Z
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3749
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v2

    .line 3750
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 3749
    invoke-interface {v2, v3}, Lcom/android/server/input/NativeInputManagerService;->setNonInteractiveDisplays([I)V

    .line 3751
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmBatteryController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/BatteryController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/input/BatteryController;->onInteractiveChanged(Z)V

    .line 3752
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->onInteractiveChanged(Z)V

    .line 3753
    return-void
.end method

.method public setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V
    .locals 1
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopologyGraph;

    .line 3733
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayTopologyInternal(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayTopologyGraph;)V

    .line 3734
    return-void
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 3728
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    .line 3729
    return-void
.end method

.method public setKernelWakeEnabled(IZ)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "enabled"    # Z

    .line 3922
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setKernelWakeEnabled(IZ)Z

    move-result v0

    return v0
.end method

.method public setMouseScalingEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "displayId"    # I

    .line 3795
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetMouseScalingEnabled(Lcom/android/server/input/InputManagerService;ZI)V

    .line 3796
    return-void
.end method

.method public setPointerIconVisible(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "displayId"    # I

    .line 3805
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V

    .line 3806
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 3764
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3765
    const/4 v0, 0x0

    .line 3767
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 3768
    nop

    nop

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    .line 3772
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 3769
    :catch_0
    move-exception v1

    goto :goto_2

    .line 3768
    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3772
    nop

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3773
    goto :goto_4

    .line 3769
    :goto_2
    nop

    .line 3770
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "InputManager"

    const-string v3, "Unable to setPulseGestureEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3772
    nop

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3773
    throw v1

    .line 3775
    .end local v0    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_4
    return-void
.end method

.method public setStylusButtonMotionEventsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3883
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setStylusButtonMotionEventsEnabled(Z)V

    .line 3884
    return-void
.end method

.method public setTypeAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 3861
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    return-void
.end method

.method public toggleCapsLock(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 3759
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    .line 3760
    return-void
.end method

.method public transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;
    .param p3, "transferEntireGesture"    # Z

    .line 3780
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 3815
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 3816
    return-void
.end method

.method public unsetTypeAssociation(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 3866
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    .line 3867
    return-void
.end method
