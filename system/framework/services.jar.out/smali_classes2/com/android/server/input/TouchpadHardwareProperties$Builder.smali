.class public Lcom/android/server/input/TouchpadHardwareProperties$Builder;
.super Ljava/lang/Object;
.source "TouchpadHardwareProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/TouchpadHardwareProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBottom:F

.field private mBuilderFieldsSet:J

.field private mIsButtonPad:Z

.field private mIsHapticPad:Z

.field private mLeft:F

.field private mMaxFingerCount:S

.field private mOrientationMaximum:F

.field private mOrientationMinimum:F

.field private mReportsPressure:Z

.field private mResX:F

.field private mResY:F

.field private mRight:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFFFFFFSZZ)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "resX"    # F
    .param p6, "resY"    # F
    .param p7, "orientationMinimum"    # F
    .param p8, "orientationMaximum"    # F
    .param p9, "maxFingerCount"    # S
    .param p10, "isButtonPad"    # Z
    .param p11, "isHapticPad"    # Z

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 334
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mLeft:F

    .line 335
    iput p2, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mTop:F

    .line 336
    iput p3, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mRight:F

    .line 337
    iput p4, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBottom:F

    .line 338
    iput p5, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mResX:F

    .line 339
    iput p6, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mResY:F

    .line 340
    iput p7, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mOrientationMinimum:F

    .line 341
    iput p8, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mOrientationMaximum:F

    .line 342
    iput-short p9, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mMaxFingerCount:S

    .line 343
    iput-boolean p10, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mIsButtonPad:Z

    .line 344
    iput-boolean p11, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mIsHapticPad:Z

    .line 345
    return-void
.end method

.method private checkNotUsed()V
    .locals 4

    .line 510
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/server/input/TouchpadHardwareProperties;
    .locals 14

    .line 487
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 488
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 490
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mReportsPressure:Z

    .line 493
    :cond_0
    new-instance v1, Lcom/android/server/input/TouchpadHardwareProperties;

    iget v2, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mLeft:F

    iget v3, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mTop:F

    iget v4, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mRight:F

    iget v5, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBottom:F

    iget v6, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mResX:F

    iget v7, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mResY:F

    iget v8, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mOrientationMinimum:F

    iget v9, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mOrientationMaximum:F

    iget-short v10, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mMaxFingerCount:S

    iget-boolean v11, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mIsButtonPad:Z

    iget-boolean v12, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mIsHapticPad:Z

    iget-boolean v13, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mReportsPressure:Z

    invoke-direct/range {v1 .. v13}, Lcom/android/server/input/TouchpadHardwareProperties;-><init>(FFFFFFFFSZZZ)V

    .line 506
    .local v1, "o":Lcom/android/server/input/TouchpadHardwareProperties;
    return-object v1
.end method

.method public setBottom(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 385
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 386
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 387
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBottom:F

    .line 388
    return-object p0
.end method

.method public setIsButtonPad(Z)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 456
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 457
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 458
    iput-boolean p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mIsButtonPad:Z

    .line 459
    return-object p0
.end method

.method public setIsHapticPad(Z)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 468
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 469
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 470
    iput-boolean p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mIsHapticPad:Z

    .line 471
    return-object p0
.end method

.method public setLeft(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 352
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 353
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 354
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mLeft:F

    .line 355
    return-object p0
.end method

.method public setMaxFingerCount(S)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # S

    .line 443
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 444
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 445
    iput-short p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mMaxFingerCount:S

    .line 446
    return-object p0
.end method

.method public setOrientationMaximum(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 431
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 432
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 433
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mOrientationMaximum:F

    .line 434
    return-object p0
.end method

.method public setOrientationMinimum(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 420
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 421
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 422
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mOrientationMinimum:F

    .line 423
    return-object p0
.end method

.method public setReportsPressure(Z)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 479
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 480
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 481
    iput-boolean p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mReportsPressure:Z

    .line 482
    return-object p0
.end method

.method public setResX(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 397
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 398
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 399
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mResX:F

    .line 400
    return-object p0
.end method

.method public setResY(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 409
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 410
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 411
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mResY:F

    .line 412
    return-object p0
.end method

.method public setRight(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 374
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 375
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 376
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mRight:F

    .line 377
    return-object p0
.end method

.method public setTop(F)Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    .locals 4
    .param p1, "value"    # F

    .line 363
    invoke-direct {p0}, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->checkNotUsed()V

    .line 364
    iget-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mBuilderFieldsSet:J

    .line 365
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties$Builder;->mTop:F

    .line 366
    return-object p0
.end method
