.class Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field defaultControlLux:Ljava/lang/String;

.field private mAutoBrightnessAdjustment:F

.field private mBrightness:[F

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mControlBrightness:[F

.field private mControlLux:[F

.field private mDefaultBrightness:[F

.field private mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mLux:[F

.field private mMaxGamma:F

.field private final mMode:I

.field private mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

.field private mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private final mPreset:I

.field private mShortTermModelTimeout:J

.field private mSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method private constructor <init>([F[FFJIILcom/android/server/display/DisplayDeviceConfig;)V
    .locals 16
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "maxGamma"    # F
    .param p4, "timeout"    # J
    .param p6, "mode"    # I
    .param p7, "preset"    # I
    .param p8, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;

    .line 820
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    invoke-direct {v0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 798
    const-string v5, "0,100,1000,2500,4500"

    iput-object v5, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->defaultControlLux:Ljava/lang/String;

    .line 805
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 806
    iput-object v5, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 822
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    array-length v5, v2

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-string v8, "Lux and brightness arrays must not be empty!"

    invoke-static {v5, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 824
    array-length v5, v1

    array-length v8, v2

    if-ne v5, v8, :cond_1

    move v6, v7

    :cond_1
    const-string v5, "Lux and brightness arrays must be the same length!"

    invoke-static {v6, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 826
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v6, "lux"

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v6}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 827
    const/high16 v5, 0x4f000000

    const-string v6, "brightness"

    invoke-static {v2, v7, v5, v6}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 830
    array-length v5, v2

    .line 831
    .local v5, "N":I
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 832
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 834
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultBrightness:[F

    .line 836
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 837
    iget-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v9, v1, v6

    aput v9, v8, v6

    .line 838
    iget-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v9, v2, v6

    aput v9, v8, v6

    .line 841
    iget-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v9, v2, v6

    float-to-int v9, v9

    invoke-static {v9}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeToPowerManagerMax(I)F

    move-result v9

    aput v9, v8, v6

    .line 842
    iget-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultBrightness:[F

    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v9, v9, v6

    aput v9, v8, v6

    .line 836
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 846
    .end local v6    # "i":I
    move/from16 v6, p3

    iput v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 847
    iput v7, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 848
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 849
    const/high16 v8, 0x7fc00000    # Float.NaN

    iput v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 850
    iget-boolean v8, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v8, :cond_3

    .line 851
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v8

    const-string/jumbo v9, "simple mapping strategy"

    invoke-virtual {v8, v9}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 855
    :cond_3
    invoke-static {}, Lcom/android/server/display/PersistentDataStore;->getInstance()Lcom/android/server/display/PersistentDataStore;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 860
    sget-object v8, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POWER_BEHAVIOR_TRACKER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v8}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tracker/INtPowerBehavior;

    iput-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    .line 864
    iget-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v8}, Lcom/android/server/display/PersistentDataStore;->getUserBrightnessConfig()Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;

    move-result-object v8

    .line 865
    .local v8, "store":Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;
    invoke-virtual {v8}, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->getUserLux()F

    move-result v9

    .line 866
    .local v9, "storeLux":F
    invoke-virtual {v8}, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->getUserBrightness()F

    move-result v10

    .line 867
    .local v10, "storeBrightenss":F
    cmpl-float v7, v9, v7

    const-string v11, "BrightnessMappingStrategy"

    if-eqz v7, :cond_5

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_5

    .line 868
    iget-boolean v7, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v7, :cond_4

    .line 869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restore UserDataPoint: ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_4
    iput v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 872
    iput v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 873
    invoke-direct {v0, v9}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v7

    .line 874
    .local v7, "unadjustedBrightness":F
    iget v12, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    iget v13, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v12, v13, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v12

    iput v12, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 879
    .end local v7    # "unadjustedBrightness":F
    :cond_5
    const-string/jumbo v7, "ro.vendor.display.user.control.lux"

    iget-object v12, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->defaultControlLux:Ljava/lang/String;

    invoke-static {v7, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 880
    .local v7, "controlLux":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smpropArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 881
    .local v12, "luxArray":[I
    array-length v13, v12

    .line 882
    .local v13, "len":I
    new-array v14, v13, [F

    iput-object v14, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlLux:[F

    .line 883
    new-array v14, v13, [F

    iput-object v14, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlBrightness:[F

    .line 884
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_7

    .line 885
    iget-object v15, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlLux:[F

    aget v1, v12, v14

    int-to-float v1, v1

    aput v1, v15, v14

    .line 886
    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlBrightness:[F

    iget-object v15, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlLux:[F

    aget v15, v15, v14

    invoke-direct {v0, v15}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v15

    aput v15, v1, v14

    .line 887
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_6

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "control lux: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlLux:[F

    aget v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlBrightness:[F

    aget v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_7
    nop

    .line 895
    .end local v14    # "i":I
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 896
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 897
    const-string/jumbo v11, "ro.vendor.display.array.auto.nits"

    goto :goto_3

    :cond_8
    const-string/jumbo v11, "ro.vendor.display.array.nits"

    .line 896
    :goto_3
    const-string v14, ""

    invoke-static {v11, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 899
    .local v11, "propNits":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsDefaultNit()[I

    move-result-object v14

    goto :goto_4

    :cond_9
    invoke-static {v11}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smpropArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v14

    .line 898
    :goto_4
    invoke-static {v14}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smintArrayToFloatArray([I)[F

    move-result-object v14

    .line 900
    .local v14, "nits":[F
    const/16 v15, 0x48

    filled-new-array {v15}, [I

    move-result-object v15

    invoke-static {v15}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 901
    new-instance v15, Landroid/hardware/display/BrightnessConfiguration$Builder;

    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    invoke-direct {v15, v1, v14}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 902
    .local v15, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v15, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 903
    invoke-virtual {v15, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 904
    invoke-virtual {v15, v3, v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 905
    invoke-virtual {v15}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 906
    .local v1, "config":Landroid/hardware/display/BrightnessConfiguration;
    iput-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 907
    iput-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 911
    .end local v1    # "config":Landroid/hardware/display/BrightnessConfiguration;
    .end local v15    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    :cond_a
    invoke-direct {v0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 912
    iput-wide v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    .line 913
    move/from16 v1, p6

    iput v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMode:I

    .line 914
    move/from16 v15, p7

    iput v15, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPreset:I

    .line 915
    return-void
.end method

.method synthetic constructor <init>([F[FFJIILcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/BrightnessMappingStrategy-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[FFJIILcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method private computeSpline()V
    .locals 7

    .line 1216
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getPartialAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v1

    .line 1219
    .local v1, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 1220
    return-void
.end method

.method private getPartialAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 22
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "userLux"    # F
    .param p4, "userBrightness"    # F
    .param p5, "adjustment"    # F
    .param p6, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlLux:[F

    iget-object v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlLux:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v11

    .line 1231
    .local v11, "controlLux":[F
    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlBrightness:[F

    iget-object v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mControlBrightness:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v12

    .line 1232
    .local v12, "controlBrightness":[F
    const/4 v1, 0x0

    .line 1233
    .local v1, "startIndex":I
    array-length v2, v11

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1234
    .local v2, "endIndex":I
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v8, v4

    const-string v13, "BrightnessMappingStrategy"

    if-eqz v5, :cond_f

    .line 1235
    array-length v5, v11

    .line 1236
    .local v5, "len":I
    add-int/lit8 v14, v5, -0x1

    aget v14, v11, v14

    cmpl-float v14, v8, v14

    if-lez v14, :cond_0

    .line 1237
    add-int/lit8 v14, v5, -0x1

    const/high16 v15, 0x447a0000    # 1000.0f

    add-float/2addr v15, v8

    aput v15, v11, v14

    .line 1238
    add-int/lit8 v14, v5, -0x1

    add-int/lit8 v15, v5, -0x1

    aget v15, v11, v15

    invoke-direct {v0, v15}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v15

    aput v15, v12, v14

    .line 1241
    :cond_0
    invoke-direct {v0, v8}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v14

    .line 1242
    .local v14, "oirginBrightness":F
    cmpl-float v15, v9, v14

    move/from16 v16, v4

    const/4 v4, 0x0

    if-lez v15, :cond_7

    .line 1243
    const/4 v15, 0x0

    .line 1244
    .local v15, "i":I
    const/4 v15, 0x0

    :goto_0
    if-ge v15, v5, :cond_2

    .line 1245
    aget v17, v12, v15

    cmpg-float v17, v14, v17

    if-gez v17, :cond_1

    .line 1246
    goto :goto_1

    .line 1244
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    :goto_1
    if-lt v15, v3, :cond_3

    add-int/lit8 v17, v15, -0x1

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    .line 1250
    .end local v1    # "startIndex":I
    .local v17, "startIndex":I
    :goto_2
    move/from16 v1, v17

    .end local v15    # "i":I
    .local v1, "i":I
    :goto_3
    if-ge v1, v5, :cond_5

    .line 1251
    aget v15, v12, v1

    cmpg-float v15, v9, v15

    if-gez v15, :cond_4

    .line 1252
    goto :goto_4

    .line 1250
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1255
    :cond_5
    :goto_4
    if-ne v1, v5, :cond_6

    .line 1256
    add-int/lit8 v15, v5, -0x1

    aput v9, v12, v15

    .line 1258
    :cond_6
    nop

    .line 1259
    .end local v2    # "endIndex":I
    .local v1, "endIndex":I
    move/from16 v2, v17

    goto :goto_a

    .line 1260
    .end local v17    # "startIndex":I
    .local v1, "startIndex":I
    .restart local v2    # "endIndex":I
    :cond_7
    const/4 v15, 0x0

    .line 1261
    .restart local v15    # "i":I
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_9

    .line 1262
    aget v17, v12, v15

    cmpg-float v17, v14, v17

    if-gez v17, :cond_8

    .line 1263
    goto :goto_6

    .line 1261
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1266
    :cond_9
    :goto_6
    if-ge v15, v5, :cond_a

    move/from16 v17, v15

    goto :goto_7

    :cond_a
    add-int/lit8 v17, v5, -0x1

    .line 1267
    .end local v2    # "endIndex":I
    .local v17, "endIndex":I
    :goto_7
    move/from16 v2, v17

    .end local v15    # "i":I
    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_c

    .line 1268
    aget v15, v12, v2

    cmpl-float v15, v9, v15

    if-lez v15, :cond_b

    .line 1269
    goto :goto_9

    .line 1267
    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1272
    :cond_c
    :goto_9
    if-gez v2, :cond_d

    .line 1273
    aput v9, v12, v4

    .line 1275
    :cond_d
    move v1, v2

    move/from16 v1, v17

    .line 1277
    .end local v17    # "endIndex":I
    .local v1, "endIndex":I
    .local v2, "startIndex":I
    :goto_a
    iget-boolean v15, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v15, :cond_e

    .line 1278
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    const-string/jumbo v3, "startIndex: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " endIndex: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1277
    :cond_e
    move/from16 v17, v3

    .line 1280
    :goto_b
    add-int/lit8 v3, v5, -0x1

    invoke-static {v2, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1281
    add-int/lit8 v3, v5, -0x1

    invoke-static {v1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    move v15, v1

    move v14, v2

    goto :goto_c

    .line 1234
    .end local v5    # "len":I
    .end local v14    # "oirginBrightness":F
    .local v1, "startIndex":I
    .local v2, "endIndex":I
    :cond_f
    move/from16 v17, v3

    move/from16 v16, v4

    move v14, v1

    move v15, v2

    .line 1284
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    .local v14, "startIndex":I
    .local v15, "endIndex":I
    :goto_c
    array-length v1, v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 1285
    .local v1, "newLux":[F
    array-length v2, v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 1286
    .local v2, "newBrightness":[F
    iget-boolean v3, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_10

    .line 1287
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v3

    const-string/jumbo v4, "unadjusted curve"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1290
    :cond_10
    const/4 v3, 0x0

    .line 1291
    .local v3, "start":I
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    .line 1292
    .local v4, "end":I
    cmpl-float v5, v8, v16

    const-string v6, " end: "

    const-string/jumbo v7, "start: "

    if-eqz v5, :cond_15

    .line 1294
    aget v5, v11, v14

    move/from16 v17, v3

    .end local v3    # "start":I
    .local v17, "start":I
    aget v3, v12, v14

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertPoint([F[FFF)Landroid/util/Pair;

    move-result-object v3

    .line 1296
    .local v3, "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    move-object/from16 v18, v1

    .end local v1    # "newLux":[F
    .local v18, "newLux":[F
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    move-object/from16 v19, v2

    .end local v2    # "newBrightness":[F
    .local v19, "newBrightness":[F
    aget v2, v11, v15

    move-object/from16 v20, v3

    .end local v3    # "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .local v20, "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    aget v3, v12, v15

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertPoint([F[FFF)Landroid/util/Pair;

    move-result-object v1

    .line 1298
    .end local v20    # "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .local v1, "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 1299
    .end local v18    # "newLux":[F
    .local v2, "newLux":[F
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    .line 1300
    .end local v19    # "newBrightness":[F
    .local v3, "newBrightness":[F
    const/4 v5, 0x0

    move-object/from16 v20, v1

    move v1, v5

    move v5, v4

    move/from16 v4, v17

    .end local v17    # "start":I
    .local v1, "i":I
    .local v4, "start":I
    .local v5, "end":I
    .restart local v20    # "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :goto_d
    move-object/from16 v21, v11

    .end local v11    # "controlLux":[F
    .local v21, "controlLux":[F
    array-length v11, v2

    if-ge v1, v11, :cond_13

    .line 1301
    aget v11, v2, v1

    aget v17, v21, v14

    cmpl-float v11, v11, v17

    if-nez v11, :cond_11

    .line 1302
    move v4, v1

    .line 1304
    :cond_11
    aget v11, v2, v1

    aget v17, v21, v15

    cmpl-float v11, v11, v17

    if-nez v11, :cond_12

    .line 1305
    move v5, v1

    .line 1300
    :cond_12
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v21

    goto :goto_d

    :cond_13
    nop

    .line 1308
    .end local v1    # "i":I
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_14

    .line 1309
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v11, "add control point curve"

    invoke-virtual {v1, v11, v2, v3}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    .end local v20    # "originCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_14
    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    goto :goto_e

    .line 1292
    .end local v5    # "end":I
    .end local v21    # "controlLux":[F
    .local v1, "newLux":[F
    .local v2, "newBrightness":[F
    .local v3, "start":I
    .local v4, "end":I
    .restart local v11    # "controlLux":[F
    :cond_15
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v17, v3

    move-object/from16 v21, v11

    .line 1314
    .end local v11    # "controlLux":[F
    .restart local v21    # "controlLux":[F
    :goto_e
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v11, p5

    move/from16 v17, v3

    move/from16 v3, v16

    .end local v3    # "start":I
    .restart local v17    # "start":I
    invoke-static {v11, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1315
    .end local p5    # "adjustment":F
    .local v11, "adjustment":F
    neg-float v3, v11

    invoke-static {v10, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 1316
    .local v3, "gamma":F
    move/from16 v18, v5

    iget-boolean v5, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_16

    .line 1317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v12

    .end local v12    # "controlBrightness":[F
    .local v19, "controlBrightness":[F
    const-string v12, "getAdjustedCurve: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, "^"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v12, v11

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1316
    .end local v19    # "controlBrightness":[F
    .restart local v12    # "controlBrightness":[F
    :cond_16
    move-object/from16 v19, v12

    .line 1319
    .end local v12    # "controlBrightness":[F
    .restart local v19    # "controlBrightness":[F
    :goto_f
    cmpl-float v5, v3, v18

    if-eqz v5, :cond_17

    .line 1320
    add-int/lit8 v5, v17, 0x1

    .local v5, "i":I
    :goto_10
    if-ge v5, v4, :cond_17

    .line 1321
    aget v12, v2, v5

    invoke-static {v12, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v12

    aput v12, v2, v5

    .line 1320
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1324
    .end local v5    # "i":I
    :cond_17
    iget-boolean v5, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_18

    .line 1325
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v5

    const-string v12, "gamma adjusted curve"

    invoke-virtual {v5, v12, v1, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1328
    :cond_18
    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v5, v8, v16

    if-eqz v5, :cond_1d

    .line 1329
    invoke-direct {v0, v1, v2, v8, v9}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertPoint([F[FFF)Landroid/util/Pair;

    move-result-object v12

    .line 1331
    .local v12, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [F

    .line 1332
    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [F

    .line 1333
    const/4 v5, 0x0

    .line 1334
    .local v5, "userIndex":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_11
    move-object/from16 p5, v2

    .end local v2    # "newBrightness":[F
    .local p5, "newBrightness":[F
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 1335
    aget v2, v1, v0

    aget v16, v21, v14

    cmpl-float v2, v2, v16

    if-nez v2, :cond_19

    .line 1336
    move v2, v0

    move/from16 v17, v2

    .line 1338
    :cond_19
    aget v2, v1, v0

    aget v16, v21, v15

    cmpl-float v2, v2, v16

    if-nez v2, :cond_1a

    .line 1339
    move v2, v0

    move v4, v2

    .line 1341
    :cond_1a
    aget v2, v1, v0

    cmpl-float v2, v2, v8

    if-nez v2, :cond_1b

    .line 1342
    move v2, v0

    move v5, v2

    .line 1334
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p5

    goto :goto_11

    :cond_1c
    nop

    .line 1345
    .end local v0    # "i":I
    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move/from16 v16, v3

    move/from16 v3, v17

    .end local v17    # "start":I
    .end local p5    # "newBrightness":[F
    .restart local v2    # "newBrightness":[F
    .local v3, "start":I
    .local v16, "gamma":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->smoothUserCurve([F[FIII)V

    .line 1346
    iget-boolean v8, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v8, :cond_1e

    .line 1347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " userIndex: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v6

    const-string v7, "final curve"

    invoke-virtual {v6, v7, v1, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    goto :goto_12

    .line 1328
    .end local v5    # "userIndex":I
    .end local v12    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .end local v16    # "gamma":F
    .local v3, "gamma":F
    .restart local v17    # "start":I
    :cond_1d
    move/from16 v16, v3

    .end local v3    # "gamma":F
    .restart local v16    # "gamma":F
    move/from16 v3, v17

    .line 1352
    .end local v17    # "start":I
    .local v3, "start":I
    :cond_1e
    :goto_12
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private getUnadjustedBrightness(F)F
    .locals 2
    .param p1, "lux"    # F

    .line 1223
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 1224
    .local v0, "spline":Landroid/util/Spline;
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    return v1
.end method

.method private insertPoint([F[FFF)Landroid/util/Pair;
    .locals 6
    .param p1, "luxLevels"    # [F
    .param p2, "brightnessLevels"    # [F
    .param p3, "lux"    # F
    .param p4, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1357
    const/4 v0, 0x0

    .line 1358
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1359
    aget v1, p1, v0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    .line 1360
    goto :goto_1

    .line 1358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    :goto_1
    move v1, v0

    .line 1366
    .local v1, "idx":I
    array-length v2, p1

    if-ne v1, v2, :cond_2

    .line 1367
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 1368
    .local v2, "newLuxLevels":[F
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1369
    .local v3, "newBrightnessLevels":[F
    aput p3, v2, v1

    .line 1370
    aput p4, v3, v1

    goto :goto_2

    .line 1371
    .end local v2    # "newLuxLevels":[F
    .end local v3    # "newBrightnessLevels":[F
    :cond_2
    aget v2, p1, v1

    cmpl-float v2, v2, p3

    if-nez v2, :cond_3

    .line 1372
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 1373
    .restart local v2    # "newLuxLevels":[F
    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1374
    .restart local v3    # "newBrightnessLevels":[F
    aput p4, v3, v1

    goto :goto_2

    .line 1376
    .end local v2    # "newLuxLevels":[F
    .end local v3    # "newBrightnessLevels":[F
    :cond_3
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 1377
    .restart local v2    # "newLuxLevels":[F
    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1378
    aput p3, v2, v1

    .line 1379
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1380
    .restart local v3    # "newBrightnessLevels":[F
    add-int/lit8 v4, v1, 0x1

    array-length v5, p2

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1382
    aput p4, v3, v1

    .line 1384
    :goto_2
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private smoothUserCurve([F[FIII)V
    .locals 4
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "index"    # I

    .line 1389
    aget v0, p2, p5

    aget v1, p2, p3

    sub-float/2addr v0, v1

    aget v1, p1, p5

    aget v2, p1, p3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 1390
    .local v0, "slope":F
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_0

    .line 1391
    aget v2, p1, v1

    aget v3, p1, p3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    aget v3, p2, p3

    add-float/2addr v2, v3

    aput v2, p2, v1

    .line 1390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1393
    .end local v1    # "i":I
    aget v1, p2, p4

    aget v2, p2, p5

    sub-float/2addr v1, v2

    aget v2, p1, p4

    aget v3, p1, p5

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 1394
    .end local v0    # "slope":F
    .local v1, "slope":F
    move v0, p5

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_1

    .line 1395
    aget v2, p1, v0

    aget v3, p1, p5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    aget v3, p2, p5

    add-float/2addr v2, v3

    aput v2, p2, v0

    .line 1394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1397
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 6
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 1079
    .local v0, "unadjustedBrightness":F
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_0

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 1082
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 1083
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    if-eqz v1, :cond_1

    .line 1089
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mNtPowerBehavior:Lcom/android/server/tracker/INtPowerBehavior;

    float-to-int v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d,%.5f,%.5f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/tracker/INtPowerBehavior;->addUserDataPoint(Ljava/lang/String;)V

    .line 1093
    :cond_1
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 1096
    .local v1, "adjustment":F
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 1097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_2
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1101
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 1102
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 1103
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1106
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/PersistentDataStore;->setUserBrightnessConfig(FF)V

    .line 1107
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1109
    return-void
.end method

.method public clearUserDataPoints()V
    .locals 6

    .line 1119
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 1121
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearUserDataPoints: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " => 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BrightnessMappingStrategy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v3, "clear user data points"

    invoke-virtual {v0, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 1124
    const-string/jumbo v5, "user data point"

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1126
    :cond_1
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1127
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 1128
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 1129
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1132
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->setUserBrightnessConfig(FF)V

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1136
    :cond_2
    return-void
.end method

.method public convertToAdjustedNits(F)F
    .locals 1
    .param p1, "brightness"    # F

    .line 1067
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertBacklightToNits(F)F

    move-result v0

    return v0
.end method

.method public convertToNits(F)F
    .locals 1
    .param p1, "brightness"    # F

    .line 1055
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "hbmTransition"    # F

    .line 1175
    const-string v0, "SimpleMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseGmsAdaptiveBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 1

    .line 1034
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .locals 1
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1019
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    const/4 v0, 0x0

    return-object v0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getBrightnessFromNits(F)F
    .locals 1
    .param p1, "nits"    # F

    .line 1073
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method getMode()I
    .locals 1

    .line 1192
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMode:I

    return v0
.end method

.method getPreset()I
    .locals 1

    .line 1197
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mPreset:I

    return v0
.end method

.method public getShortTermModelTimeout()J
    .locals 2

    .line 964
    iget-wide v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method getUserBrightness()F
    .locals 1

    .line 1207
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    return v0
.end method

.method getUserLux()F
    .locals 1

    .line 1202
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    return v0
.end method

.method public hasUserDataPoints()Z
    .locals 2

    .line 1140
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultConfig()Z
    .locals 2

    .line 1151
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public recalculateSplines(Z[F)V
    .locals 0
    .param p1, "applyAdjustment"    # Z
    .param p2, "adjustment"    # [F

    .line 1171
    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .locals 2
    .param p1, "adjustment"    # F

    .line 1039
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1040
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    return v0

    .line 1043
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1048
    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1049
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1050
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 6
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 975
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 976
    return v1

    .line 978
    :cond_0
    if-nez p1, :cond_1

    .line 979
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 981
    :cond_1
    if-nez p1, :cond_2

    .line 982
    return v1

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    return v1

    .line 987
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_4

    .line 988
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 990
    :cond_4
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 991
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 992
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 993
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    .line 994
    .local v1, "nits":[F
    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 996
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2, v3}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 997
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultBrightness:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 998
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultBrightness:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 997
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    nop

    .end local v2    # "i":I
    goto :goto_2

    .line 1001
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 1002
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertNitsToBacklight(F)F

    move-result v4

    aput v4, v3, v2

    .line 1001
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1006
    .end local v2    # "i":I
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1007
    const/4 v2, 0x1

    return v2
.end method

.method public updateAdaptiveBrightness()V
    .locals 11

    .line 921
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v0

    .line 923
    .local v0, "useGmsAdaptiveBrightness":Z
    if-nez v0, :cond_0

    .line 924
    const-string/jumbo v1, "ro.vendor.display.array.lux"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "ro.vendor.display.array.auto.lux"

    .line 922
    :goto_0
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "luxProp":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 927
    const-string/jumbo v3, "ro.vendor.display.array.backlight"

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "ro.vendor.display.array.auto.backlight"

    .line 925
    :goto_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, "backlightProp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsDefaultLuxArray()[I

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smpropArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 928
    :goto_2
    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smintArrayToFloatArray([I)[F

    move-result-object v4

    .line 930
    .local v4, "lux":[F
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 931
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsDefaultBacklightArray()[I

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smpropArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 932
    .local v5, "brightness":[I
    :goto_3
    array-length v6, v5

    .line 933
    .local v6, "N":I
    new-array v7, v6, [F

    iput-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 934
    new-array v7, v6, [F

    iput-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 935
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 936
    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v9, v4, v7

    aput v9, v8, v7

    .line 937
    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v9, v5, v7

    invoke-static {v9}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeToPowerManagerMax(I)F

    move-result v9

    aput v9, v8, v7

    .line 935
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 940
    .end local v7    # "i":I
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 941
    const-string/jumbo v7, "ro.vendor.display.array.auto.nits"

    goto :goto_5

    :cond_5
    const-string/jumbo v7, "ro.vendor.display.array.nits"

    .line 940
    :goto_5
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, "propNits":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsDefaultNit()[I

    move-result-object v2

    goto :goto_6

    :cond_6
    invoke-static {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smpropArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 942
    :goto_6
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smintArrayToFloatArray([I)[F

    move-result-object v2

    .line 944
    .local v2, "nits":[F
    const/16 v8, 0x48

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-static {v8}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 945
    new-instance v8, Landroid/hardware/display/BrightnessConfiguration$Builder;

    iget-object v9, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    invoke-direct {v8, v9, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 946
    .local v8, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 947
    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 948
    iget-wide v9, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    invoke-virtual {v8, v9, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 949
    invoke-virtual {v8}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v9

    .line 952
    .local v9, "config":Landroid/hardware/display/BrightnessConfiguration;
    iput-object v9, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 953
    iput-object v9, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 954
    .end local v8    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v9    # "config":Landroid/hardware/display/BrightnessConfiguration;
    goto :goto_7

    .line 955
    :cond_7
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 956
    iput-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 958
    :goto_7
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 959
    return-void
.end method
