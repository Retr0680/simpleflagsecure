.class Lcom/android/server/display/brightness/clamper/DisplayDimModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "DisplayDimModifier.java"


# instance fields
.field private final mScreenBrightnessDimConfig:F

.field private final mScreenBrightnessMinimumDimAmount:F


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    .line 42
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    .local v1, "resources":Landroid/content/res/Resources;
    nop

    .line 46
    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v2

    .line 45
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessDimConfig:F

    .line 47
    const v2, 0x105010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessMinimumDimAmount:F

    .line 49
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 73
    const-string v0, "DisplayDimModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessDimConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessMinimumDimAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessMinimumDimAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 77
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-super {p0, v0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->dump(Ljava/io/PrintWriter;)V

    .line 78
    return-void
.end method

.method getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 2
    .param p1, "currentBrightness"    # F
    .param p2, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 60
    iget v0, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessMinimumDimAmount:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;->mScreenBrightnessDimConfig:F

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 60
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method getModifier()I
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setAmbientLux(F)V
    .locals 0
    .param p1, "lux"    # F

    .line 88
    return-void
.end method

.method shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 54
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldListenToLightSensor()Z
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method
