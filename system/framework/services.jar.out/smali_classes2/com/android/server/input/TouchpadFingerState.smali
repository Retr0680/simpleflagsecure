.class public final Lcom/android/server/input/TouchpadFingerState;
.super Ljava/lang/Object;
.source "TouchpadFingerState.java"


# instance fields
.field private final mOrientation:F

.field private final mPositionX:F

.field private final mPositionY:F

.field private final mPressure:F

.field private final mTouchMajor:F

.field private final mTouchMinor:F

.field private final mTrackingId:I

.field private final mWidthMajor:F

.field private final mWidthMinor:F


# direct methods
.method public constructor <init>(FFFFFFFFI)V
    .locals 0
    .param p1, "touchMajor"    # F
    .param p2, "touchMinor"    # F
    .param p3, "widthMajor"    # F
    .param p4, "widthMinor"    # F
    .param p5, "pressure"    # F
    .param p6, "orientation"    # F
    .param p7, "positionX"    # F
    .param p8, "positionY"    # F
    .param p9, "trackingId"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMajor:F

    .line 135
    iput p2, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMinor:F

    .line 136
    iput p3, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMajor:F

    .line 137
    iput p4, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMinor:F

    .line 138
    iput p5, p0, Lcom/android/server/input/TouchpadFingerState;->mPressure:F

    .line 139
    iput p6, p0, Lcom/android/server/input/TouchpadFingerState;->mOrientation:F

    .line 140
    iput p7, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionX:F

    .line 141
    iput p8, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionY:F

    .line 142
    iput p9, p0, Lcom/android/server/input/TouchpadFingerState;->mTrackingId:I

    .line 145
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    return-void
.end method


# virtual methods
.method public getOrientation()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mOrientation:F

    return v0
.end method

.method public getPositionX()F
    .locals 1

    .line 202
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionY:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mPressure:F

    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMajor:F

    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMinor:F

    return v0
.end method

.method public getTrackingId()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mTrackingId:I

    return v0
.end method

.method public getWidthMajor()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMajor:F

    return v0
.end method

.method public getWidthMinor()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMinor:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchpadFingerState { touchMajor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMajor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchMinor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMinor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthMajor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMajor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthMinor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMinor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pressure = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mOrientation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", positionX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", positionY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mTrackingId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
