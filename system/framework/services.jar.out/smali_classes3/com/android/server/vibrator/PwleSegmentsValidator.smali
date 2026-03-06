.class final Lcom/android/server/vibrator/PwleSegmentsValidator;
.super Ljava/lang/Object;
.source "PwleSegmentsValidator.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .locals 8
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)Z"
        }
    .end annotation

    .line 51
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    const-wide/16 v0, 0x1000

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    .line 52
    .local v0, "hasPwleCapability":Z
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v1

    .line 53
    .local v1, "minFrequency":F
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result v2

    .line 55
    .local v2, "maxFrequency":F
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 56
    .local v4, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v5, v4, Landroid/os/vibrator/BasicPwleSegment;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 57
    return v6

    .line 59
    :cond_0
    instance-of v5, v4, Landroid/os/vibrator/PwleSegment;

    nop

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/os/vibrator/PwleSegment;

    .line 60
    .local v5, "pwleSegment":Landroid/os/vibrator/PwleSegment;
    if-eqz v0, :cond_1

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v7

    cmpg-float v7, v7, v1

    if-ltz v7, :cond_1

    .line 61
    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v7

    cmpl-float v7, v7, v2

    if-gtz v7, :cond_1

    .line 62
    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v7

    cmpg-float v7, v7, v1

    if-ltz v7, :cond_1

    .line 63
    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_2

    .line 64
    :cond_1
    return v6

    .line 67
    .end local v4    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v5    # "pwleSegment":Landroid/os/vibrator/PwleSegment;
    :cond_2
    goto :goto_0

    .line 69
    :cond_3
    const/4 v3, 0x1

    return v3
.end method
