.class final Lcom/android/server/vibrator/HalVibration;
.super Lcom/android/server/vibrator/Vibration;
.source "HalVibration.java"


# instance fields
.field private mAdaptiveScale:F

.field private final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mEffectToPlay:Landroid/os/CombinedVibration;

.field public final mFallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalEffect:Landroid/os/CombinedVibration;

.field private mScaleLevel:I


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V
    .locals 2
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p2, "effect"    # Landroid/os/CombinedVibration;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 69
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 70
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    .line 73
    return-void
.end method

.method private fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V
    .locals 3
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            "Ljava/util/function/IntFunction<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "fallbackProvider":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Landroid/os/VibrationEffect;>;"
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 190
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    goto :goto_2

    .line 191
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_3

    .line 192
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 193
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 194
    .local v0, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-direct {p0, v2, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 197
    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_2

    .line 198
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 199
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-direct {p0, v2, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .end local v1    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method private fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V
    .locals 8
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "Ljava/util/function/IntFunction<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p2, "fallbackProvider":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Landroid/os/VibrationEffect;>;"
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 214
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v1, p1}, Lcom/nothing/server/ext/INtVibratorManager;->isRichtapVibEffect(Landroid/os/VibrationEffect;)Z

    .line 217
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 218
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 219
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 220
    .local v3, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v4, v3, Landroid/os/vibrator/PrebakedSegment;

    nop

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    .local v4, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v5

    invoke-interface {p2, v5}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationEffect;

    .line 222
    .local v5, "fallback":Landroid/os/VibrationEffect;
    if-eqz v5, :cond_0

    .line 223
    iget-object v6, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    .end local v3    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v4    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v5    # "fallback":Landroid/os/VibrationEffect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 227
    .end local v2    # "i":I
    return-void

    .line 209
    .end local v0    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v1    # "segmentCount":I
    :cond_2
    return-void
.end method


# virtual methods
.method public adaptToDevice(Landroid/os/CombinedVibration$VibratorAdapter;)Z
    .locals 2
    .param p1, "deviceAdapter"    # Landroid/os/CombinedVibration$VibratorAdapter;

    .line 133
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0, p1}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 134
    .local v0, "adaptedEffect":Landroid/os/CombinedVibration;
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iput-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 143
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public canPipelineWith(Lcom/android/server/vibrator/HalVibration;Landroid/util/SparseArray;I)Z
    .locals 5
    .param p1, "vib"    # Lcom/android/server/vibrator/HalVibration;
    .param p3, "durationThresholdMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/HalVibration;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 164
    .local p2, "vibratorInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibratorInfo;>;"
    nop

    .line 166
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    .line 167
    .local v0, "effectDuration":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 171
    return v3

    .line 173
    :cond_0
    nop

    .line 182
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v4, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    nop

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 183
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 184
    invoke-virtual {v2, v4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 182
    :goto_0
    return v3
.end method

.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 1
    .param p1, "endInfo"    # Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    return-void
.end method

.method public fillFallbacks(Ljava/util/function/IntFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "fallbackProvider":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Landroid/os/VibrationEffect;>;"
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    .line 101
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 10

    .line 155
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    :goto_0
    move-object v7, v0

    .line 156
    .local v7, "originalEffect":Landroid/os/CombinedVibration;
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 157
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->findVibrationType(Landroid/os/CombinedVibration;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v6, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    iget v8, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    iget v9, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    .line 156
    return-object v1
.end method

.method public getEffectToPlay()Landroid/os/CombinedVibration;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    return-object v0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 92
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V
    .locals 5
    .param p1, "scaler"    # Lcom/android/server/vibrator/VibrationScaler;

    .line 107
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 110
    .local v0, "vibrationUsage":I
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    .line 112
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget v2, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VibrationStats;->reportAdaptiveScale(F)V

    .line 115
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibrationScaler;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration;->transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;

    move-result-object v1

    .line 116
    .local v1, "newEffect":Landroid/os/CombinedVibration;
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iput-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 121
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {p1, v4, v0}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 124
    .end local v2    # "i":I
    return-void
.end method

.method public waitForEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 84
    return-void
.end method
