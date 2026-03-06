.class final Lcom/android/server/vibrator/PrimitiveDelayAdapter;
.super Ljava/lang/Object;
.source "PrimitiveDelayAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static calculateEffectDuration(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)I
    .locals 5
    .param p0, "info"    # Landroid/os/VibratorInfo;
    .param p1, "segment"    # Landroid/os/vibrator/VibrationEffectSegment;

    .line 99
    invoke-virtual {p1, p0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v0

    .line 100
    .local v0, "segmentDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 102
    const/4 v2, 0x0

    return v2

    .line 104
    :cond_0
    long-to-int v2, v0

    .line 105
    .local v2, "effectDuration":I
    instance-of v3, p1, Landroid/os/vibrator/PrimitiveSegment;

    nop

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/os/vibrator/PrimitiveSegment;

    .line 107
    .local v3, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    invoke-virtual {v3}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v4

    sub-int/2addr v2, v4

    .line 109
    .end local v3    # "primitive":Landroid/os/vibrator/PrimitiveSegment;
    :cond_1
    return v2
.end method

.method private static calculatePause(Landroid/os/vibrator/PrimitiveSegment;I)I
    .locals 2
    .param p0, "primitive"    # Landroid/os/vibrator/PrimitiveSegment;
    .param p1, "previousStartOffset"    # I

    .line 92
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v0

    add-int/2addr v0, p1

    return v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v0

    return v0
.end method

.method private static toPrimitiveWithPause(Landroid/os/vibrator/PrimitiveSegment;I)Landroid/os/vibrator/PrimitiveSegment;
    .locals 4
    .param p0, "primitive"    # Landroid/os/vibrator/PrimitiveSegment;
    .param p1, "pause"    # I

    .line 113
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    return-object v0
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

    .line 45
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    nop

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "previousStartOffset":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 50
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 51
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 52
    .local v3, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    if-ne v2, p3, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :cond_0
    instance-of v4, v3, Landroid/os/vibrator/PrimitiveSegment;

    nop

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrimitiveSegment;

    .line 58
    .local v4, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v4, v0}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->calculatePause(Landroid/os/vibrator/PrimitiveSegment;I)I

    move-result v5

    .line 65
    .local v5, "pause":I
    if-ltz v5, :cond_2

    .line 66
    invoke-static {v4, v5}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->toPrimitiveWithPause(Landroid/os/vibrator/PrimitiveSegment;I)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1, v4}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->calculateEffectDuration(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)I

    move-result v6

    neg-int v0, v6

    goto :goto_2

    .line 71
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    if-le p3, v2, :cond_3

    .line 73
    add-int/lit8 p3, p3, -0x1

    .line 75
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 76
    add-int/lit8 v2, v2, -0x1

    .line 85
    move v0, v5

    goto :goto_2

    .line 60
    .end local v4    # "primitive":Landroid/os/vibrator/PrimitiveSegment;
    .end local v5    # "pause":I
    :cond_4
    :goto_1
    invoke-static {p1, v3}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->calculateEffectDuration(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)I

    move-result v4

    neg-int v0, v4

    .line 61
    nop

    .line 50
    .end local v3    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 88
    .end local v2    # "i":I
    return p3
.end method
