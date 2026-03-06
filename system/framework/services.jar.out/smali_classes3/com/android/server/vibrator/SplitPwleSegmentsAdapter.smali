.class final Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;
.super Ljava/lang/Object;
.source "SplitPwleSegmentsAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static splitPwleSegment(Landroid/os/vibrator/PwleSegment;I)Ljava/util/List;
    .locals 21
    .param p0, "pwleSegment"    # Landroid/os/vibrator/PwleSegment;
    .param p1, "splits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/vibrator/PwleSegment;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/PwleSegment;",
            ">;"
        }
    .end annotation

    .line 79
    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v1, "pwleSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwleSegment;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    .line 81
    .local v2, "startFrequencyHz":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v7

    .line 82
    .local v7, "endFrequencyHz":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v3

    int-to-long v5, v0

    div-long v10, v3, v5

    .line 83
    .local v10, "splitDuration":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v3

    .line 84
    .local v3, "previousAmplitude":F
    move v4, v2

    .line 85
    .local v4, "previousFrequencyHz":F
    const-wide/16 v5, 0x0

    .line 87
    .local v5, "accumulatedDuration":J
    const/4 v8, 0x1

    move v15, v4

    move v4, v3

    move-wide v12, v5

    .end local v3    # "previousAmplitude":F
    .end local v5    # "accumulatedDuration":J
    .local v4, "previousAmplitude":F
    .local v8, "i":I
    .local v12, "accumulatedDuration":J
    .local v15, "previousFrequencyHz":F
    :goto_0
    if-ge v8, v0, :cond_0

    .line 88
    add-long v5, v12, v10

    .line 89
    .end local v12    # "accumulatedDuration":J
    .restart local v5    # "accumulatedDuration":J
    long-to-float v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v12

    long-to-float v9, v12

    div-float/2addr v3, v9

    .line 90
    .local v3, "durationRatio":F
    nop

    .line 91
    invoke-static {v2, v7, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v16

    .line 92
    .local v16, "interpolatedFrequency":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v9

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v12

    .line 92
    invoke-static {v9, v12, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    .line 94
    .local v14, "interpolatedAmplitude":F
    new-instance v12, Landroid/os/vibrator/PwleSegment;

    long-to-int v9, v10

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "startFrequencyHz":F
    .end local v3    # "durationRatio":F
    .local v19, "startFrequencyHz":F
    .local v20, "durationRatio":F
    int-to-long v2, v9

    move-wide/from16 v17, v2

    move v13, v4

    .end local v4    # "previousAmplitude":F
    .local v13, "previousAmplitude":F
    invoke-direct/range {v12 .. v18}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    .line 98
    .end local v13    # "previousAmplitude":F
    .restart local v4    # "previousAmplitude":F
    .local v12, "pwleSplit":Landroid/os/vibrator/PwleSegment;
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v12}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v4

    .line 100
    invoke-virtual {v12}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v15

    .line 87
    .end local v12    # "pwleSplit":Landroid/os/vibrator/PwleSegment;
    .end local v14    # "interpolatedAmplitude":F
    .end local v16    # "interpolatedFrequency":F
    .end local v20    # "durationRatio":F
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v19

    move-wide v12, v5

    goto :goto_0

    .end local v5    # "accumulatedDuration":J
    .end local v19    # "startFrequencyHz":F
    .restart local v2    # "startFrequencyHz":F
    .local v12, "accumulatedDuration":J
    :cond_0
    move/from16 v19, v2

    .line 103
    .end local v2    # "startFrequencyHz":F
    .end local v8    # "i":I
    .restart local v19    # "startFrequencyHz":F
    new-instance v3, Landroid/os/vibrator/PwleSegment;

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v5

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v8

    sub-long/2addr v8, v12

    long-to-int v2, v8

    int-to-long v8, v2

    move v6, v15

    .end local v15    # "previousFrequencyHz":F
    .local v6, "previousFrequencyHz":F
    invoke-direct/range {v3 .. v9}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    .line 103
    .end local v6    # "previousFrequencyHz":F
    .restart local v15    # "previousFrequencyHz":F
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-object v1
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 8
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

    .line 44
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    nop

    .line 45
    const-wide/16 v0, 0x1000

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    return p3

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectDurationMillis()I

    move-result v0

    .line 50
    .local v0, "maxPwleDuration":I
    if-gtz v0, :cond_1

    .line 52
    return p3

    .line 55
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 56
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 57
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/vibrator/PwleSegment;

    const/4 v5, 0x1

    nop

    if-eqz v4, :cond_4

    check-cast v3, Landroid/os/vibrator/PwleSegment;

    .line 60
    .local v3, "pwleSegment":Landroid/os/vibrator/PwleSegment;
    invoke-virtual {v3}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v6

    long-to-int v4, v6

    add-int/2addr v4, v0

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    .line 61
    .local v4, "splits":I
    if-gt v4, v5, :cond_2

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    invoke-static {v3, v4}, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;->splitPwleSegment(Landroid/os/vibrator/PwleSegment;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 66
    add-int/lit8 v6, v4, -0x1

    .line 67
    .local v6, "addedSegments":I
    if-le p3, v2, :cond_3

    .line 68
    add-int/2addr p3, v6

    .line 70
    :cond_3
    add-int/2addr v2, v6

    .line 71
    add-int/2addr v1, v6

    .line 56
    .end local v3    # "pwleSegment":Landroid/os/vibrator/PwleSegment;
    .end local v4    # "splits":I
    .end local v6    # "addedSegments":I
    :cond_4
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_5
    nop

    .line 74
    .end local v2    # "i":I
    return p3
.end method
