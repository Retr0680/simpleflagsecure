.class public Lcom/android/server/display/DisplayBrightnessState$Builder;
.super Ljava/lang/Object;
.source "DisplayBrightnessState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayBrightnessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBrightness:F

.field private mBrightnessAdjustmentFlag:I

.field private mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field private mBrightnessMaxReason:I

.field private mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field private mCustomAnimationRate:F

.field private mDisplayBrightnessStrategyName:Ljava/lang/String;

.field private mHdrBrightness:F

.field private mIsSlowChange:Z

.field private mIsUserInitiatedChange:Z

.field private mMaxBrightness:F

.field private mMinBrightness:F

.field private mShouldUpdateScreenBrightnessSetting:Z

.field private mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mHdrBrightness:F

    .line 255
    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v1}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 259
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    .line 261
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 266
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    return-void
.end method

.method public static from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 2
    .param p0, "state"    # Lcom/android/server/display/DisplayBrightnessState;

    .line 276
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 277
    .local v0, "builder":Lcom/android/server/display/DisplayBrightnessState$Builder;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUseAutoBrightness(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 282
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 283
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMinBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 285
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 286
    nop

    .line 287
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 288
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessAdjustmentFlag(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 290
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 291
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 292
    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 475
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;Lcom/android/server/display/DisplayBrightnessState-IA;)V

    return-object v0
.end method

.method public getBrightness()F
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    return v0
.end method

.method public getBrightnessAdjustmentFlag()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    return v0
.end method

.method public getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    return-object v0
.end method

.method public getBrightnessMaxReason()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    return v0
.end method

.method public getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object v0
.end method

.method public getCustomAnimationRate()F
    .locals 1

    .line 452
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    return v0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHdrBrightness()F
    .locals 1

    .line 317
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mHdrBrightness:F

    return v0
.end method

.method public getMaxBrightness()F
    .locals 1

    .line 422
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    return v0
.end method

.method public getMinBrightness()F
    .locals 1

    .line 437
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    return v0
.end method

.method public getShouldUseAutoBrightness()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    return v0
.end method

.method public isSlowChange()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    return v0
.end method

.method public isUserInitiatedChange()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    return v0
.end method

.method public setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "brightness"    # F

    .line 309
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 310
    return-object p0
.end method

.method public setBrightnessAdjustmentFlag(I)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "brightnessAdjustmentFlag"    # I

    .line 506
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 507
    return-object p0
.end method

.method public setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "brightnessEvent"    # Lcom/android/server/display/brightness/BrightnessEvent;

    .line 490
    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 491
    return-object p0
.end method

.method public setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "brightnessMaxReason"    # I

    .line 537
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    .line 538
    return-object p0
.end method

.method public setBrightnessReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 1
    .param p1, "brightnessReason"    # I

    .line 356
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0, p1}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "brightnessReason"    # Lcom/android/server/display/brightness/BrightnessReason;

    .line 345
    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 346
    return-object p0
.end method

.method public setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "animationRate"    # F

    .line 444
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    .line 445
    return-object p0
.end method

.method public setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "displayBrightnessStrategyName"    # Ljava/lang/String;

    .line 376
    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "hdrBrightness"    # F

    .line 327
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mHdrBrightness:F

    .line 328
    return-object p0
.end method

.method public setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "isSlowChange"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    .line 400
    return-object p0
.end method

.method public setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "isUserInitiatedChange"    # Z

    .line 521
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    .line 522
    return-object p0
.end method

.method public setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "maxBrightness"    # F

    .line 414
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    .line 415
    return-object p0
.end method

.method public setMinBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "minBrightness"    # F

    .line 429
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    .line 430
    return-object p0
.end method

.method public setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "shouldUpdateScreenBrightnessSetting"    # Z

    .line 467
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 468
    return-object p0
.end method

.method public setShouldUseAutoBrightness(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0
    .param p1, "shouldUseAutoBrightness"    # Z

    .line 384
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    .line 385
    return-object p0
.end method

.method public shouldUpdateScreenBrightnessSetting()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    return v0
.end method
