.class public Lcom/android/server/display/config/EvenDimmerBrightnessData;
.super Ljava/lang/Object;
.source "EvenDimmerBrightnessData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EvenDimmerBrightnessData"


# instance fields
.field public final backlight:[F

.field public final backlightToBrightness:Landroid/util/Spline;

.field public final backlightToNits:Landroid/util/Spline;

.field public final brightness:[F

.field public final brightnessToBacklight:Landroid/util/Spline;

.field public final minLuxToNits:Landroid/util/Spline;

.field public final nits:[F

.field public final nitsToBacklight:Landroid/util/Spline;

.field public final transitionPoint:F


# direct methods
.method public constructor <init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V
    .locals 0
    .param p1, "transitionPoint"    # F
    .param p2, "nits"    # [F
    .param p3, "backlight"    # [F
    .param p4, "brightness"    # [F
    .param p5, "backlightToNits"    # Landroid/util/Spline;
    .param p6, "nitsToBacklight"    # Landroid/util/Spline;
    .param p7, "brightnessToBacklight"    # Landroid/util/Spline;
    .param p8, "backlightToBrightness"    # Landroid/util/Spline;
    .param p9, "minLuxToNits"    # Landroid/util/Spline;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    .line 85
    iput-object p2, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    .line 86
    iput-object p3, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    .line 87
    iput-object p4, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    .line 88
    iput-object p5, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    .line 89
    iput-object p6, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    .line 90
    iput-object p7, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    .line 91
    iput-object p8, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    .line 92
    iput-object p9, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    .line 93
    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;
    .locals 21
    .param p0, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getEvenDimmer()Lcom/android/server/display/config/EvenDimmerMode;

    move-result-object v0

    .line 116
    .local v0, "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    return-object v1

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/config/EvenDimmerMode;->getEnabled()Z

    move-result v2

    .line 121
    .local v2, "lbmIsEnabled":Z
    if-nez v2, :cond_1

    .line 122
    return-object v1

    .line 125
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/config/EvenDimmerMode;->getBrightnessMapping()Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    move-result-object v3

    .line 126
    .local v3, "map":Lcom/android/server/display/config/ComprehensiveBrightnessMap;
    if-nez v3, :cond_2

    .line 127
    return-object v1

    .line 130
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->getBrightnessPoint()Ljava/util/List;

    move-result-object v4

    .line 131
    .local v4, "brightnessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessPoint;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    return-object v1

    .line 135
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v8, v5, [F

    .line 136
    .local v8, "nits":[F
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v9, v5, [F

    .line 137
    .local v9, "backlight":[F
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v10, v5, [F

    .line 139
    .local v10, "brightness":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 140
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/BrightnessPoint;

    .line 141
    .local v6, "val":Lcom/android/server/display/config/BrightnessPoint;
    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    aput v7, v8, v5

    .line 142
    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessPoint;->getBacklight()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    aput v7, v9, v5

    .line 143
    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    aput v7, v10, v5

    .line 139
    .end local v6    # "val":Lcom/android/server/display/config/BrightnessPoint;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 146
    .end local v5    # "i":I
    invoke-virtual {v0}, Lcom/android/server/display/config/EvenDimmerMode;->getTransitionPoint()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    .line 147
    .local v7, "transitionPoint":F
    invoke-virtual {v0}, Lcom/android/server/display/config/EvenDimmerMode;->getLuxToMinimumNitsMap()Lcom/android/server/display/config/NitsMap;

    move-result-object v5

    .line 148
    .local v5, "minimumNitsMap":Lcom/android/server/display/config/NitsMap;
    const-string v6, "EvenDimmerBrightnessData"

    if-nez v5, :cond_5

    .line 149
    const-string v11, "Invalid min lux to nits mapping"

    invoke-static {v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v1

    .line 152
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 155
    .local v11, "size":I
    new-array v12, v11, [F

    .line 156
    .local v12, "minLux":[F
    new-array v13, v11, [F

    .line 158
    .local v13, "minNits":[F
    const/4 v14, 0x0

    .line 159
    .local v14, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v14

    .end local v14    # "i":I
    .local v16, "i":I
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/display/config/Point;

    .line 160
    .local v14, "point":Lcom/android/server/display/config/Point;
    invoke-virtual {v14}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    aput v17, v12, v16

    .line 161
    invoke-virtual {v14}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    aput v17, v13, v16

    .line 162
    if-lez v16, :cond_7

    .line 163
    aget v17, v12, v16

    add-int/lit8 v18, v16, -0x1

    aget v18, v12, v18

    cmpg-float v17, v17, v18

    move-object/from16 v18, v0

    .end local v0    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .local v18, "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    const-string v0, " < "

    if-gez v17, :cond_6

    .line 164
    move-object/from16 v17, v1

    .end local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "lbmIsEnabled":Z
    .local v19, "lbmIsEnabled":Z
    const-string/jumbo v2, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v12, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v16, -0x1

    aget v2, v12, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .end local v19    # "lbmIsEnabled":Z
    .restart local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .restart local v2    # "lbmIsEnabled":Z
    :cond_6
    move-object/from16 v17, v1

    move/from16 v19, v2

    .line 167
    .end local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .end local v2    # "lbmIsEnabled":Z
    .restart local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .restart local v19    # "lbmIsEnabled":Z
    :goto_2
    aget v1, v13, v16

    add-int/lit8 v2, v16, -0x1

    aget v2, v13, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v13, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v16, -0x1

    aget v0, v13, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 162
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .end local v18    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .end local v19    # "lbmIsEnabled":Z
    .restart local v0    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .restart local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .restart local v2    # "lbmIsEnabled":Z
    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    move/from16 v19, v2

    .line 172
    .end local v0    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .end local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .end local v2    # "lbmIsEnabled":Z
    .restart local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .restart local v18    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .restart local v19    # "lbmIsEnabled":Z
    :cond_8
    :goto_3
    nop

    .end local v14    # "point":Lcom/android/server/display/config/Point;
    add-int/lit8 v16, v16, 0x1

    .line 173
    move-object/from16 v1, v17

    move-object/from16 v0, v18

    move/from16 v2, v19

    goto/16 :goto_1

    .line 175
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .end local v18    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .end local v19    # "lbmIsEnabled":Z
    .restart local v0    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .restart local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .restart local v2    # "lbmIsEnabled":Z
    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    move/from16 v19, v2

    .end local v0    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .end local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .end local v2    # "lbmIsEnabled":Z
    .restart local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    .restart local v18    # "lbm":Lcom/android/server/display/config/EvenDimmerMode;
    .restart local v19    # "lbmIsEnabled":Z
    new-instance v6, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    move v0, v11

    .end local v11    # "size":I
    .local v0, "size":I
    new-instance v11, Landroid/util/Spline$LinearSpline;

    invoke-direct {v11, v9, v8}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v1, Landroid/util/Spline$LinearSpline;

    invoke-direct {v1, v8, v9}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v2, Landroid/util/Spline$LinearSpline;

    invoke-direct {v2, v10, v9}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v14, Landroid/util/Spline$LinearSpline;

    invoke-direct {v14, v9, v10}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 180
    invoke-static {v12, v13}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v15

    move-object/from16 v20, v12

    move-object v12, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v13

    move-object v13, v2

    move-object/from16 v2, v20

    .end local v12    # "minLux":[F
    .end local v13    # "minNits":[F
    .local v1, "minLux":[F
    .local v2, "minNits":[F
    invoke-direct/range {v6 .. v15}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 175
    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EvenDimmerBrightnessData {transitionPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", nits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    .line 100
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backlightToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nitsToBacklight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessToBacklight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backlightToBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLuxToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
