.class public Lcom/android/server/input/debug/TouchpadDebugViewController;
.super Ljava/lang/Object;
.source "TouchpadDebugViewController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchpadDebugView"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

.field private mTouchpadVisualizerEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$BeordBCjb5TpEf41Cw7I5cpB3xQ(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadHardwareState$0(Lcom/android/server/input/TouchpadHardwareState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JqXJSMgAzLWSBiqI10dJ5mXQ1mg(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadHardwareState$1(Lcom/android/server/input/TouchpadHardwareState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VrwpYRXgtCd46Qf9IzHjcvpUKQA(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadGestureInfo$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLIf-xkECijmuq31oG13zm3nI30(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadGestureInfo$2(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 54
    return-void
.end method

.method private hideDebugView(I)V
    .locals 3
    .param p1, "touchpadId"    # I

    .line 147
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadDebugView;->getTouchpadId()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    .line 154
    const-string v1, "TouchpadDebugView"

    const-string v2, "Touchpad debug view removed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 148
    .end local v0    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateTouchpadGestureInfo$2(II)V
    .locals 1
    .param p1, "gestureType"    # I
    .param p2, "deviceId"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugView;->updateGestureInfo(II)V

    .line 195
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTouchpadGestureInfo$3(II)V
    .locals 2
    .param p1, "gestureType"    # I
    .param p2, "deviceId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTouchpadHardwareState$0(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 1
    .param p1, "touchpadHardwareState"    # Lcom/android/server/input/TouchpadHardwareState;
    .param p2, "deviceId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugView;->updateHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V

    .line 176
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTouchpadHardwareState$1(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 2
    .param p1, "touchpadHardwareState"    # Lcom/android/server/input/TouchpadHardwareState;
    .param p2, "deviceId"    # I

    .line 167
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_0
    return-void
.end method

.method private showDebugView(I)V
    .locals 6
    .param p1, "touchpadId"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 127
    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;

    move-result-object v1

    .line 130
    .local v1, "touchpadHardwareProperties":Lcom/android/server/input/TouchpadHardwareProperties;
    new-instance v2, Lcom/android/server/input/debug/TouchpadDebugView;

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;)V

    invoke-direct {v2, v3, p1, v1, v4}, Lcom/android/server/input/debug/TouchpadDebugView;-><init>(Landroid/content/Context;ILcom/android/server/input/TouchpadHardwareProperties;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    .line 132
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    .line 133
    invoke-virtual {v2}, Lcom/android/server/input/debug/TouchpadDebugView;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 135
    .local v2, "mWindowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-interface {v0, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const-string v3, "Touchpad debug view created."

    const-string v4, "TouchpadDebugView"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve touchpad hardware properties for device ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 58
    iget-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 64
    .local v1, "inputDevice":Landroid/view/InputDevice;
    if-eqz v1, :cond_1

    const v2, 0x10200a

    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->showDebugView(I)V

    .line 69
    return-void

    .line 66
    :goto_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 93
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 5
    .param p1, "deviceId"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    .line 74
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    nop

    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 78
    .local v4, "id":I
    invoke-virtual {p0, v4}, Lcom/android/server/input/debug/TouchpadDebugViewController;->onInputDeviceAdded(I)V

    .line 77
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_0
    return-void
.end method

.method public switchVisualisationToTouchpadId(I)V
    .locals 1
    .param p1, "newDeviceId"    # I

    .line 87
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadDebugView;->getTouchpadId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->showDebugView(I)V

    .line 89
    return-void
.end method

.method public updateTouchpadGestureInfo(II)V
    .locals 2
    .param p1, "gestureType"    # I
    .param p2, "deviceId"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public updateTouchpadHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 2
    .param p1, "touchpadHardwareState"    # Lcom/android/server/input/TouchpadHardwareState;
    .param p2, "deviceId"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public updateTouchpadVisualizerEnabled(Z)V
    .locals 5
    .param p1, "touchpadVisualizerEnabled"    # Z

    .line 100
    iget-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    if-ne v0, p1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    .line 104
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz p1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 108
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    nop

    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 109
    .local v4, "deviceId":I
    invoke-virtual {p0, v4}, Lcom/android/server/input/debug/TouchpadDebugViewController;->onInputDeviceAdded(I)V

    .line 108
    .end local v4    # "deviceId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-virtual {v1}, Lcom/android/server/input/debug/TouchpadDebugView;->getTouchpadId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    .line 115
    :cond_2
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 117
    :cond_3
    return-void
.end method
