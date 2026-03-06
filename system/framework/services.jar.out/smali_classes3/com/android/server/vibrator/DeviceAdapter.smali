.class final Lcom/android/server/vibrator/DeviceAdapter;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/os/CombinedVibration$VibratorAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAdapter"


# instance fields
.field private final mAvailableVibratorIds:[I

.field private final mAvailableVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSegmentAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSegmentsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mSegmentsValidators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSegmentsValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/server/vibrator/VibrationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/VibrationSettings;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "vibrators":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/vibrator/VibratorController;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/vibrator/PrimitiveDelayAdapter;

    invoke-direct {v0}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;-><init>()V

    new-instance v1, Lcom/android/server/vibrator/RampToStepAdapter;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/RampToStepAdapter;-><init>(I)V

    new-instance v2, Lcom/android/server/vibrator/StepToRampAdapter;

    invoke-direct {v2}, Lcom/android/server/vibrator/StepToRampAdapter;-><init>()V

    new-instance v3, Lcom/android/server/vibrator/RampDownAdapter;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/vibrator/RampDownAdapter;-><init>(II)V

    new-instance v4, Lcom/android/server/vibrator/SplitSegmentsAdapter;

    invoke-direct {v4}, Lcom/android/server/vibrator/SplitSegmentsAdapter;-><init>()V

    new-instance v5, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;

    invoke-direct {v5}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;-><init>()V

    new-instance v6, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;

    invoke-direct {v6}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;-><init>()V

    new-instance v7, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;

    invoke-direct {v7}, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;-><init>()V

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/android/server/vibrator/PwleSegmentsValidator;

    invoke-direct {v0}, Lcom/android/server/vibrator/PwleSegmentsValidator;-><init>()V

    new-instance v1, Lcom/android/server/vibrator/PrimitiveSegmentsValidator;

    invoke-direct {v1}, Lcom/android/server/vibrator/PrimitiveSegmentsValidator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    .line 81
    iput-object p2, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 86
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method public adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 8
    .param p1, "vibratorId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 99
    instance-of v0, p2, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 104
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 105
    .local v1, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v1, :cond_0

    .line 107
    return-object p2

    .line 110
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    .line 111
    .local v2, "info":Landroid/os/VibratorInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v3, "newSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v4

    .line 114
    .local v4, "newRepeatIndex":I
    iget-object v5, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 115
    .local v5, "adapterCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 116
    iget-object v7, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 117
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    invoke-interface {v7, v2, v3, v4}, Lcom/android/server/vibrator/VibrationSegmentsAdapter;->adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    move-result v4

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 122
    .end local v6    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 123
    iget-object v7, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentsValidators:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/VibrationSegmentsValidator;

    invoke-interface {v7, v2, v3}, Lcom/android/server/vibrator/VibrationSegmentsValidator;->hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 124
    const/4 v7, 0x0

    return-object v7

    .line 122
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 128
    .end local v6    # "i":I
    new-instance v6, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v6, v3, v4}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v6

    .line 101
    .end local v0    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v1    # "controller":Lcom/android/server/vibrator/VibratorController;
    .end local v2    # "info":Landroid/os/VibratorInfo;
    .end local v3    # "newSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .end local v4    # "newRepeatIndex":I
    .end local v5    # "adapterCount":I
    :cond_4
    return-object p2
.end method

.method public getAvailableVibratorIds()[I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    return-object v0
.end method

.method getAvailableVibrators()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    return-object v0
.end method
