.class final Lcom/android/server/vibrator/PrimitiveSegmentsValidator;
.super Ljava/lang/Object;
.source "PrimitiveSegmentsValidator.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .locals 4
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

    .line 39
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    .local v0, "segmentCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/vibrator/PrimitiveSegment;

    nop

    if-eqz v3, :cond_0

    check-cast v2, Landroid/os/vibrator/PrimitiveSegment;

    .line 44
    .local v2, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    nop

    .line 46
    invoke-virtual {v2}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    const/4 v3, 0x0

    return v3

    .line 40
    .end local v2    # "primitive":Landroid/os/vibrator/PrimitiveSegment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 57
    .end local v1    # "i":I
    const/4 v1, 0x1

    return v1
.end method
