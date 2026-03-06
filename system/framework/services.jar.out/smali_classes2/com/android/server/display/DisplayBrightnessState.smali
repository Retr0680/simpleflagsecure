.class public final Lcom/android/server/display/DisplayBrightnessState;
.super Ljava/lang/Object;
.source "DisplayBrightnessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayBrightnessState$Builder;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_NOT_SET:F = -1.0f

.field public static final CUSTOM_ANIMATION_RATE_NOT_SET:F = -1.0f


# instance fields
.field private final mBrightness:F

.field private final mBrightnessAdjustmentFlag:I

.field private final mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field private mBrightnessMaxReason:I

.field private final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field private final mCustomAnimationRate:F

.field private final mDisplayBrightnessStrategyName:Ljava/lang/String;

.field private final mHdrBrightness:F

.field private final mIsSlowChange:Z

.field private final mIsUserInitiatedChange:Z

.field private final mMaxBrightness:F

.field private final mMinBrightness:F

.field private final mShouldUpdateScreenBrightnessSetting:Z

.field private final mShouldUseAutoBrightness:Z


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 59
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getHdrBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    .line 60
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getShouldUseAutoBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 63
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->isSlowChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 64
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 65
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMinBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 66
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getCustomAnimationRate()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->shouldUpdateScreenBrightnessSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 68
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 69
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessAdjustmentFlag()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 70
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->isUserInitiatedChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 71
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessMaxReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;Lcom/android/server/display/DisplayBrightnessState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-void
.end method

.method public static builder()Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 1

    .line 246
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 206
    return v0

    .line 209
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/DisplayBrightnessState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 210
    return v2

    .line 213
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayBrightnessState;

    .line 215
    .local v1, "otherState":Lcom/android/server/display/DisplayBrightnessState;
    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v4

    cmpl-float v3, v3, v4

    nop

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    .line 216
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v4

    cmpl-float v3, v3, v4

    nop

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 217
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 219
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 220
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v4

    nop

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 221
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v4

    nop

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 222
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v4

    cmpl-float v3, v3, v4

    nop

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 223
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v4

    cmpl-float v3, v3, v4

    nop

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 224
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v4

    cmpl-float v3, v3, v4

    nop

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 226
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v4

    nop

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 227
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 228
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v4

    nop

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 229
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v4

    nop

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    .line 230
    invoke-virtual {v1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 215
    :goto_0
    return v0
.end method

.method public getBrightness()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    return v0
.end method

.method public getBrightnessAdjustmentFlag()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    return v0
.end method

.method public getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    return-object v0
.end method

.method public getBrightnessMaxReason()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    return v0
.end method

.method public getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object v0
.end method

.method public getCustomAnimationRate()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    return v0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHdrBrightness()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    return v0
.end method

.method public getMaxBrightness()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    return v0
.end method

.method public getMinBrightness()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    return v0
.end method

.method public getShouldUseAutoBrightness()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    return v0
.end method

.method public hashCode()I
    .locals 14

    .line 235
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 237
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSlowChange()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    return v0
.end method

.method public isUserInitiatedChange()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    return v0
.end method

.method public shouldUpdateScreenBrightnessSetting()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayBrightnessState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "\n    brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n    hdrBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\n    brightnessReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n    shouldUseAutoBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\n    isSlowChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "\n    maxBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "\n    minBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "\n    customAnimationRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "\n    shouldUpdateScreenBrightnessSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n    mBrightnessEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 192
    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\n    mBrightnessAdjustmentFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "\n    mIsUserInitiatedChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "\n    mBrightnessMaxReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    .line 196
    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
