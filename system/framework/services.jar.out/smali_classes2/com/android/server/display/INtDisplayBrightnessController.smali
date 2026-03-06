.class public interface abstract Lcom/android/server/display/INtDisplayBrightnessController;
.super Ljava/lang/Object;
.source "INtDisplayBrightnessController.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/display/INtDisplayBrightnessController;

.field public static final DISPLAY_HDR:I = 0x1

.field public static final GENERIC_HDR:I = 0x2

.field public static final SDR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/server/display/INtDisplayBrightnessController$1;

    invoke-direct {v0}, Lcom/android/server/display/INtDisplayBrightnessController$1;-><init>()V

    sput-object v0, Lcom/android/server/display/INtDisplayBrightnessController;->DEFAULT:Lcom/android/server/display/INtDisplayBrightnessController;

    return-void
.end method


# virtual methods
.method public bindercallSetBrightness(F)V
    .locals 0
    .param p1, "brightness"    # F

    .line 50
    return-void
.end method

.method public brightnessAnimationEnd()V
    .locals 0

    .line 52
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 55
    return-void
.end method

.method public getAmbientHbmBrightnessValue(F)F
    .locals 0
    .param p1, "systemBrightness"    # F

    .line 45
    return p1
.end method

.method public getBrightnessExtensionSafeValue()F
    .locals 1

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCameraBoostBrightness(FF)F
    .locals 1
    .param p1, "cameraBoostFactor"    # F
    .param p2, "systemBrightness"    # F

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCurrentBrightnessMax()F
    .locals 1

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCurrentBrightnessMin()F
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomizeBrightnessMin()F
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getHDRBrightnessAnimating()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getHDRType()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getHbmBrightnessMax()F
    .locals 1

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getHdrBrightnessValue()F
    .locals 1

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getHighBrightnessMode()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalBrightnessMax()F
    .locals 1

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getThermalBrightnessMax()F
    .locals 1

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTransitionPoint()F
    .locals 1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public init(IILandroid/os/IBinder;Ljava/lang/String;IFFLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "displayToken"    # Landroid/os/IBinder;
    .param p4, "displayUniqueId"    # Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "brightnessMin"    # F
    .param p7, "brightnessMax"    # F
    .param p8, "ChangeCallback"    # Ljava/lang/Runnable;
    .param p9, "changeAdaptiveBrightnessCallback"    # Ljava/lang/Runnable;
    .param p10, "CameraExitCallback"    # Ljava/lang/Runnable;
    .param p11, "deviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p12, "context"    # Landroid/content/Context;

    .line 33
    return-void
.end method

.method public onAmbientLuxChange(F)V
    .locals 0
    .param p1, "ambientLux"    # F

    .line 36
    return-void
.end method

.method public onAppFocusChanged(Lcom/android/server/wm/NtWmWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/android/server/wm/NtWmWrapper;

    .line 58
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 34
    return-void
.end method

.method public onBrightnessChanged(F)V
    .locals 0
    .param p1, "brightness"    # F

    .line 37
    return-void
.end method

.method public onCtsRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 56
    return-void
.end method

.method public setAutoBrightnessEnabled(I)V
    .locals 0
    .param p1, "state"    # I

    .line 35
    return-void
.end method

.method public setBrightnessExtensionRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "brtExtCallback"    # Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public setScreenBrightnessByUser(F)V
    .locals 0
    .param p1, "brightness"    # F

    .line 48
    return-void
.end method

.method public useGmsAdaptiveBrightness()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method
