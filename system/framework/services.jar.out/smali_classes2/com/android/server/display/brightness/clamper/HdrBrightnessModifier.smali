.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;,
        Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    }
.end annotation


# static fields
.field private static final DEFAULT_HDR_LAYER_SIZE:F = -1.0f

.field static final DEFAULT_MAX_HDR_SDR_RATIO:F = 1.0f


# instance fields
.field private mAmbientLux:F

.field private final mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContentObserverRegistered:Z

.field private final mDebouncer:Ljava/lang/Runnable;

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field private mHdrLayerSize:F

.field private final mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

.field private final mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

.field private mLowPowerMode:Z

.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private mMaxBrightness:F

.field private mMaxDesiredHdrRatio:F

.field private mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

.field private mPendingMaxBrightness:F

.field private mPendingTransitionRate:F

.field private mRegisteredDisplayToken:Landroid/os/IBinder;

.field private mScreenSize:F

.field private mTransitionRate:F


# direct methods
.method public static synthetic $r8$lambda$WMdE1pH9-xTj-nE01JzyyBO_rH0(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bPyCPpEw8kWC_aSHq_ULgOQp-kk(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monHdrInfoChanged(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onHdrInfoChanged(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLowPowerModeChange(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onLowPowerModeChange()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "clamperChangeListener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p4, "displayData"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-direct {v1, p2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p3, v1, p4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "clamperChangeListener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p3, "injector"    # Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;
    .param p4, "displayData"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 57
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    .line 83
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    .line 84
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 86
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    .line 88
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 90
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 92
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 93
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    .line 95
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 96
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 109
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 111
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    .line 112
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserver:Landroid/database/ContentObserver;

    .line 123
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method private findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F
    .locals 6
    .param p1, "data"    # Lcom/android/server/display/config/HdrBrightnessData;
    .param p2, "ambientLux"    # F

    .line 316
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 317
    return v0

    .line 319
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 320
    return v0

    .line 322
    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 323
    .local v0, "foundAmbientBoundary":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 325
    .local v1, "foundMaxBrightness":F
    iget-object v2, p1, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 326
    .local v3, "brightnessPoint":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 328
    .local v4, "ambientBoundary":F
    cmpl-float v5, v4, p2

    if-lez v5, :cond_2

    cmpg-float v5, v4, v0

    if-gez v5, :cond_2

    .line 329
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 330
    move v0, v4

    .line 332
    .end local v3    # "brightnessPoint":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v4    # "ambientBoundary":F
    :cond_2
    goto :goto_0

    .line 333
    :cond_3
    return v1
.end method

.method private getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F
    .locals 1
    .param p1, "mode"    # Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .param p2, "maxBrightness"    # F
    .param p3, "data"    # Lcom/android/server/display/config/HdrBrightnessData;

    .line 305
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, v0, :cond_0

    .line 306
    iget v0, p3, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 307
    :cond_0
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, v0, :cond_1

    .line 308
    return p2

    .line 310
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private hasBrightnessLimits()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 114
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 115
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 116
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0
    .param p1, "displayData"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method private onHdrInfoChanged(FF)V
    .locals 3
    .param p1, "hdrLayerSize"    # F
    .param p2, "maxDesiredHdrSdrRatio"    # F

    .line 338
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 339
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-direct {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    .line 341
    .local v0, "newMode":Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    nop

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    nop

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    .line 343
    invoke-static {v1, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    nop

    .line 344
    .local v1, "needToNotifyChange":Z
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 345
    iput p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    .line 346
    if-eqz v1, :cond_2

    .line 347
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 348
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 350
    :cond_2
    return-void
.end method

.method private onLowPowerModeChange()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isLowPowerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 296
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-direct {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    .line 297
    .local v0, "newMode":Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v0, v1, :cond_0

    .line 298
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 299
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 300
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 302
    :cond_0
    return-void
.end method

.method private recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .locals 3
    .param p1, "data"    # Lcom/android/server/display/config/HdrBrightnessData;

    .line 271
    if-nez p1, :cond_0

    .line 272
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0

    .line 275
    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 276
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0

    .line 279
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0

    .line 283
    :cond_2
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    iget v2, p1, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 284
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0

    .line 287
    :cond_3
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    iget v2, p1, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 288
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0

    .line 291
    :cond_4
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object v0
.end method

.method private registerContentObserver()V
    .locals 3

    .line 380
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerContentObserver(Landroid/database/ContentObserver;Landroid/net/Uri;)V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isLowPowerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 385
    :cond_0
    return-void
.end method

.method private registerHdrListener(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 367
    return-void
.end method

.method private scheduleMaxBrightnessUpdate(FLcom/android/server/display/config/HdrBrightnessData;)V
    .locals 4
    .param p1, "desiredMaxBrightness"    # F
    .param p2, "data"    # Lcom/android/server/display/config/HdrBrightnessData;

    .line 245
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 246
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    .line 247
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 248
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 249
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 251
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    .line 253
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 254
    iget-wide v0, p2, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    .line 255
    .local v0, "debounceTime":J
    iget v2, p2, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    goto :goto_0

    .line 257
    .end local v0    # "debounceTime":J
    :cond_1
    iget-wide v0, p2, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    .line 258
    .restart local v0    # "debounceTime":J
    iget v2, p2, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    .end local v0    # "debounceTime":J
    :cond_2
    :goto_1
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 389
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    .line 392
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 394
    :cond_0
    return-void
.end method

.method private unregisterHdrListener()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 374
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "stateBuilder"    # Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 130
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v0, v1, :cond_1

    .line 134
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 137
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-object v3, v3, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F

    move-result v0

    .line 139
    .local v0, "hdrBrightness":F
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F

    move-result v1

    .line 140
    .local v1, "maxBrightness":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 142
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 143
    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    invoke-virtual {p2, v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 144
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 147
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 148
    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 3
    .param p1, "aggregatedState"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 232
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz v0, :cond_0

    .line 233
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    .line 234
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    iput-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    .line 235
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    .line 238
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 152
    const-string v0, "HdrBrightnessModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBrightnessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxDesiredHdrRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrLayerSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrListener registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mContentObserverRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mContentObserverRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 5
    .param p1, "displayData"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 199
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 200
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mWidth:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    .line 201
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v0

    .line 202
    .local v0, "data":Lcom/android/server/display/config/HdrBrightnessData;
    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayToken:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->registerHdrListener(Landroid/os/IBinder;)V

    .line 207
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_1

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->registerContentObserver()V

    goto :goto_2

    .line 208
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterContentObserver()V

    .line 213
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v1

    .line 215
    .local v1, "newMode":Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v3, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eq v0, v2, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :goto_3
    const/4 v2, 0x1

    .line 217
    .local v2, "needToNotifyChange":Z
    :goto_4
    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 218
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 219
    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget v4, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 221
    if-eqz v2, :cond_5

    .line 223
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 224
    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 226
    :cond_5
    return-void
.end method

.method public setAmbientLux(F)V
    .locals 3
    .param p1, "lux"    # F

    .line 184
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    .line 185
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->hasBrightnessLimits()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result v0

    .line 189
    .local v0, "desiredMaxBrightness":F
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v1, v2, :cond_1

    .line 190
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->scheduleMaxBrightnessUpdate(FLcom/android/server/display/config/HdrBrightnessData;)V

    .line 194
    :goto_0
    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->hasBrightnessLimits()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    .line 172
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    return-void
.end method
