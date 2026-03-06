.class Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 2

    .line 266
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object v0
.end method

.method getLightSensorController(Landroid/hardware/SensorManager;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/LightSensorController;
    .locals 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 302
    new-instance v0, Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p4}, Lcom/android/server/display/brightness/clamper/LightSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method getModifiers(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;F)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p5, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
    .param p6, "currentBrightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/feature/DisplayManagerFlags;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;",
            "F)",
            "Ljava/util/List<",
            "Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "modifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;>;"
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    invoke-direct {v1, p3, p4, p5}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBrightnessWearBedtimeModeClamperEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-direct {v1, p3, p2, p4, p5}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPowerThrottlingClamperEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {p5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object v1

    .line 281
    .local v1, "configData":Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    if-eqz v1, :cond_1

    .line 282
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-direct {v2, p3, p4, p5, p6}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v1    # "configData":Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    :cond_1
    new-instance v1, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;

    iget v2, p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    invoke-direct {v1, v2, p2}, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;-><init>(ILandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->isEvenDimmerAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;

    iget-object v2, p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v1, p3, p4, p2, v2}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->useNewHdrBrightnessModifier()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    new-instance v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-direct {v1, p3, p2, p4, p5}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_3
    return-object v0
.end method
