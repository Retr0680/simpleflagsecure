.class final Lcom/android/server/vibrator/SplitSegmentsAdapter;
.super Ljava/lang/Object;
.source "SplitSegmentsAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .locals 1
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "frequencyHz"    # F

    .line 110
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return p1

    .line 113
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private static splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;
    .locals 19
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "ramp"    # Landroid/os/vibrator/RampSegment;
    .param p2, "splits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Landroid/os/vibrator/RampSegment;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation

    .line 78
    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v2, "ramps":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/RampSegment;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/vibrator/SplitSegmentsAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v3

    .line 81
    .local v3, "startFrequencyHz":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/vibrator/SplitSegmentsAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v9

    .line 82
    .local v9, "endFrequencyHz":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    int-to-long v6, v1

    div-long v11, v4, v6

    .line 83
    .local v11, "splitDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v4

    .line 84
    .local v4, "previousAmplitude":F
    move v5, v3

    .line 85
    .local v5, "previousFrequencyHz":F
    const-wide/16 v6, 0x0

    .line 87
    .local v6, "accumulatedDuration":J
    const/4 v8, 0x1

    move v14, v4

    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v4    # "previousAmplitude":F
    .end local v5    # "previousFrequencyHz":F
    .end local v6    # "accumulatedDuration":J
    .local v8, "i":I
    .local v14, "previousAmplitude":F
    .local v16, "previousFrequencyHz":F
    .local v17, "accumulatedDuration":J
    :goto_0
    if-ge v8, v1, :cond_0

    .line 88
    add-long v4, v17, v11

    .line 89
    .end local v17    # "accumulatedDuration":J
    .local v4, "accumulatedDuration":J
    long-to-float v6, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v6, v0

    .line 90
    .local v6, "durationRatio":F
    nop

    .line 91
    invoke-static {v3, v9, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v17

    .line 92
    .local v17, "interpolatedFrequency":F
    nop

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    invoke-static {v0, v1, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v15

    .line 94
    .local v15, "interpolatedAmplitude":F
    new-instance v13, Landroid/os/vibrator/RampSegment;

    long-to-int v0, v11

    move/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 98
    .local v13, "rampSplit":Landroid/os/vibrator/RampSegment;
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v13}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v14

    .line 100
    invoke-virtual {v13}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v16

    .line 87
    .end local v6    # "durationRatio":F
    .end local v13    # "rampSplit":Landroid/os/vibrator/RampSegment;
    .end local v15    # "interpolatedAmplitude":F
    .end local v17    # "interpolatedFrequency":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v17, v4

    goto :goto_0

    .end local v4    # "accumulatedDuration":J
    .local v17, "accumulatedDuration":J
    :cond_0
    nop

    .line 103
    .end local v8    # "i":I
    new-instance v5, Landroid/os/vibrator/RampSegment;

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v7

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v0

    sub-long v0, v0, v17

    long-to-int v10, v0

    move v6, v14

    move/from16 v8, v16

    .end local v14    # "previousAmplitude":F
    .end local v16    # "previousFrequencyHz":F
    .local v6, "previousAmplitude":F
    .local v8, "previousFrequencyHz":F
    invoke-direct/range {v5 .. v10}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 103
    .end local v6    # "previousAmplitude":F
    .end local v8    # "previousFrequencyHz":F
    .restart local v14    # "previousAmplitude":F
    .restart local v16    # "previousFrequencyHz":F
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v2
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 7
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p3, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 43
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const-wide/16 v0, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    return p3

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    move-result v0

    .line 48
    .local v0, "maxRampDuration":I
    if-gtz v0, :cond_1

    .line 50
    return p3

    .line 53
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 55
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/RampSegment;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/RampSegment;

    .line 59
    .local v3, "ramp":Landroid/os/vibrator/RampSegment;
    invoke-virtual {v3}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v5, v0

    sub-int/2addr v5, v4

    div-int/2addr v5, v0

    .line 60
    .local v5, "splits":I
    if-gt v5, v4, :cond_3

    .line 61
    goto :goto_1

    .line 63
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-static {p1, v3, v5}, Lcom/android/server/vibrator/SplitSegmentsAdapter;->splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 65
    add-int/lit8 v6, v5, -0x1

    .line 66
    .local v6, "addedSegments":I
    if-le p3, v2, :cond_4

    .line 67
    add-int/2addr p3, v6

    .line 69
    :cond_4
    add-int/2addr v2, v6

    .line 70
    add-int/2addr v1, v6

    .line 54
    .end local v3    # "ramp":Landroid/os/vibrator/RampSegment;
    .end local v5    # "splits":I
    .end local v6    # "addedSegments":I
    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    nop

    .line 73
    .end local v2    # "i":I
    return p3
.end method
