.class Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;
.super Ljava/lang/Object;
.source "BrightnessThermalModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;,
        Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;,
        Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessThermalClamper"


# instance fields
.field private mApplied:Z

.field private mBrightnessCap:F

.field protected final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field private final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field private mDataId:Ljava/lang/String;

.field private final mDataPointMapper:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSetMapper:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;",
            ">;",
            "Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field private final mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

.field private mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field private mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field private mThermalThrottlingDataOverride:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThrottlingStatus:I

.field private mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3ZG5HSTRQ2t7KNJMOwKgXy204sI(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XR3z-g3_7ZUkt1ztDHPdAtpOdQ8(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$onDeviceConfigChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$eW0xlnIU08x6wWuR_DZG0tFTYac(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdbc_JzcgGEXRPTp_54StI8jthQ(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mthermalStatusChanged(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->thermalStatusChanged(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p3, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 107
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p4, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 74
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 80
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 82
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    .line 91
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    .line 101
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Ljava/util/function/Function;

    .line 114
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 117
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    .line 118
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p4}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseThermalStatus(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "status":I
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseBrightness(Ljava/lang/String;)F

    move-result v1

    .line 95
    .local v1, "brightnessPoint":F
    new-instance v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 96
    .end local v0    # "status":I
    .end local v1    # "brightnessPoint":F
    :catch_0
    move-exception v0

    .line 97
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;)V

    .line 120
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->loadOverrideData()V

    .line 121
    return-void
.end method

.method private synthetic lambda$onDeviceConfigChanged$3()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->loadOverrideData()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateActiveData()V

    .line 200
    return-void
.end method

.method private synthetic lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;)V

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateActiveData()V

    .line 179
    return-void
.end method

.method private loadOverrideData()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getBrightnessThrottlingData()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "throttlingDataOverride":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Ljava/util/function/Function;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 219
    return-void
.end method

.method private recalculateActiveData()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 209
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 212
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateBrightnessCap()V

    .line 213
    return-void

    .line 206
    :goto_0
    return-void
.end method

.method private recalculateBrightnessCap()V
    .locals 5

    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    .line 234
    .local v0, "brightnessCap":F
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 237
    .local v2, "level":Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;
    iget v3, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    if-gt v3, v4, :cond_0

    .line 238
    iget v0, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->brightness:F

    .line 243
    .end local v2    # "level":Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;
    goto :goto_0

    .line 246
    :cond_0
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 247
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    .line 248
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 250
    :cond_1
    return-void
.end method

.method private setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;

    .line 222
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getUniqueDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 223
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getThermalThrottlingDataId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    .line 224
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getThermalBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 225
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    if-nez v0, :cond_0

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal throttling data is missing for thermalThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessThermalClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getTempSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->registerSensor(Lcom/android/server/display/config/SensorData;)V

    .line 230
    return-void
.end method

.method private thermalStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .line 253
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    if-eq v0, p1, :cond_0

    .line 254
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    .line 255
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateBrightnessCap()V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "stateBuilder"    # Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 127
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 128
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 129
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 131
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 134
    iget-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    if-nez v2, :cond_0

    .line 135
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 137
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    goto :goto_0

    .line 139
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    .line 141
    :goto_0
    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 2
    .param p1, "aggregatedState"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 187
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 188
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 189
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    .line 191
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 150
    const-string v0, "BrightnessThermalClamper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUniqueDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataFromDeviceConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    .line 160
    return-void
.end method

.method public onDeviceConfigChanged()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 176
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0
    .param p1, "lux"    # F

    .line 170
    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->stopObserving()V

    .line 146
    return-void
.end method
