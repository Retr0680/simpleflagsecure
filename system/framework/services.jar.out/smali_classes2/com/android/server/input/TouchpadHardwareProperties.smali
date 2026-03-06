.class public Lcom/android/server/input/TouchpadHardwareProperties;
.super Ljava/lang/Object;
.source "TouchpadHardwareProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/TouchpadHardwareProperties$Builder;
    }
.end annotation


# instance fields
.field private mBottom:F

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
.method constructor <init>(FFFFFFFFSZZZ)V
    .locals 1
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
    .param p12, "reportsPressure"    # Z

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    .line 150
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mLeft:F

    .line 151
    iput p2, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mTop:F

    .line 152
    iput p3, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mRight:F

    .line 153
    iput p4, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mBottom:F

    .line 154
    iput p5, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResX:F

    .line 155
    iput p6, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResY:F

    .line 156
    iput p7, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMinimum:F

    .line 157
    iput p8, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMaximum:F

    .line 158
    iput-short p9, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mMaxFingerCount:S

    .line 159
    iput-boolean p10, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsButtonPad:Z

    .line 160
    iput-boolean p11, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsHapticPad:Z

    .line 161
    iput-boolean p12, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    .line 164
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 195
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mBottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mLeft:F

    return v0
.end method

.method public getMaxFingerCount()S
    .locals 1

    .line 238
    iget-short v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mMaxFingerCount:S

    return v0
.end method

.method public getOrientationMaximum()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMaximum:F

    return v0
.end method

.method public getOrientationMinimum()F
    .locals 1

    .line 221
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMinimum:F

    return v0
.end method

.method public getResX()F
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResX:F

    return v0
.end method

.method public getResY()F
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResY:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .line 187
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mRight:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mTop:F

    return v0
.end method

.method public isIsButtonPad()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsButtonPad:Z

    return v0
.end method

.method public isIsHapticPad()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsHapticPad:Z

    return v0
.end method

.method public isReportsPressure()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HardwareProperties{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientationMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientationMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxFingerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mMaxFingerCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isButtonPad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsButtonPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHapticPad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsHapticPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reportsPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
