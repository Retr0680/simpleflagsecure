.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;,
        Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;,
        Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;,
        Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field static final BRIGHTNESS_DEFAULT:F = 0.5f

.field private static final CONFIG_FILE_FORMAT:Ljava/lang/String; = "display_%s.xml"

.field private static final DEBUG:Z

.field private static final DEFAULT_BRIGHTNESS_THRESHOLDS:[F

.field private static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "default.xml"

.field private static final DEFAULT_CONFIG_FILE_WITH_UIMODE_FORMAT:Ljava/lang/String; = "default_%s.xml"

.field private static final DEFAULT_HIGH_REFRESH_RATE:I = 0x0

.field public static final DEFAULT_ID:Ljava/lang/String; = "default"

.field private static final DEFAULT_IDLE_STYLUS_TIMEOUT_MILLIS:I = 0x0

.field public static final DEFAULT_LOW_REFRESH_RATE:I = 0x3c

.field private static final DISPLAY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f

.field public static final HIGH_BRIGHTNESS_MODE_UNSUPPORTED:F = NaNf

.field private static final INTERPOLATION_DEFAULT:I = 0x0

.field private static final INTERPOLATION_LINEAR:I = 0x1

.field private static final INVALID_AUTO_BRIGHTNESS_LIGHT_DEBOUNCE:I = -0x1

.field public static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field private static final KEEP_CURRENT_BRIGHTNESS:I = -0x1

.field private static final NO_SUFFIX_FORMAT:Ljava/lang/String; = "%d"

.field private static final PORT_SUFFIX_FORMAT:Ljava/lang/String; = "port_%d"

.field public static final QUIRK_CAN_SET_BRIGHTNESS_VIA_HWC:Ljava/lang/String; = "canSetBrightnessViaHwc"

.field private static final STABLE_FLAG:J = 0x4000000000000000L

.field private static final STABLE_ID_SUFFIX_FORMAT:Ljava/lang/String; = "id_%d"

.field private static final TAG:Ljava/lang/String; = "DisplayDeviceConfig"


# instance fields
.field private mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field private mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field private mAmbientHorizonLong:I

.field private mAmbientHorizonShort:I

.field private mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

.field private mAutoBrightnessAvailable:Z

.field private mAutoBrightnessBrighteningLightDebounce:J

.field private mAutoBrightnessBrighteningLightDebounceIdle:J

.field private mAutoBrightnessDarkeningLightDebounce:J

.field private mAutoBrightnessDarkeningLightDebounceIdle:J

.field private mBacklight:[F

.field private mBacklightMaximum:F

.field private mBacklightMinimum:F

.field private mBacklightToBrightnessSpline:Landroid/util/Spline;

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightness:[F

.field private mBrightnessCapForWearBedtimeMode:F

.field private mBrightnessDefault:F

.field private mBrightnessDim:F

.field private mBrightnessRampDecreaseMaxIdleMillis:J

.field private mBrightnessRampDecreaseMaxMillis:J

.field private mBrightnessRampFastDecrease:F

.field private mBrightnessRampFastIncrease:F

.field private mBrightnessRampIncreaseMaxIdleMillis:J

.field private mBrightnessRampIncreaseMaxMillis:J

.field private mBrightnessRampSlowDecrease:F

.field private mBrightnessRampSlowDecreaseIdle:F

.field private mBrightnessRampSlowIncrease:F

.field private mBrightnessRampSlowIncreaseIdle:F

.field private mBrightnessToBacklightSpline:Landroid/util/Spline;

.field private final mContext:Landroid/content/Context;

.field private mDdcAutoBrightnessAvailable:Z

.field private mDefaultDozeBrightness:F

.field private mDefaultHighBlockingZoneRefreshRate:I

.field private mDefaultLowBlockingZoneRefreshRate:I

.field private mDensityMapping:Lcom/android/server/display/DensityMapping;

.field private mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

.field private mDozeBrightnessSensorValueToBrightness:[F

.field public mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

.field private final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field private mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

.field private mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field private mHighAmbientBrightnessThresholds:[F

.field private mHighBlockingZoneThermalMapId:Ljava/lang/String;

.field private mHighDisplayBrightnessThresholds:[F

.field private mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field private mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mIdleStylusTimeoutMillis:I

.field private mInterpolationType:I

.field private mLoadedFrom:Ljava/lang/String;

.field private mLowAmbientBrightnessThresholds:[F

.field private mLowBlockingZoneThermalMapId:Ljava/lang/String;

.field private mLowDisplayBrightnessThresholds:[F

.field private final mLuxThrottlingData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNits:[F

.field private mNitsToBacklightSpline:Landroid/util/Spline;

.field private mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field private final mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensor:Lcom/android/server/display/config/SensorData;

.field private mQuirks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawBacklight:[F

.field private mRawNits:[F

.field private mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

.field private final mRefreshRateLimitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRateThrottlingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRefreshRateZoneProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field private mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field private mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

.field private mScreenOffBrightnessSensorValueToLux:[I

.field private mTempSensor:Lcom/android/server/display/config/SensorData;

.field private final mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;",
            ">;"
        }
    .end annotation
.end field

.field private mVrrSupportEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$kvaggoREB46PbgPpqpZy8K1UmjQ(Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->lambda$initFromFile$0(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 665
    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    .line 692
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    .line 765
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 766
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 767
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 768
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 769
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 770
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 771
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 772
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 773
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 774
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 775
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 776
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 777
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 778
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 779
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 780
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 783
    nop

    .line 784
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 785
    nop

    .line 786
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 787
    nop

    .line 788
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 789
    nop

    .line 790
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 806
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 809
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 813
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 817
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 821
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 825
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 827
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 833
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 839
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 859
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 860
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 878
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 879
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 884
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 885
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 890
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 917
    sget-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 934
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 935
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 936
    return-void
.end method

.method private constrainNitsAndBacklightArrays()V
    .locals 10

    .line 2562
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_7

    .line 2572
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 2573
    .local v0, "newNits":[F
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v3

    new-array v3, v3, [F

    .line 2576
    .local v3, "newBacklight":[F
    const/4 v4, 0x0

    .line 2577
    .local v4, "newStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v6, v6

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_1

    .line 2578
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2579
    move v4, v5

    .line 2580
    goto :goto_1

    .line 2577
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2584
    .end local v5    # "i":I
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 2585
    .local v5, "isLastValue":Z
    const/4 v6, 0x0

    .line 2586
    .local v6, "newIndex":I
    move v7, v4

    .local v7, "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v8, v8

    if-ge v7, v8, :cond_6

    if-nez v5, :cond_6

    .line 2587
    sub-int v6, v7, v4

    .line 2590
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v8, v8, v7

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v8, v8, v9

    if-gez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v8, v8

    sub-int/2addr v8, v2

    if-lt v7, v8, :cond_3

    :cond_2
    goto :goto_3

    :cond_3
    move v8, v1

    goto :goto_4

    :goto_3
    move v8, v2

    :goto_4
    move v5, v8

    .line 2593
    if-nez v6, :cond_4

    .line 2594
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v8, v8, v7

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v8, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v8

    .line 2595
    .local v8, "newBacklightVal":F
    invoke-direct {p0, v7, v8}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    .local v9, "newNitsVal":F
    goto :goto_5

    .line 2596
    .end local v8    # "newBacklightVal":F
    .end local v9    # "newNitsVal":F
    :cond_4
    if-eqz v5, :cond_5

    .line 2597
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v8, v8, v7

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v8, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v8

    .line 2598
    .restart local v8    # "newBacklightVal":F
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9, v8}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    .restart local v9    # "newNitsVal":F
    goto :goto_5

    .line 2600
    .end local v8    # "newBacklightVal":F
    .end local v9    # "newNitsVal":F
    :cond_5
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v8, v8, v7

    .line 2601
    .restart local v8    # "newBacklightVal":F
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v7

    .line 2603
    .restart local v9    # "newNitsVal":F
    :goto_5
    aput v8, v3, v6

    .line 2604
    aput v9, v0, v6

    .line 2586
    .end local v8    # "newBacklightVal":F
    .end local v9    # "newNitsVal":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2606
    .end local v7    # "i":I
    :cond_6
    add-int/lit8 v1, v6, 0x1

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 2607
    add-int/lit8 v1, v6, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2608
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    .line 2609
    return-void

    .line 2565
    .end local v0    # "newNits":[F
    .end local v3    # "newBacklight":[F
    .end local v4    # "newStart":I
    .end local v5    # "isLastValue":Z
    .end local v6    # "newIndex":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Min or max values are invalid; raw min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; raw max="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight min="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight max="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertInterpolationType(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2869
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2870
    return v1

    .line 2873
    :cond_0
    const-string/jumbo v0, "linear"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    const/4 v0, 0x1

    return v0

    .line 2877
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Interpolation Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    return v1
.end method

.method static convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .locals 3
    .param p0, "value"    # Lcom/android/server/display/config/ThermalStatus;

    .line 2844
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2845
    return v0

    .line 2847
    :cond_0
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Thermal Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    return v0

    .line 2861
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 2859
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 2857
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 2855
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 2853
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 2851
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 2849
    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1
    .param p1, "defaultConfig"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1957
    if-nez p1, :cond_0

    .line 1958
    return-void

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_1

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1964
    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalDisplayId"    # J
    .param p3, "isFirstDisplay"    # Z
    .param p4, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 952
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 955
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 956
    return-object v0
.end method

.method public static create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useConfigXml"    # Z
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 971
    if-eqz p1, :cond_0

    .line 972
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    goto :goto_0

    .line 974
    .end local v0    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 976
    .restart local v0    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    :goto_0
    return-object v0
.end method

.method private createBacklightConversionSplines()V
    .locals 7

    .line 2627
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 2628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 2629
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v5, v5

    sub-int/2addr v5, v2

    aget v2, v4, v5

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    aget v4, v4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v5, v6, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v2

    aput v2, v1, v0

    .line 2628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2633
    .end local v0    # "i":I
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v2, :cond_1

    .line 2634
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_1

    .line 2635
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2636
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v2, :cond_2

    .line 2637
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_2

    .line 2638
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2639
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v2, :cond_3

    .line 2640
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_3

    .line 2641
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 2642
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v2, :cond_4

    .line 2643
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_4

    .line 2644
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 2645
    return-void
.end method

.method private static createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalDisplayId"    # J
    .param p3, "isFirstDisplay"    # Z
    .param p4, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 983
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 985
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    if-eqz v0, :cond_0

    .line 986
    return-object v0

    .line 989
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 991
    if-eqz v0, :cond_1

    .line 992
    return-object v0

    .line 998
    :cond_1
    invoke-static {p0, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    return-object v1
.end method

.method private getBacklightToBrightnessSpline()Landroid/util/Spline;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    return-object v0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method private static getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1822
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1823
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    .line 1824
    return-object v0
.end method

.method private static getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1829
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1830
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    .line 1831
    return-object v0
.end method

.method private static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "suffixFormat"    # Ljava/lang/String;
    .param p3, "idNumber"    # J
    .param p5, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1809
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "suffix":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "display_%s.xml"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1811
    .local v1, "filename":Ljava/lang/String;
    const-string v2, "etc"

    const-string v3, "displayconfig"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1813
    .local v2, "filePath":Ljava/io/File;
    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v3, p0, p5}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1814
    .local v3, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1815
    return-object v3

    .line 1817
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method private static getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 1042
    .local p0, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1043
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    return-object v1

    .line 1046
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 1047
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;F)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "defaultValue"    # F

    .line 2977
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2978
    .local v0, "n":I
    new-array v1, v0, [F

    .line 2979
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2980
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 2979
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2982
    .end local v2    # "i":I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2983
    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .locals 4
    .param p0, "lux"    # [I

    .line 2993
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 2994
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2995
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 2994
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2997
    .end local v1    # "i":I
    return-object v0
.end method

.method private getNitsToBacklightSpline()Landroid/util/Spline;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    return-object v0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-object v0
.end method

.method private initFromDefaultValues()V
    .locals 2

    .line 1934
    const-string v0, "Static values"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 1935
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 1936
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 1937
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 1938
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 1939
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1940
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1941
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1942
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 1943
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 1944
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 1945
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 1946
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 1947
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 1948
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 1949
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 1950
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1951
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1952
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1953
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 1954
    return-void
.end method

.method private initFromGlobalXml()V
    .locals 2

    .line 1913
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 1914
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1915
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 1916
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1917
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1918
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1919
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1920
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1921
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1922
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholdsFromXml()V

    .line 1923
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigsFromConfigXml()V

    .line 1924
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 1925
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1926
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    .line 1927
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1928
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1929
    const-string v0, "<config.xml>"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 1930
    return-void
.end method

.method private synthetic lambda$initFromFile$0(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .locals 4
    .param p1, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 1862
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 1863
    .local v0, "transitionPointBacklightScale":F
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1868
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1864
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HBM transition point invalid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " is not less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2882
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    .line 2883
    .local v0, "configLongHorizon":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 2884
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 2886
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object v1

    .line 2887
    .local v1, "configShortHorizon":Ljava/math/BigInteger;
    if-eqz v1, :cond_1

    .line 2888
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 2890
    :cond_1
    return-void
.end method

.method private loadAutoBrightnessAvailableFromConfigXml()V
    .locals 2

    .line 2514
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 2516
    return-void
.end method

.method private loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2
    .param p1, "autoBrightnessConfig"    # Lcom/android/server/display/config/AutoBrightness;

    .line 2457
    if-eqz p1, :cond_1

    .line 2458
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2462
    :cond_0
    nop

    .line 2463
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    goto :goto_1

    .line 2459
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 2465
    :goto_1
    return-void
.end method

.method private loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2
    .param p1, "autoBrightnessConfig"    # Lcom/android/server/display/config/AutoBrightness;

    .line 2489
    if-eqz p1, :cond_1

    .line 2490
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2493
    :cond_0
    nop

    .line 2494
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    goto :goto_1

    .line 2491
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 2496
    :goto_1
    return-void
.end method

.method private loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 5
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2432
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;

    move-result-object v0

    .line 2433
    .local v0, "autoBrightness":Lcom/android/server/display/config/AutoBrightness;
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2434
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2436
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2437
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2438
    new-instance v1, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2439
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 2440
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleStylusTimeoutMillis(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2441
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2442
    return-void
.end method

.method private loadAutoBrightnessConfigsFromConfigXml()V
    .locals 5

    .line 2803
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2804
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 2805
    return-void
.end method

.method private loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2
    .param p1, "autoBrightnessConfig"    # Lcom/android/server/display/config/AutoBrightness;

    .line 2472
    if-eqz p1, :cond_1

    .line 2473
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2477
    :cond_0
    nop

    .line 2478
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    goto :goto_1

    .line 2474
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 2480
    :goto_1
    return-void
.end method

.method private loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2
    .param p1, "autoBrightnessConfig"    # Lcom/android/server/display/config/AutoBrightness;

    .line 2504
    if-eqz p1, :cond_1

    .line 2505
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2508
    :cond_0
    nop

    .line 2509
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    goto :goto_1

    .line 2506
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 2511
    :goto_1
    return-void
.end method

.method private loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 3047
    if-eqz p1, :cond_1

    .line 3048
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessCapForWearBedtimeMode()Ljava/math/BigDecimal;

    move-result-object v0

    .line 3049
    .local v0, "configBrightnessCap":Ljava/math/BigDecimal;
    if-eqz v0, :cond_0

    .line 3050
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    goto :goto_0

    .line 3052
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    .line 3055
    .end local v0    # "configBrightnessCap":Ljava/math/BigDecimal;
    :cond_1
    :goto_0
    return-void
.end method

.method private loadBrightnessCapForWearBedtimeModeFromConfigXml()V
    .locals 2

    .line 3058
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3059
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3058
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 3061
    return-void
.end method

.method private loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2812
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2813
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 2814
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2815
    nop

    .line 2816
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2817
    nop

    .line 2818
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2819
    nop

    .line 2820
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2821
    return-void
.end method

.method private loadBrightnessChangeThresholdsFromXml()V
    .locals 1

    .line 2808
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2809
    return-void
.end method

.method private loadBrightnessConstraintsFromConfigXml()V
    .locals 5

    .line 2021
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 2023
    .local v0, "min":F
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 2025
    .local v1, "max":F
    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    :cond_0
    goto :goto_0

    .line 2033
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 2034
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_1

    .line 2026
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2027
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0129

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2026
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 2029
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2030
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0128

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2029
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 2036
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 2038
    .local v3, "dim":F
    cmpl-float v2, v3, v2

    if-nez v2, :cond_2

    .line 2039
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2040
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2039
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    goto :goto_2

    .line 2043
    :cond_2
    iput v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 2045
    :goto_2
    return-void
.end method

.method private loadBrightnessDefaultFromConfigXml()V
    .locals 3

    .line 2008
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 2010
    .local v0, "def":F
    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 2011
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2012
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2011
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_0

    .line 2015
    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 2017
    :goto_0
    return-void
.end method

.method private loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1995
    if-eqz p1, :cond_1

    .line 1996
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1997
    .local v0, "configBrightnessDefault":Ljava/math/BigDecimal;
    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_0

    .line 2000
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 2003
    .end local v0    # "configBrightnessDefault":Ljava/math/BigDecimal;
    :cond_1
    :goto_0
    return-void
.end method

.method private loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 12
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2048
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object v0

    .line 2050
    .local v0, "map":Lcom/android/server/display/config/NitsMap;
    if-nez v0, :cond_0

    .line 2051
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 2052
    return-void

    .line 2056
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 2057
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2059
    .local v2, "size":I
    new-array v3, v2, [F

    .line 2060
    .local v3, "nits":[F
    new-array v4, v2, [F

    .line 2062
    .local v4, "backlight":[F
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 2063
    const/4 v5, 0x0

    .line 2064
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/config/Point;

    .line 2065
    .local v7, "point":Lcom/android/server/display/config/Point;
    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v3, v5

    .line 2066
    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v4, v5

    .line 2067
    if-lez v5, :cond_2

    .line 2068
    aget v8, v3, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v3, v9

    cmpg-float v8, v8, v9

    const-string v9, " < "

    const-string v10, "DisplayDeviceConfig"

    if-gez v8, :cond_1

    .line 2069
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return-void

    .line 2074
    :cond_1
    aget v8, v4, v5

    add-int/lit8 v11, v5, -0x1

    aget v11, v4, v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_2

    .line 2075
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return-void

    .line 2081
    :cond_2
    nop

    .end local v7    # "point":Lcom/android/server/display/config/Point;
    add-int/lit8 v5, v5, 0x1

    .line 2082
    goto/16 :goto_0

    .line 2083
    :cond_3
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2084
    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2085
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    .line 2086
    return-void
.end method

.method private loadBrightnessMapFromConfigXml()V
    .locals 6

    .line 2520
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2521
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10700c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 2523
    .local v1, "sysNits":[F
    const v2, 0x10700bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 2525
    .local v2, "sysBrightness":[I
    array-length v3, v2

    new-array v3, v3, [F

    .line 2527
    .local v3, "sysBrightnessFloat":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 2528
    aget v5, v2, v4

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    aput v5, v3, v4

    .line 2527
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2534
    .end local v4    # "i":I
    array-length v4, v3

    if-eqz v4, :cond_1

    array-length v4, v1

    if-nez v4, :cond_2

    :cond_1
    goto :goto_1

    .line 2539
    :cond_2
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2540
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2541
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    .line 2542
    return-void

    .line 2535
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 2536
    return-void
.end method

.method private loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2720
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2721
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2722
    return-void
.end method

.method private loadBrightnessRampsFromConfigXml()V
    .locals 2

    .line 2792
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2793
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2792
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2794
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2795
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2794
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 2798
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2799
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 2800
    return-void
.end method

.method private loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2760
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecreaseIdle()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2761
    .local v0, "slowDownDecimalIdle":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncreaseIdle()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2763
    .local v1, "slowUpDecimalIdle":Ljava/math/BigDecimal;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2764
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2765
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    goto :goto_0

    .line 2767
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 2768
    :cond_1
    const-string v2, "DisplayDeviceConfig"

    const-string v3, "Per display idle brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_2
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2774
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 2777
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object v2

    .line 2778
    .local v2, "increaseMaxIdle":Ljava/math/BigInteger;
    if-eqz v2, :cond_3

    .line 2779
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    goto :goto_1

    .line 2781
    :cond_3
    iget-wide v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    iput-wide v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 2783
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object v3

    .line 2784
    .local v3, "decreaseMaxIdle":Ljava/math/BigInteger;
    if-eqz v3, :cond_4

    .line 2785
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    goto :goto_2

    .line 2787
    :cond_4
    iget-wide v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    iput-wide v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 2789
    :goto_2
    return-void
.end method

.method private loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2727
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2728
    .local v0, "fastDownDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2729
    .local v1, "fastUpDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 2730
    .local v2, "slowDownDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    .line 2732
    .local v3, "slowUpDecimal":Ljava/math/BigDecimal;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2734
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2735
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2736
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 2737
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_0

    .line 2739
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 2741
    :cond_1
    const-string v4, "DisplayDeviceConfig"

    const-string v5, "Per display brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 2747
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v4

    .line 2748
    .local v4, "increaseMax":Ljava/math/BigInteger;
    if-eqz v4, :cond_3

    .line 2749
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 2751
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v5

    .line 2752
    .local v5, "decreaseMax":Ljava/math/BigInteger;
    if-eqz v5, :cond_4

    .line 2753
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 2755
    :cond_4
    return-void
.end method

.method private static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "physicalDisplayId"    # J
    .param p4, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1054
    const-string/jumbo v2, "id_%d"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "baseDirectory":Ljava/io/File;
    .end local p2    # "physicalDisplayId":J
    .end local p4    # "flags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .local v0, "context":Landroid/content/Context;
    .local v1, "baseDirectory":Ljava/io/File;
    .local v3, "physicalDisplayId":J
    .local v5, "flags":Lcom/android/server/display/feature/DisplayManagerFlags;
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    .line 1056
    move-wide p1, v3

    .end local v3    # "physicalDisplayId":J
    .local p0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    .local p1, "physicalDisplayId":J
    if-eqz p0, :cond_0

    .line 1057
    return-object p0

    .line 1061
    :cond_0
    const-wide p3, -0x4000000000000001L    # -1.9999999999999998

    and-long v3, p1, p3

    .line 1062
    .local v3, "withoutStableFlag":J
    const-string v2, "%d"

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    .line 1064
    move-wide p3, v3

    .end local v3    # "withoutStableFlag":J
    .local p3, "withoutStableFlag":J
    if-eqz p0, :cond_1

    .line 1065
    return-object p0

    .line 1069
    :cond_1
    nop

    .line 1070
    invoke-static {p1, p2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v6

    .line 1071
    .local v6, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    invoke-virtual {v6}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v7

    .line 1072
    .local v7, "port":I
    const-string/jumbo v2, "port_%d"

    int-to-long v3, v7

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    .line 1073
    return-object p0
.end method

.method private static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 1002
    const-string v0, "DisplayDeviceConfig"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v1, "defaultXmlLocations":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string v4, "displayconfig"

    const-string v5, "default.xml"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1010
    const v6, 0x10e006b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1011
    .local v2, "uiModeType":I
    invoke-static {v2}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, "uiModeTypeStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1013
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    .line 1015
    const-string v9, "default_%s.xml"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v4, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 1013
    invoke-static {v7, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object v3

    .line 1021
    .local v3, "configFile":Ljava/io/File;
    if-nez v3, :cond_1

    .line 1023
    const/4 v0, 0x0

    return-object v0

    .line 1026
    :cond_1
    const/4 v4, 0x0

    .line 1028
    .local v4, "defaultConfig":Lcom/android/server/display/config/DisplayConfiguration;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v5}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v7

    move-object v4, v7

    .line 1030
    if-nez v4, :cond_2

    .line 1031
    const-string v7, "Default DisplayDeviceConfig file is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1028
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 1033
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1036
    .end local v5    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 1033
    :catch_0
    move-exception v5

    goto :goto_3

    .line 1028
    .restart local v5    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "defaultXmlLocations":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "uiModeType":I
    .end local v3    # "configFile":Ljava/io/File;
    .end local v4    # "defaultConfig":Lcom/android/server/display/config/DisplayConfiguration;
    .end local v6    # "uiModeTypeStr":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    :goto_2
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1033
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v1    # "defaultXmlLocations":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v2    # "uiModeType":I
    .restart local v3    # "configFile":Ljava/io/File;
    .restart local v4    # "defaultConfig":Lcom/android/server/display/config/DisplayConfiguration;
    .restart local v6    # "uiModeTypeStr":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :goto_3
    nop

    .line 1034
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v4
.end method

.method private loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1971
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1972
    return-void

    .line 1975
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object v0

    .line 1977
    .local v0, "entriesFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Density;>;"
    nop

    .line 1978
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/display/DensityMapping$Entry;

    .line 1979
    .local v1, "entries":[Lcom/android/server/display/DensityMapping$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1980
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/Density;

    .line 1981
    .local v3, "density":Lcom/android/server/display/config/Density;
    new-instance v4, Lcom/android/server/display/DensityMapping$Entry;

    .line 1982
    invoke-virtual {v3}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 1983
    invoke-virtual {v3}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 1984
    invoke-virtual {v3}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v4, v1, v2

    .line 1979
    .end local v3    # "density":Lcom/android/server/display/config/Density;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1986
    .end local v2    # "i":I
    invoke-static {v1}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    .line 1987
    return-void
.end method

.method private loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 5
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2903
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessFloatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2904
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2905
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/FloatArray;->getItem()Ljava/util/List;

    move-result-object v0

    .line 2906
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 2907
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2908
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 2909
    .local v2, "backlight":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    .line 2910
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 2911
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v4

    aput v4, v3, v1

    goto :goto_1

    .line 2913
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    aput v3, v4, v1

    .line 2907
    .end local v2    # "backlight":F
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2918
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessFloatEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2919
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDefaultDozeBrightness()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2920
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDefaultDozeBrightness()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2921
    .local v0, "backlight":F
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    .line 2922
    .end local v0    # "backlight":F
    goto :goto_2

    .line 2923
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    .line 2925
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 2926
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2927
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2926
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    .line 2931
    :cond_3
    :goto_2
    return-void
.end method

.method private loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 3
    .param p1, "autobrightness"    # Lcom/android/server/display/config/AutoBrightness;

    .line 3014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 3015
    if-eqz p1, :cond_0

    .line 3016
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 3019
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 3022
    return-void
.end method

.method private loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 2
    .param p1, "upperBlockingZoneConfig"    # Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2306
    if-nez p1, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    goto :goto_0

    .line 2310
    :cond_0
    nop

    .line 2311
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 2313
    :goto_0
    return-void
.end method

.method private loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 7
    .param p1, "blockingZoneConfig"    # Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2386
    if-nez p1, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2389
    .local v0, "highDisplayBrightnessThresholdsInt":[I
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 2391
    .local v1, "highAmbientBrightnessThresholdsInt":[I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 2403
    nop

    .line 2404
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2405
    nop

    .line 2406
    invoke-static {v1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 2407
    .end local v0    # "highDisplayBrightnessThresholdsInt":[I
    .end local v1    # "highAmbientBrightnessThresholdsInt":[I
    goto/16 :goto_2

    .line 2395
    .restart local v0    # "highDisplayBrightnessThresholdsInt":[I
    .restart local v1    # "highAmbientBrightnessThresholdsInt":[I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display high brightness threshold array and ambient brightness threshold array have different length: highDisplayBrightnessThresholdsInt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", highAmbientBrightnessThresholdsInt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2408
    .end local v0    # "highDisplayBrightnessThresholdsInt":[I
    .end local v1    # "highAmbientBrightnessThresholdsInt":[I
    :cond_1
    nop

    .line 2409
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object v0

    .line 2410
    .local v0, "higherThresholdDisplayBrightnessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/DisplayBrightnessPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2411
    .local v1, "size":I
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2412
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 2413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2414
    nop

    .line 2415
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 2416
    .local v3, "thresholdNits":F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 2418
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    aput v3, v4, v2

    goto :goto_1

    .line 2420
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v4

    .line 2421
    .local v4, "thresholdBacklight":F
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2422
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v6

    aput v6, v5, v2

    .line 2425
    .end local v4    # "thresholdBacklight":F
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 2426
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v5}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->floatValue()F

    move-result v5

    aput v5, v4, v2

    .line 2413
    .end local v3    # "thresholdNits":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2429
    .end local v0    # "higherThresholdDisplayBrightnessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/DisplayBrightnessPoint;>;"
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1
    .param p1, "upperBlockingZoneConfig"    # Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2292
    if-eqz p1, :cond_0

    .line 2293
    nop

    .line 2294
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2296
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2297
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2298
    return-void
.end method

.method private loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2893
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenRefreshRateTimeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2894
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2895
    nop

    .line 2896
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    .line 2895
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V

    .line 2897
    nop

    .line 2898
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->getPoint()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 2900
    :cond_0
    return-void
.end method

.method private loadIdleStylusTimeoutMillis(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2
    .param p1, "autoBrightness"    # Lcom/android/server/display/config/AutoBrightness;

    .line 3001
    if-nez p1, :cond_0

    .line 3002
    return-void

    .line 3004
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getIdleStylusTimeoutMillis()Ljava/math/BigInteger;

    move-result-object v0

    .line 3005
    .local v0, "idleStylusTimeoutMillis":Ljava/math/BigInteger;
    if-eqz v0, :cond_1

    .line 3006
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    .line 3008
    :cond_1
    return-void
.end method

.method private loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 2
    .param p1, "lowerBlockingZoneConfig"    # Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2321
    if-nez p1, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    goto :goto_0

    .line 2325
    :cond_0
    nop

    .line 2326
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 2328
    :goto_0
    return-void
.end method

.method private loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 7
    .param p1, "lowerBlockingZoneConfig"    # Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2335
    if-nez p1, :cond_1

    .line 2336
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2338
    .local v0, "lowDisplayBrightnessThresholdsInt":[I
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 2340
    .local v1, "lowAmbientBrightnessThresholdsInt":[I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 2352
    nop

    .line 2353
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2354
    nop

    .line 2355
    invoke-static {v1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 2356
    .end local v0    # "lowDisplayBrightnessThresholdsInt":[I
    .end local v1    # "lowAmbientBrightnessThresholdsInt":[I
    goto/16 :goto_2

    .line 2344
    .restart local v0    # "lowDisplayBrightnessThresholdsInt":[I
    .restart local v1    # "lowAmbientBrightnessThresholdsInt":[I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display low brightness threshold array and ambient brightness threshold array have different length: lowDisplayBrightnessThresholdsInt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", lowAmbientBrightnessThresholdsInt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2357
    .end local v0    # "lowDisplayBrightnessThresholdsInt":[I
    .end local v1    # "lowAmbientBrightnessThresholdsInt":[I
    :cond_1
    nop

    .line 2358
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object v0

    .line 2359
    .local v0, "lowerThresholdDisplayBrightnessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/DisplayBrightnessPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2360
    .local v1, "size":I
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2361
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 2362
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2363
    nop

    .line 2364
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 2365
    .local v3, "thresholdNits":F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 2367
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    aput v3, v4, v2

    goto :goto_1

    .line 2369
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v4

    .line 2370
    .local v4, "thresholdBacklight":F
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2371
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v6

    aput v6, v5, v2

    .line 2374
    .end local v4    # "thresholdBacklight":F
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 2375
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v5}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->floatValue()F

    move-result v5

    aput v5, v4, v2

    .line 2362
    .end local v3    # "thresholdNits":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2378
    .end local v0    # "lowerThresholdDisplayBrightnessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/DisplayBrightnessPoint;>;"
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1
    .param p1, "lowerBlockingZoneConfig"    # Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2280
    if-eqz p1, :cond_0

    .line 2281
    nop

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2284
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2285
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2286
    return-void
.end method

.method private loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 19
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2672
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLuxThrottling()Lcom/android/server/display/config/LuxThrottling;

    move-result-object v1

    .line 2673
    .local v1, "cfg":Lcom/android/server/display/config/LuxThrottling;
    if-eqz v1, :cond_8

    .line 2674
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v2

    .line 2675
    .local v2, "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    goto :goto_0

    .line 2676
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    nop

    .line 2677
    .local v3, "hbmTransitionPoint":F
    invoke-virtual {v1}, Lcom/android/server/display/config/LuxThrottling;->getBrightnessLimitMap()Ljava/util/List;

    move-result-object v4

    .line 2678
    .local v4, "limitMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessLimitMap;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/BrightnessLimitMap;

    .line 2679
    .local v6, "map":Lcom/android/server/display/config/BrightnessLimitMap;
    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessLimitMap;->getType()Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v7

    .line 2680
    .local v7, "type":Lcom/android/server/display/config/PredefinedBrightnessLimitNames;
    invoke-static {v7}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->-$$Nest$smconvert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object v8

    .line 2681
    .local v8, "mappedType":Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    const-string v9, "DisplayDeviceConfig"

    if-nez v8, :cond_1

    .line 2682
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid NBM config: unsupported map type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    goto :goto_1

    .line 2685
    :cond_1
    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2686
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid NBM config: duplicate map type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    goto :goto_1

    .line 2689
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2691
    .local v10, "luxToTransitionPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessLimitMap;->getMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v11

    .line 2692
    .local v11, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 2693
    .local v13, "point":Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;
    invoke-virtual {v13}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getFirst()Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v14

    .line 2694
    .local v14, "lux":F
    invoke-virtual {v13}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getSecond()Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v15

    .line 2695
    .local v15, "maxBacklight":F
    cmpl-float v16, v15, v3

    move-object/from16 v17, v1

    .end local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .local v17, "cfg":Lcom/android/server/display/config/LuxThrottling;
    const-string v1, "; lux="

    if-lez v16, :cond_3

    .line 2696
    move-object/from16 v16, v2

    .end local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .local v16, "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "hbmTransitionPoint":F
    .local v18, "hbmTransitionPoint":F
    const-string v3, "Invalid NBM config: maxBacklight is greater than hbm.transitionPoint. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; maxBacklight="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto :goto_2

    .line 2703
    .end local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v18    # "hbmTransitionPoint":F
    .restart local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v3    # "hbmTransitionPoint":F
    :cond_3
    move-object/from16 v16, v2

    move/from16 v18, v3

    .end local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v3    # "hbmTransitionPoint":F
    .restart local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v18    # "hbmTransitionPoint":F
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NBM config: duplicate lux key. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto :goto_2

    .line 2709
    :cond_4
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v15}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    .end local v13    # "point":Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;
    .end local v14    # "lux":F
    .end local v15    # "maxBacklight":F
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_2

    .line 2711
    .end local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v17    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .end local v18    # "hbmTransitionPoint":F
    .restart local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .restart local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v3    # "hbmTransitionPoint":F
    :cond_5
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move/from16 v18, v3

    .end local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .end local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v3    # "hbmTransitionPoint":F
    .restart local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v17    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .restart local v18    # "hbmTransitionPoint":F
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2712
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    .end local v6    # "map":Lcom/android/server/display/config/BrightnessLimitMap;
    .end local v7    # "type":Lcom/android/server/display/config/PredefinedBrightnessLimitNames;
    .end local v8    # "mappedType":Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;
    .end local v10    # "luxToTransitionPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v11    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;>;"
    :cond_6
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_1

    .line 2678
    .end local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v17    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .end local v18    # "hbmTransitionPoint":F
    .restart local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .restart local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v3    # "hbmTransitionPoint":F
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move/from16 v18, v3

    .end local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .end local v2    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v3    # "hbmTransitionPoint":F
    .restart local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v17    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .restart local v18    # "hbmTransitionPoint":F
    goto :goto_3

    .line 2673
    .end local v4    # "limitMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessLimitMap;>;"
    .end local v16    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v17    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .end local v18    # "hbmTransitionPoint":F
    .restart local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    :cond_8
    move-object/from16 v17, v1

    .line 2716
    .end local v1    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    .restart local v17    # "cfg":Lcom/android/server/display/config/LuxThrottling;
    :goto_3
    return-void
.end method

.method private loadName(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1967
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    .line 1968
    return-void
.end method

.method private loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2227
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getPowerThrottlingConfig()Lcom/android/server/display/config/PowerThrottlingConfig;

    move-result-object v0

    .line 2228
    .local v0, "powerThrottlingCfg":Lcom/android/server/display/config/PowerThrottlingConfig;
    if-nez v0, :cond_0

    .line 2229
    return-void

    .line 2231
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2232
    return-void

    .line 2234
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingConfig;->getBrightnessLowestCapAllowed()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 2235
    .local v1, "lowestBrightnessCap":F
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingConfig;->getCustomAnimationRate()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 2236
    .local v2, "customAnimationRate":F
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMaxMillis()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 2237
    .local v3, "pollingWindowMaxMillis":I
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMinMillis()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 2238
    .local v4, "pollingWindowMinMillis":I
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;-><init>(FFII)V

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 2242
    return-void
.end method

.method private loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z
    .locals 12
    .param p1, "throttlingConfig"    # Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 2188
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPowerThrottlingMap()Ljava/util/List;

    move-result-object v0

    .line 2189
    .local v0, "maps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/PowerThrottlingMap;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto/16 :goto_5

    .line 2194
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/PowerThrottlingMap;

    .line 2195
    .local v2, "map":Lcom/android/server/display/config/PowerThrottlingMap;
    invoke-virtual {v2}, Lcom/android/server/display/config/PowerThrottlingMap;->getPowerThrottlingPoint()Ljava/util/List;

    move-result-object v3

    .line 2197
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/PowerThrottlingPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    .line 2198
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2200
    .local v4, "throttlingLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;>;"
    const/4 v5, 0x0

    .line 2201
    .local v5, "badConfig":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 2202
    .local v7, "point":Lcom/android/server/display/config/PowerThrottlingPoint;
    invoke-virtual {v7}, Lcom/android/server/display/config/PowerThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v8

    .line 2203
    .local v8, "status":Lcom/android/server/display/config/ThermalStatus;
    invoke-direct {p0, v8}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2204
    const/4 v5, 0x1

    .line 2205
    goto :goto_2

    .line 2208
    :cond_2
    new-instance v9, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 2209
    invoke-static {v8}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v10

    .line 2210
    invoke-virtual {v7}, Lcom/android/server/display/config/PowerThrottlingPoint;->getPowerQuotaMilliWatts()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2208
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    .end local v7    # "point":Lcom/android/server/display/config/PowerThrottlingPoint;
    .end local v8    # "status":Lcom/android/server/display/config/ThermalStatus;
    goto :goto_1

    .line 2213
    :cond_3
    :goto_2
    if-nez v5, :cond_6

    .line 2214
    invoke-virtual {v2}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "default"

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v6

    .line 2215
    .local v6, "id":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2219
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2220
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    move-result-object v8

    .line 2219
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2216
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Power throttling data with ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " already exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2222
    .end local v2    # "map":Lcom/android/server/display/config/PowerThrottlingMap;
    .end local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/PowerThrottlingPoint;>;"
    .end local v4    # "throttlingLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;>;"
    .end local v5    # "badConfig":Z
    .end local v6    # "id":Ljava/lang/String;
    :cond_6
    :goto_4
    goto/16 :goto_0

    .line 2223
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 2190
    :goto_5
    const-string v1, "DisplayDeviceConfig"

    const-string v2, "No power throttling map found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v1, 0x0

    return v1
.end method

.method private loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2665
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v0

    .line 2666
    .local v0, "quirks":Lcom/android/server/display/config/DisplayQuirks;
    if-eqz v0, :cond_0

    .line 2667
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    .line 2669
    :cond_0
    return-void
.end method

.method private loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2246
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object v1

    .line 2248
    .local v1, "refreshRateConfigs":Lcom/android/server/display/config/RefreshRateConfigs;
    :goto_0
    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 2249
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v2

    :goto_1
    nop

    .line 2251
    .local v2, "lowerBlockingZoneConfig":Lcom/android/server/display/config/BlockingZoneConfig;
    if-nez v1, :cond_2

    goto :goto_2

    .line 2252
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateConfigs;->getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v0

    :goto_2
    nop

    .line 2253
    .local v0, "higherBlockingZoneConfig":Lcom/android/server/display/config/BlockingZoneConfig;
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2254
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2255
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V

    .line 2256
    return-void
.end method

.method private loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 8
    .param p1, "refreshRateConfigs"    # Lcom/android/server/display/config/RefreshRateConfigs;

    .line 2263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 2267
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->getRefreshRateZoneProfile()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/RefreshRateZone;

    .line 2268
    .local v1, "zone":Lcom/android/server/display/config/RefreshRateZone;
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateZone;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v2

    .line 2269
    .local v2, "range":Lcom/android/server/display/config/RefreshRateRange;
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 2270
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateZone;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2272
    invoke-virtual {v2}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->floatValue()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2269
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    .end local v1    # "zone":Lcom/android/server/display/config/RefreshRateZone;
    .end local v2    # "range":Lcom/android/server/display/config/RefreshRateRange;
    goto :goto_0

    .line 2274
    :cond_2
    return-void

    .line 2264
    :goto_1
    return-void
.end method

.method private loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 5
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 3025
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;

    move-result-object v0

    .line 3026
    .local v0, "sensorValueToLux":Lcom/android/server/display/config/IntegerArray;
    if-nez v0, :cond_0

    .line 3027
    return-void

    .line 3030
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/IntegerArray;->getItem()Ljava/util/List;

    move-result-object v1

    .line 3031
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 3032
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3033
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 3032
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3035
    .end local v2    # "i":I
    return-void
.end method

.method private loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 12
    .param p1, "throttlingConfig"    # Lcom/android/server/display/config/ThermalThrottling;

    .line 2099
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Ljava/util/List;

    move-result-object v0

    .line 2100
    .local v0, "maps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessThrottlingMap;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto/16 :goto_5

    .line 2105
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 2106
    .local v2, "map":Lcom/android/server/display/config/BrightnessThrottlingMap;
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object v3

    .line 2108
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessThrottlingPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    .line 2109
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2111
    .local v4, "throttlingLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;>;"
    const/4 v5, 0x0

    .line 2112
    .local v5, "badConfig":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 2113
    .local v7, "point":Lcom/android/server/display/config/BrightnessThrottlingPoint;
    invoke-virtual {v7}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v8

    .line 2114
    .local v8, "status":Lcom/android/server/display/config/ThermalStatus;
    invoke-direct {p0, v8}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2115
    const/4 v5, 0x1

    .line 2116
    goto :goto_2

    .line 2119
    :cond_2
    new-instance v9, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 2120
    invoke-static {v8}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2119
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    .end local v7    # "point":Lcom/android/server/display/config/BrightnessThrottlingPoint;
    .end local v8    # "status":Lcom/android/server/display/config/ThermalStatus;
    goto :goto_1

    .line 2123
    :cond_3
    :goto_2
    if-nez v5, :cond_6

    .line 2124
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "default"

    goto :goto_3

    .line 2125
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v6

    :goto_3
    nop

    .line 2126
    .local v6, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2130
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2131
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v8

    .line 2130
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2127
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness throttling data with ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " already exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2133
    .end local v2    # "map":Lcom/android/server/display/config/BrightnessThrottlingMap;
    .end local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessThrottlingPoint;>;"
    .end local v4    # "throttlingLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;>;"
    .end local v5    # "badConfig":Z
    .end local v6    # "id":Ljava/lang/String;
    :cond_6
    :goto_4
    goto/16 :goto_0

    .line 2134
    :cond_7
    return-void

    .line 2101
    :goto_5
    const-string v1, "DisplayDeviceConfig"

    const-string v2, "No brightness throttling map found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    return-void
.end method

.method private loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 14
    .param p1, "throttlingConfig"    # Lcom/android/server/display/config/ThermalThrottling;

    .line 2137
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getRefreshRateThrottlingMap()Ljava/util/List;

    move-result-object v0

    .line 2138
    .local v0, "maps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/RefreshRateThrottlingMap;>;"
    const-string v1, "DisplayDeviceConfig"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 2143
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 2144
    .local v3, "map":Lcom/android/server/display/config/RefreshRateThrottlingMap;
    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getRefreshRateThrottlingPoint()Ljava/util/List;

    move-result-object v4

    .line 2145
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/RefreshRateThrottlingPoint;>;"
    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "default"

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v5

    .line 2147
    .local v5, "id":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    goto/16 :goto_3

    .line 2152
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RefreshRateThrottling: map already exists, mapId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    goto :goto_0

    .line 2157
    :cond_5
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2158
    .local v6, "refreshRates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/SurfaceControl$RefreshRateRange;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 2159
    .local v8, "point":Lcom/android/server/display/config/RefreshRateThrottlingPoint;
    invoke-virtual {v8}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v9

    .line 2160
    .local v9, "status":Lcom/android/server/display/config/ThermalStatus;
    invoke-direct {p0, v9}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RefreshRateThrottling: Invalid thermalStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    invoke-virtual {v9}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",mapId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2161
    invoke-static {v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    goto :goto_2

    .line 2166
    :cond_6
    invoke-static {v9}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v10

    .line 2167
    .local v10, "thermalStatusInt":I
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->contains(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2168
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RefreshRateThrottling: thermalStatus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is already in the map, mapId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    goto :goto_2

    .line 2173
    :cond_7
    new-instance v11, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2174
    invoke-virtual {v8}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->floatValue()F

    move-result v12

    .line 2175
    invoke-virtual {v8}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->floatValue()F

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2173
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2177
    .end local v8    # "point":Lcom/android/server/display/config/RefreshRateThrottlingPoint;
    .end local v9    # "status":Lcom/android/server/display/config/ThermalStatus;
    .end local v10    # "thermalStatusInt":I
    goto/16 :goto_2

    .line 2178
    :cond_8
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 2179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RefreshRateThrottling: no valid throttling points found for map, mapId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    goto/16 :goto_0

    .line 2183
    :cond_9
    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    .end local v3    # "map":Lcom/android/server/display/config/RefreshRateThrottlingMap;
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/RefreshRateThrottlingPoint;>;"
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "refreshRates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/SurfaceControl$RefreshRateRange;>;"
    goto/16 :goto_0

    .line 2149
    .restart local v3    # "map":Lcom/android/server/display/config/RefreshRateThrottlingMap;
    .restart local v4    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/RefreshRateThrottlingPoint;>;"
    .restart local v5    # "id":Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RefreshRateThrottling: points not found for mapId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    goto/16 :goto_0

    .line 2185
    .end local v3    # "map":Lcom/android/server/display/config/RefreshRateThrottlingMap;
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/RefreshRateThrottlingPoint;>;"
    .end local v5    # "id":Ljava/lang/String;
    :cond_a
    return-void

    .line 2139
    :goto_4
    const-string v2, "RefreshRateThrottling: map not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void
.end method

.method private loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 2089
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v0

    .line 2090
    .local v0, "throttlingConfig":Lcom/android/server/display/config/ThermalThrottling;
    if-nez v0, :cond_0

    .line 2091
    const-string v1, "DisplayDeviceConfig"

    const-string v2, "No thermal throttling config found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    return-void

    .line 2094
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 2095
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 2096
    return-void
.end method

.method private loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 3038
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getUsiVersion()Lcom/android/server/display/config/UsiVersion;

    move-result-object v0

    .line 3039
    .local v0, "usiVersion":Lcom/android/server/display/config/UsiVersion;
    if-eqz v0, :cond_0

    .line 3040
    new-instance v1, Landroid/hardware/input/HostUsiVersion;

    .line 3041
    invoke-virtual {v0}, Lcom/android/server/display/config/UsiVersion;->getMajorVersion()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 3042
    invoke-virtual {v0}, Lcom/android/server/display/config/UsiVersion;->getMinorVersion()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    goto :goto_0

    .line 3043
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 3044
    return-void
.end method

.method private rawBacklightToNits(IF)F
    .locals 5
    .param p1, "i"    # I
    .param p2, "backlight"    # F

    .line 2612
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method private setSimpleMappingStrategyValues()V
    .locals 2

    .line 2548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2549
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 2550
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 2551
    .local v0, "simpleMappingStrategyArray":[F
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2553
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2555
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z
    .locals 3
    .param p1, "value"    # Lcom/android/server/display/config/ThermalStatus;

    .line 2824
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2825
    return v0

    .line 2828
    :cond_0
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2838
    return v0

    .line 2836
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V
    .locals 7
    .param p1, "idleScreenRefreshRateTimeoutConfig"    # Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 2935
    nop

    .line 2936
    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object v0

    .line 2938
    .local v0, "idleScreenRefreshRateTimeoutLuxThresholds":Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;
    if-eqz v0, :cond_2

    .line 2939
    const/4 v1, -0x1

    .line 2942
    .local v1, "previousLux":I
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->getPoint()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 2943
    .local v3, "point":Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;
    invoke-virtual {v3}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 2944
    .local v4, "newLux":I
    if-ge v1, v4, :cond_1

    .line 2949
    invoke-virtual {v3}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getTimeout()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 2950
    .local v5, "timeout":I
    if-ltz v5, :cond_0

    .line 2954
    move v1, v4

    .line 2955
    .end local v3    # "point":Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;
    .end local v4    # "newLux":I
    .end local v5    # "timeout":I
    goto :goto_0

    .line 2951
    .restart local v3    # "point":Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;
    .restart local v4    # "newLux":I
    .restart local v5    # "timeout":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "The timeout value cannot be negative in idle screen refresh rate timeout config"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2945
    .end local v5    # "timeout":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Lux values should be in ascending order in the idle screen refresh rate timeout config"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2957
    .end local v1    # "previousLux":I
    .end local v3    # "point":Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;
    .end local v4    # "newLux":I
    :cond_2
    return-void
.end method


# virtual methods
.method public convertBacklightToNits(F)F
    .locals 1
    .param p1, "backlight"    # F

    .line 2657
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 2660
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public convertNitsToBacklight(F)F
    .locals 1
    .param p1, "nits"    # F

    .line 2650
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    if-eqz v0, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 2653
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getAmbientBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object v0
.end method

.method public getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object v0
.end method

.method public getAmbientHorizonLong()I
    .locals 1

    .line 1362
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return v0
.end method

.method public getAmbientHorizonShort()I
    .locals 1

    .line 1366
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return v0
.end method

.method public getAmbientLightSensor()Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    return-object v0
.end method

.method public getAutoBrightnessBrighteningLevels(II)[F
    .locals 1
    .param p1, "mode"    # I
    .param p2, "preset"    # I

    .line 1538
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez v0, :cond_0

    .line 1539
    const/4 v0, 0x0

    return-object v0

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getBrightnessArray(II)[F

    move-result-object v0

    return-object v0
.end method

.method public getAutoBrightnessBrighteningLevelsLux(II)[F
    .locals 1
    .param p1, "mode"    # I
    .param p2, "preset"    # I

    .line 1514
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez v0, :cond_0

    .line 1515
    const/4 v0, 0x0

    return-object v0

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getLuxArray(II)[F

    move-result-object v0

    return-object v0
.end method

.method public getAutoBrightnessBrighteningLevelsNits()[F
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez v0, :cond_0

    .line 1525
    const/4 v0, 0x0

    return-object v0

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getNitsArray()[F

    move-result-object v0

    return-object v0
.end method

.method public getAutoBrightnessBrighteningLightDebounce()J
    .locals 2

    .line 1488
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessBrighteningLightDebounceIdle()J
    .locals 2

    .line 1502
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounce()J
    .locals 2

    .line 1481
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounceIdle()J
    .locals 2

    .line 1495
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-wide v0
.end method

.method public getBacklight()[F
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    return-object v0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object v0
.end method

.method public getBacklightFromBrightness(F)F
    .locals 1
    .param p1, "brightness"    # F

    .line 1118
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBacklightFromNits(F)F
    .locals 1
    .param p1, "nits"    # F

    .line 1176
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBrightness()[F
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    return-object v0

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object v0
.end method

.method public getBrightnessCapForWearBedtimeMode()F
    .locals 1

    .line 1674
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return v0
.end method

.method public getBrightnessDefault()F
    .locals 1

    .line 1309
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return v0
.end method

.method public getBrightnessDim()F
    .locals 1

    .line 1318
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return v0
.end method

.method public getBrightnessFromBacklight(F)F
    .locals 1
    .param p1, "backlight"    # F

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBrightnessMaximum()F
    .locals 1

    .line 1300
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v0

    return v0
.end method

.method public getBrightnessMinimum()F
    .locals 1

    .line 1291
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v0

    return v0
.end method

.method public getBrightnessRampDecreaseMaxIdleMillis()J
    .locals 2

    .line 1354
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .locals 2

    .line 1346
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .locals 1

    .line 1322
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return v0
.end method

.method public getBrightnessRampFastIncrease()F
    .locals 1

    .line 1326
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return v0
.end method

.method public getBrightnessRampIncreaseMaxIdleMillis()J
    .locals 2

    .line 1358
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .locals 2

    .line 1350
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .locals 1

    .line 1330
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return v0
.end method

.method public getBrightnessRampSlowDecreaseIdle()F
    .locals 1

    .line 1338
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    return v0
.end method

.method public getBrightnessRampSlowIncrease()F
    .locals 1

    .line 1334
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return v0
.end method

.method public getBrightnessRampSlowIncreaseIdle()F
    .locals 1

    .line 1342
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    return v0
.end method

.method public getDefaultDozeBrightness()F
    .locals 1

    .line 1699
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    return v0
.end method

.method public getDefaultHighBlockingZoneRefreshRate()I
    .locals 1

    .line 1552
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return v0
.end method

.method public getDefaultLowBlockingZoneRefreshRate()I
    .locals 1

    .line 1559
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return v0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object v0
.end method

.method public getDozeBrightnessSensorValueToBrightness()[F
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    return-object v0
.end method

.method public getEvenDimmerTransitionPoint()F
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez v0, :cond_0

    .line 1207
    const/4 v0, 0x0

    return v0

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    return v0
.end method

.method public getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    return-object v0
.end method

.method public getHdrBrightnessFromSdr(FF)F
    .locals 2
    .param p1, "brightness"    # F
    .param p2, "maxDesiredHdrSdrRatio"    # F

    .line 1226
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-object v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1227
    .local v0, "sdrToHdrSpline":Landroid/util/Spline;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F

    move-result v1

    return v1
.end method

.method public getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F
    .locals 8
    .param p1, "brightness"    # F
    .param p2, "maxDesiredHdrSdrRatio"    # F
    .param p3, "sdrToHdrSpline"    # Landroid/util/Spline;

    .line 1239
    const/high16 v0, -0x40800000    # -1.0f

    if-nez p3, :cond_0

    .line 1240
    return v0

    .line 1243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v1

    .line 1244
    .local v1, "backlight":F
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    .line 1245
    .local v2, "nits":F
    cmpl-float v3, v2, v0

    if-nez v3, :cond_1

    .line 1246
    return v0

    .line 1249
    :cond_1
    invoke-virtual {p3, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1250
    .local v3, "ratio":F
    mul-float v4, v2, v3

    .line 1251
    .local v4, "hdrNits":F
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsToBacklightSpline()Landroid/util/Spline;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1252
    return v0

    .line 1255
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v0

    .line 1256
    .local v0, "hdrBacklight":F
    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1257
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v5

    .line 1259
    .local v5, "hdrBrightness":F
    sget-boolean v6, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHdrBrightnessFromSdr: sdr brightness "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " backlight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " nits "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " ratio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " hdrNits "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " hdrBacklight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " hdrBrightness "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DisplayDeviceConfig"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_3
    return v5
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    return-object v0
.end method

.method public getHighBlockingZoneThermalMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-boolean v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    return-object v0

    .line 1423
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    return-object v0
.end method

.method public getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-object v0
.end method

.method public getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;",
            ">;"
        }
    .end annotation

    .line 2967
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    return-object v0
.end method

.method public getIdleStylusTimeoutMillis()I
    .locals 1

    .line 2449
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    return v0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    return-object v0
.end method

.method public getLowBlockingZoneThermalMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .locals 1

    .line 1595
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    return-object v0
.end method

.method public getLuxThrottlingData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    return-object v0
.end method

.method public getMinNitsFromLux(F)F
    .locals 1
    .param p1, "lux"    # F

    .line 1195
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez v0, :cond_0

    .line 1196
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNits()[F
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    return-object v0

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object v0
.end method

.method public getNitsFromBacklight(F)F
    .locals 2
    .param p1, "backlight"    # F

    .line 1155
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    if-nez v0, :cond_0

    .line 1157
    return v1

    .line 1159
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1160
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_2

    .line 1164
    return v1

    .line 1166
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1167
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-object v0
.end method

.method public getPowerThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;",
            ">;"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object v0
.end method

.method public getProximitySensor()Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    return-object v0
.end method

.method public getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 1575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    const/4 v0, 0x0

    return-object v0

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$RefreshRateRange;

    return-object v0
.end method

.method getRefreshRangeProfiles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    return-object v0
.end method

.method public getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    return-object v0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation

    .line 1443
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object v0
.end method

.method public getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object v0
.end method

.method public getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object v0
.end method

.method public getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    return-object v0
.end method

.method public getScreenOffBrightnessSensorValueToLux()[I
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    return-object v0
.end method

.method public getTempSensor()Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    return-object v0
.end method

.method public getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;",
            ">;"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object v0
.end method

.method public getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation

    .line 1465
    if-nez p1, :cond_0

    const-string v0, "default"

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1466
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    return-object v1
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "quirkValue"    # Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSdrToHdrRatioSpline()Z
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-object v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initFromFile(Ljava/io/File;)Z
    .locals 8
    .param p1, "configFile"    # Ljava/io/File;

    .line 1836
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1838
    return v1

    .line 1841
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_1

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display configuration is not a file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    return v1

    .line 1846
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v3

    .line 1848
    .local v3, "config":Lcom/android/server/display/config/DisplayConfiguration;
    if-eqz v3, :cond_4

    .line 1849
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadName(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1850
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1851
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1852
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1853
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1855
    invoke-static {v3}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    goto :goto_0

    .line 1846
    .end local v3    # "config":Lcom/android/server/display/config/DisplayConfiguration;
    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 1857
    .restart local v3    # "config":Lcom/android/server/display/config/DisplayConfiguration;
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1858
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1859
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1861
    new-instance v4, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 1870
    .local v4, "transitionPointProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/config/HighBrightnessMode;Ljava/lang/Float;>;"
    invoke-static {v3, v4}, Lcom/android/server/display/config/HighBrightnessModeData;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    .line 1872
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-boolean v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-object v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v5, :cond_3

    .line 1874
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-object v7, v7, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v6, v0, v7}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(ILandroid/view/SurfaceControl$RefreshRateRange;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1880
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1881
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1882
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1883
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1882
    invoke-static {v3, v5}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1884
    invoke-static {v3}, Lcom/android/server/display/config/SensorData;->loadScreenOffBrightnessSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 1885
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v5, v3}, Lcom/android/server/display/config/SensorData;->loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1886
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v5, v3}, Lcom/android/server/display/config/SensorData;->loadTempSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1887
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1888
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1889
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1890
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1891
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1892
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1893
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1894
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1895
    invoke-static {v3, v4}, Lcom/android/server/display/config/HdrBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 1896
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1897
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1898
    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayConfiguration;->getSupportsVrr()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 1899
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1900
    .end local v4    # "transitionPointProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/config/HighBrightnessMode;Ljava/lang/Float;>;"
    goto :goto_1

    .line 1901
    :cond_4
    const-string v4, "DisplayDeviceConfig file is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    .end local v3    # "config":Lcom/android/server/display/config/DisplayConfiguration;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1906
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 1903
    :catch_0
    move-exception v1

    goto :goto_4

    .line 1846
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayDeviceConfig;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_3
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1903
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayDeviceConfig;
    .restart local p1    # "configFile":Ljava/io/File;
    :goto_4
    nop

    .line 1904
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 1908
    return v0
.end method

.method isAutoBrightnessAvailable()Z
    .locals 1

    .line 1406
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return v0
.end method

.method public isEvenDimmerAvailable()Z
    .locals 1

    .line 1667
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVrrSupportEnabled()Z
    .locals 1

    .line 1681
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1707
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1708
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1709
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1710
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterpolationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 1712
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLuxThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalBrightnessThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mPowerThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecreaseIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncreaseIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxIdleMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxIdleMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientBrightnessHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientIdleHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenBrightnessHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenBrightnessIdleHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOffBrightnessSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTempSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 1757
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDensityMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounceIdle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounceIdle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayBrightnessMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDdcAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleStylusTimeoutMillis= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmDefaultLowBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultHighBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateZoneProfiles= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateThrottlingMap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowBlockingZoneThermalMapId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighBlockingZoneThermalMapId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLowDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 1781
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 1783
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 1785
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 1787
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenOffBrightnessSensorValueToLux= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 1789
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmUsiVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHdrBrightnessData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessCapForWearBedtimeMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nmEvenDimmerBrightnessData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v1, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    invoke-virtual {v1}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmVrrSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmDozeBrightnessSensorValueToBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 1801
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmDefaultDozeBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    return-object v0
.end method
