.class public Lcom/android/server/display/config/HighBrightnessModeData;
.super Ljava/lang/Object;
.source "HighBrightnessModeData.java"


# static fields
.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "HighBrightnessModeData"


# instance fields
.field public final allowInLowPowerMode:Z

.field public final isHighBrightnessModeEnabled:Z

.field public final minimumHdrPercentOfScreen:F

.field public final minimumLux:F

.field public final refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

.field public final sdrToHdrRatioSpline:Landroid/util/Spline;

.field public final timeMaxMillis:J

.field public final timeMinMillis:J

.field public final timeWindowMillis:J

.field public final transitionPoint:F


# direct methods
.method public constructor <init>(FFJJJZFLandroid/util/Spline;Landroid/view/SurfaceControl$RefreshRateRange;Z)V
    .locals 0
    .param p1, "minimumLux"    # F
    .param p2, "transitionPoint"    # F
    .param p3, "timeWindowMillis"    # J
    .param p5, "timeMaxMillis"    # J
    .param p7, "timeMinMillis"    # J
    .param p9, "allowInLowPowerMode"    # Z
    .param p10, "minimumHdrPercentOfScreen"    # F
    .param p11, "sdrToHdrRatioSpline"    # Landroid/util/Spline;
    .param p12, "refreshRateLimit"    # Landroid/view/SurfaceControl$RefreshRateRange;
    .param p13, "isHighBrightnessModeEnabled"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    .line 73
    iput p2, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    .line 74
    iput-wide p3, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    .line 75
    iput-wide p5, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    .line 76
    iput-wide p7, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    .line 77
    iput-boolean p9, p0, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 78
    iput p10, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 79
    iput-object p11, p0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 80
    iput-object p12, p0, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 81
    iput-boolean p13, p0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    .line 82
    return-void
.end method

.method public static loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HighBrightnessModeData;
    .locals 36
    .param p0, "config"    # Lcom/android/server/display/config/DisplayConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/config/DisplayConfiguration;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/display/config/HighBrightnessMode;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/android/server/display/config/HighBrightnessModeData;"
        }
    .end annotation

    .line 105
    .local p1, "transitionPointProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/display/config/HighBrightnessMode;Ljava/lang/Float;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v0

    .line 106
    .local v0, "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    const/4 v1, 0x0

    .line 107
    .local v1, "minimumLux":F
    const/4 v2, 0x0

    .line 108
    .local v2, "transitionPoint":F
    const-wide/16 v3, 0x0

    .line 109
    .local v3, "timeWindowMillis":J
    const-wide/16 v5, 0x0

    .line 110
    .local v5, "timeMaxMillis":J
    const-wide/16 v7, 0x0

    .line 111
    .local v7, "timeMinMillis":J
    const/4 v9, 0x0

    .line 112
    .local v9, "allowInLowPowerMode":Z
    const/high16 v10, 0x3f000000    # 0.5f

    .line 113
    .local v10, "minimumHdrPercentOfScreen":F
    const/4 v11, 0x0

    .line 114
    .local v11, "sdrToHdrRatioSpline":Landroid/util/Spline;
    const/4 v12, 0x0

    .line 115
    .local v12, "refreshRateLimit":Landroid/view/SurfaceControl$RefreshRateRange;
    const/4 v13, 0x0

    .line 117
    .local v13, "isEnabled":Z
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 119
    move-object/from16 v14, p1

    invoke-interface {v14, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 120
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v15

    .line 121
    .local v15, "hbmTiming":Lcom/android/server/display/config/HbmTiming;
    invoke-virtual {v15}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v3, v16, v18

    .line 122
    invoke-virtual {v15}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    mul-long v5, v16, v18

    .line 123
    invoke-virtual {v15}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    mul-long v7, v16, v18

    .line 124
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v9

    .line 125
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object v16

    .line 126
    .local v16, "minHdrPctOfScreen":Ljava/math/BigDecimal;
    if-eqz v16, :cond_2

    .line 127
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    .line 128
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, v10, v17

    if-gtz v17, :cond_0

    const/16 v17, 0x0

    cmpg-float v17, v10, v17

    if-gez v17, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-object/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    .line 129
    :goto_0
    move-object/from16 v17, v0

    .end local v0    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .local v17, "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1    # "minimumLux":F
    .local v18, "minimumLux":F
    const-string v1, "Invalid minimum HDR percent of screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighBrightnessModeData"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_1

    .line 126
    .end local v17    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v18    # "minimumLux":F
    .restart local v0    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v1    # "minimumLux":F
    :cond_2
    move-object/from16 v17, v0

    move/from16 v18, v1

    .line 135
    .end local v0    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v1    # "minimumLux":F
    .restart local v17    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v18    # "minimumLux":F
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/config/HighBrightnessModeData;->loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v11

    .line 136
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v0

    .line 137
    .local v0, "rr":Lcom/android/server/display/config/RefreshRateRange;
    if-eqz v0, :cond_3

    .line 138
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 139
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v20, v0

    .end local v0    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .local v20, "rr":Lcom/android/server/display/config/RefreshRateRange;
    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v19

    move/from16 v21, v2

    .end local v2    # "transitionPoint":F
    .local v21, "transitionPoint":F
    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->floatValue()F

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    move-object v12, v1

    goto :goto_2

    .line 137
    .end local v20    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .end local v21    # "transitionPoint":F
    .restart local v0    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .restart local v2    # "transitionPoint":F
    :cond_3
    move-object/from16 v20, v0

    move/from16 v21, v2

    .line 141
    .end local v0    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .end local v2    # "transitionPoint":F
    .restart local v20    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .restart local v21    # "transitionPoint":F
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v13

    move/from16 v23, v18

    move/from16 v24, v21

    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    move-wide/from16 v29, v7

    move/from16 v31, v9

    move/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    goto :goto_3

    .line 117
    .end local v15    # "hbmTiming":Lcom/android/server/display/config/HbmTiming;
    .end local v16    # "minHdrPctOfScreen":Ljava/math/BigDecimal;
    .end local v17    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .end local v18    # "minimumLux":F
    .end local v20    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .end local v21    # "transitionPoint":F
    .local v0, "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v1    # "minimumLux":F
    .restart local v2    # "transitionPoint":F
    :cond_4
    move-object/from16 v14, p1

    move-object/from16 v17, v0

    .end local v0    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    .restart local v17    # "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    move/from16 v23, v1

    move/from16 v24, v2

    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    move-wide/from16 v29, v7

    move/from16 v31, v9

    move/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    .line 143
    .end local v1    # "minimumLux":F
    .end local v2    # "transitionPoint":F
    .end local v3    # "timeWindowMillis":J
    .end local v5    # "timeMaxMillis":J
    .end local v7    # "timeMinMillis":J
    .end local v9    # "allowInLowPowerMode":Z
    .end local v10    # "minimumHdrPercentOfScreen":F
    .end local v11    # "sdrToHdrRatioSpline":Landroid/util/Spline;
    .end local v12    # "refreshRateLimit":Landroid/view/SurfaceControl$RefreshRateRange;
    .end local v13    # "isEnabled":Z
    .local v23, "minimumLux":F
    .local v24, "transitionPoint":F
    .local v25, "timeWindowMillis":J
    .local v27, "timeMaxMillis":J
    .local v29, "timeMinMillis":J
    .local v31, "allowInLowPowerMode":Z
    .local v32, "minimumHdrPercentOfScreen":F
    .local v33, "sdrToHdrRatioSpline":Landroid/util/Spline;
    .local v34, "refreshRateLimit":Landroid/view/SurfaceControl$RefreshRateRange;
    .local v35, "isEnabled":Z
    :goto_3
    new-instance v22, Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-direct/range {v22 .. v35}, Lcom/android/server/display/config/HighBrightnessModeData;-><init>(FFJJJZFLandroid/util/Spline;Landroid/view/SurfaceControl$RefreshRateRange;Z)V

    return-object v22
.end method

.method private static loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .locals 4
    .param p0, "hbmConfig"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object v0

    .line 151
    .local v0, "sdrHdrRatioMap":Lcom/android/server/display/config/SdrHdrRatioMap;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    return-object v1

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBM{minLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, timeMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, timeMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, allowInLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSdrToHdrRatioSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRateLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHighBrightnessModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
