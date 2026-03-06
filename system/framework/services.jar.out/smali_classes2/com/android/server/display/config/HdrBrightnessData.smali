.class public Lcom/android/server/display/config/HdrBrightnessData;
.super Ljava/lang/Object;
.source "HdrBrightnessData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdrBrightnessData"


# instance fields
.field public final allowInLowPowerMode:Z

.field public final brightnessDecreaseDebounceMillis:J

.field public final brightnessIncreaseDebounceMillis:J

.field public final hbmTransitionPoint:F

.field public final highestHdrSdrRatio:F

.field public final maxBrightnessLimits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final minimumHdrPercentOfScreenForHbm:F

.field public final minimumHdrPercentOfScreenForNbm:F

.field public final screenBrightnessRampDecrease:F

.field public final screenBrightnessRampIncrease:F

.field public final sdrToHdrRatioSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V
    .locals 0
    .param p2, "brightnessIncreaseDebounceMillis"    # J
    .param p4, "screenBrightnessRampIncrease"    # F
    .param p5, "brightnessDecreaseDebounceMillis"    # J
    .param p7, "screenBrightnessRampDecrease"    # F
    .param p8, "hbmTransitionPoint"    # F
    .param p9, "minimumHdrPercentOfScreenForNbm"    # F
    .param p10, "minimumHdrPercentOfScreenForHbm"    # F
    .param p11, "allowInLowPowerMode"    # Z
    .param p12, "sdrToHdrRatioSpline"    # Landroid/util/Spline;
    .param p13, "highestHdrSdrRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;JFJFFFFZ",
            "Landroid/util/Spline;",
            "F)V"
        }
    .end annotation

    .line 138
    .local p1, "maxBrightnessLimits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    .line 140
    iput-wide p2, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    .line 141
    iput p4, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    .line 142
    iput-wide p5, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    .line 143
    iput p7, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    .line 144
    iput p8, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    .line 145
    iput p9, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    .line 146
    iput p10, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    .line 147
    iput-boolean p11, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    .line 148
    iput-object p12, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 149
    iput p13, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    .line 150
    return-void
.end method

.method private static getFallbackData(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;
    .locals 15
    .param p0, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/config/HighBrightnessMode;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/display/config/HighBrightnessMode;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/android/server/display/config/HdrBrightnessData;"
        }
    .end annotation

    .line 223
    .local p1, "transitionPointProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/config/HighBrightnessMode;Ljava/lang/Float;>;"
    if-nez p0, :cond_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHdrPercent(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v10

    .line 227
    .local v10, "fallbackPercent":F
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackSdrHdrRatioSpline(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v13

    .line 228
    .local v13, "fallbackSpline":Landroid/util/Spline;
    new-instance v1, Lcom/android/server/display/config/HdrBrightnessData;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 231
    invoke-static/range {p0 .. p1}, Lcom/android/server/display/config/HdrBrightnessData;->getTransitionPoint(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)F

    move-result v9

    .line 233
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHighestSdrHdrRatio(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v14

    const-wide/16 v3, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const-wide/16 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v12, 0x0

    move v11, v10

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V

    .line 228
    return-object v1
.end method

.method private static getFallbackHdrPercent(Lcom/android/server/display/config/HighBrightnessMode;)F
    .locals 2
    .param p0, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 237
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, "minHdrPctOfScreen":Ljava/math/BigDecimal;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    goto :goto_1

    .line 239
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 238
    :goto_1
    return v1
.end method

.method private static getFallbackHighestSdrHdrRatio(Lcom/android/server/display/config/HighBrightnessMode;)F
    .locals 3
    .param p0, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 274
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 275
    .local v0, "fallbackMap":Lcom/android/server/display/config/SdrHdrRatioMap;
    :goto_0
    if-nez v0, :cond_1

    .line 276
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 278
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result v1

    return v1
.end method

.method private static getFallbackSdrHdrRatioSpline(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .locals 4
    .param p0, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 255
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 256
    .local v1, "fallbackMap":Lcom/android/server/display/config/SdrHdrRatioMap;
    :goto_0
    if-nez v1, :cond_1

    .line 257
    return-object v0

    .line 259
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object v0

    return-object v0
.end method

.method private static getHighestSdrHdrRatio(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)F
    .locals 3
    .param p0, "hdrConfig"    # Lcom/android/server/display/config/HdrBrightnessConfig;
    .param p1, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/display/config/HdrBrightnessConfig;->getSdrHdrRatioMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v0

    .line 266
    .local v0, "sdrHdrRatioMap":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    if-nez v0, :cond_0

    .line 267
    invoke-static {p1}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHighestSdrHdrRatio(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v1

    return v1

    .line 269
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result v1

    return v1
.end method

.method private static getSdrHdrRatioSpline(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .locals 4
    .param p0, "hdrConfig"    # Lcom/android/server/display/config/HdrBrightnessConfig;
    .param p1, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/config/HdrBrightnessConfig;->getSdrHdrRatioMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v0

    .line 246
    .local v0, "sdrHdrRatioMap":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    if-nez v0, :cond_0

    .line 247
    invoke-static {p1}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackSdrHdrRatioSpline(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object v1

    return-object v1
.end method

.method private static getTransitionPoint(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)F
    .locals 1
    .param p0, "hbm"    # Lcom/android/server/display/config/HighBrightnessMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/config/HighBrightnessMode;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/display/config/HighBrightnessMode;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 213
    .local p1, "transitionPointProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/config/HighBrightnessMode;Ljava/lang/Float;>;"
    if-nez p0, :cond_0

    .line 214
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 216
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;
    .locals 19
    .param p0, "config"    # Lcom/android/server/display/config/DisplayConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/config/DisplayConfiguration;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/display/config/HighBrightnessMode;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/android/server/display/config/HdrBrightnessData;"
        }
    .end annotation

    .line 175
    .local p1, "transitionPointProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/config/HighBrightnessMode;Ljava/lang/Float;>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v1

    .line 176
    .local v1, "hbmConfig":Lcom/android/server/display/config/HighBrightnessMode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHdrBrightnessConfig()Lcom/android/server/display/config/HdrBrightnessConfig;

    move-result-object v2

    .line 177
    .local v2, "hdrConfig":Lcom/android/server/display/config/HdrBrightnessConfig;
    if-nez v2, :cond_0

    .line 178
    invoke-static {v1, v0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackData(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v3

    return-object v3

    .line 181
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getBrightnessMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v6, v4

    .line 183
    .local v6, "brightnessLimits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 184
    .local v5, "point":Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;
    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getFirst()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getSecond()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v5    # "point":Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForHbm()Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForHbm()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    move v15, v4

    goto :goto_1

    .line 189
    :cond_2
    invoke-static {v1}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHdrPercent(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v4

    move v15, v4

    :goto_1
    nop

    .line 191
    .local v15, "minHdrPercentForHbm":F
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForNbm()Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 192
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForNbm()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    move v14, v4

    goto :goto_2

    :cond_3
    move v14, v15

    .line 194
    .local v14, "minHdrPercentForNbm":F
    :goto_2
    cmpl-float v4, v14, v15

    if-gtz v4, :cond_4

    .line 199
    new-instance v5, Lcom/android/server/display/config/HdrBrightnessData;

    .line 200
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getBrightnessIncreaseDebounceMillis()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    .line 201
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getScreenBrightnessRampIncrease()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    .line 202
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getBrightnessDecreaseDebounceMillis()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 203
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getScreenBrightnessRampDecrease()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 204
    invoke-static {v1, v0}, Lcom/android/server/display/config/HdrBrightnessData;->getTransitionPoint(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)F

    move-result v13

    .line 205
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getAllowInLowPowerMode()Z

    move-result v16

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/display/config/HdrBrightnessData;->getSdrHdrRatioSpline(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v17

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/display/config/HdrBrightnessData;->getHighestSdrHdrRatio(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v18

    invoke-direct/range {v5 .. v18}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V

    .line 199
    return-object v5

    .line 195
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "minHdrPercentForHbm should be >= minHdrPercentForNbm"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrBrightnessData {mMaxBrightnessLimits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessIncreaseDebounceMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrightnessRampIncrease: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDecreaseDebounceMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrightnessRampDecrease: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transitionPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreenForNbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreenForHbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", allowInLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdrToHdrRatioSpline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highestHdrSdrRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
