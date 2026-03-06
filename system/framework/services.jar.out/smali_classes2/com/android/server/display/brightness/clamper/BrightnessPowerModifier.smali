.class Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;
.super Ljava/lang/Object;
.source "BrightnessPowerModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;,
        Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;,
        Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;,
        Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessPowerClamper"


# instance fields
.field private mApplied:Z

.field private mBrightnessCap:F

.field protected final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field private final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field private mCurrentAvgPowerConsumed:F

.field private mCurrentBrightness:F

.field private mCurrentThermalLevel:I

.field private mCurrentThermalLevelChanged:Z

.field private mCustomAnimationRateDeviceConfig:F

.field private mCustomAnimationRateSec:F

.field private mDataId:Ljava/lang/String;

.field private final mDataPointMapper:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSetMapper:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;",
            ">;",
            "Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field private final mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

.field private mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field private mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field private mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field private mPowerThrottlingDataOverride:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

.field private mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3qJfZiNExghXhIpE-_DN4Ds7e-Q(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5LoNAxwgtcr-skeyF7JY58bnPrw(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$recalculatePowerQuotaChange$4(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_AAgBRrrOtfefLzj8CVwCZZrEUw(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eVUF0eCk5S6mSL1T-GhaCp5fFYg(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$onDeviceConfigChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$gSxzfeLlhiZZGgaI9xdvxU5NJEI(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;FI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculatePowerQuotaChange(FI)V

    return-void
.end method

.method public static synthetic $r8$lambda$vaRpUl_duR6a_KEwqYhW64Mf9AA(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)Lcom/android/server/display/brightness/clamper/PmicMonitor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->activatePmicMonitor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->deactivatePmicMonitor(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p3, "powerData"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
    .param p4, "currentBrightness"    # F

    .line 113
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "listener":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .end local p3    # "powerData":Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
    .end local p4    # "currentBrightness":F
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "listener":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .local v4, "powerData":Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
    .local v5, "currentBrightness":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V
    .locals 4
    .param p1, "injector"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p4, "powerData"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
    .param p5, "currentBrightness"    # F

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    nop

    .line 68
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 74
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    .line 81
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    .line 82
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    .line 83
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    .line 87
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    .line 88
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    .line 89
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    .line 91
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    .line 101
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Ljava/util/function/Function;

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    .line 108
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    .line 119
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 121
    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    .line 123
    invoke-interface {p4}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 124
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    .line 127
    :cond_0
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    .line 128
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    .line 130
    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->getThermalService()Landroid/os/IThermalService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v3, v3, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    .line 129
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;->getPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)Lcom/android/server/display/brightness/clamper/PmicMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 134
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 135
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p4}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method private activatePmicMonitor()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    .line 367
    return-void
.end method

.method private deactivatePmicMonitor(I)V
    .locals 1
    .param p1, "status"    # I

    .line 370
    if-eqz p1, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->stop()V

    .line 377
    return-void
.end method

.method private getPowerQuotaForThermalStatus(I)F
    .locals 4
    .param p1, "thermalStatus"    # I

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "powerQuota":F
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 318
    .local v2, "level":Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;
    iget v3, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    if-gt v3, p1, :cond_0

    .line 319
    iget v0, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 324
    .end local v2    # "level":Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;
    goto :goto_0

    .line 326
    :cond_0
    return v0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseThermalStatus(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "status":I
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 95
    .local v1, "powerQuota":F
    new-instance v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(IF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 96
    .end local v0    # "status":I
    .end local v1    # "powerQuota":F
    :catch_0
    move-exception v0

    .line 97
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 0
    .param p1, "powerData"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    .line 137
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->loadOverrideData()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->start()V

    .line 139
    return-void
.end method

.method private synthetic lambda$onDeviceConfigChanged$3()V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->loadOverrideData()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateActiveData()V

    .line 224
    return-void
.end method

.method private synthetic lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    .line 202
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateActiveData()V

    .line 203
    return-void
.end method

.method private synthetic lambda$recalculatePowerQuotaChange$4(IF)V
    .locals 1
    .param p1, "thermalStatus"    # I
    .param p2, "avgPowerConsumed"    # F

    .line 331
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    .line 332
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    .line 333
    iput p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    .line 334
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateBrightnessCap()V

    .line 335
    return-void
.end method

.method private loadOverrideData()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPowerThrottlingData()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "throttlingDataOverride":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Ljava/util/function/Function;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    .line 244
    return-void
.end method

.method private recalculateActiveData()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 233
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 235
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->stop()V

    .line 238
    :cond_2
    return-void

    .line 230
    :goto_0
    return-void
.end method

.method private recalculateBrightnessCap()V
    .locals 4

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    .line 260
    .local v0, "targetBrightnessCap":F
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->getPowerQuotaForThermalStatus(I)F

    move-result v1

    .line 261
    .local v1, "powerQuota":F
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v2, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 265
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 269
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    div-float v2, v1, v2

    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    mul-float v0, v2, v3

    goto :goto_0

    .line 271
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    if-eqz v2, :cond_3

    .line 272
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    if-nez v2, :cond_2

    .line 274
    const/high16 v0, 0x3f800000    # 1.0f

    .line 275
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->stop()V

    goto :goto_0

    .line 281
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 282
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    goto :goto_0

    .line 287
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 292
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz v2, :cond_5

    .line 293
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->brightnessLowestCapAllowed:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 297
    :cond_5
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_6

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power clamper changing current brightness cap mBrightnessCap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " to target brightness cap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " for current screen brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\nPower clamper changed state: thermalStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentThermalLevelChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentAvgPowerConsumed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mCustomAnimationRateSec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessPowerClamper"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    .line 306
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    .line 307
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    goto :goto_1

    .line 309
    :cond_6
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    .line 311
    :goto_1
    return-void
.end method

.method private recalculatePowerQuotaChange(FI)V
    .locals 2
    .param p1, "avgPowerConsumed"    # F
    .param p2, "thermalStatus"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method private setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    .line 247
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getUniqueDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 248
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingDataId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    .line 249
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 250
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v0, :cond_0

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power throttling data is missing for powerThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessPowerClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 256
    return-void
.end method

.method private start()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    const-string v2, " msec."

    const-string v3, "Brightness power max polling window:"

    const-string v4, "BrightnessPowerClamper"

    if-gt v0, v1, :cond_1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msec, should be greater than brightness min polling window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msec, is not divisible by brightness min polling window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    .line 359
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->start()V

    .line 360
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "stateBuilder"    # Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 146
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 147
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 148
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 150
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 153
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 155
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    .line 157
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    .line 161
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    .line 162
    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 2
    .param p1, "aggregatedState"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 211
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 212
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 213
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    .line 215
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 174
    const-string v0, "BrightnessPowerClamper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAvgPowerConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUniqueDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentThermalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentThermalLevelChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerThrottlingDataFromDDC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->dump(Ljava/io/PrintWriter;)V

    .line 184
    return-void
.end method

.method public onDeviceConfigChanged()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 200
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0
    .param p1, "lux"    # F

    .line 194
    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->shutdown()V

    .line 167
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->stop()V

    .line 168
    return-void
.end method
