.class public final Lcom/android/server/input/TouchpadHardwareState;
.super Ljava/lang/Object;
.source "TouchpadHardwareState.java"


# instance fields
.field private final mButtonsDown:I

.field private final mFingerCount:I

.field private final mFingerStates:[Lcom/android/server/input/TouchpadFingerState;

.field private final mTimestamp:F

.field private final mTouchCount:I


# direct methods
.method public constructor <init>(FIII[Lcom/android/server/input/TouchpadFingerState;)V
    .locals 3
    .param p1, "timestamp"    # F
    .param p2, "buttonsDown"    # I
    .param p3, "fingerCount"    # I
    .param p4, "touchCount"    # I
    .param p5, "fingerStates"    # [Lcom/android/server/input/TouchpadFingerState;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareState;->mTimestamp:F

    .line 100
    iput p2, p0, Lcom/android/server/input/TouchpadHardwareState;->mButtonsDown:I

    .line 101
    iput p3, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerCount:I

    .line 102
    iput p4, p0, Lcom/android/server/input/TouchpadHardwareState;->mTouchCount:I

    .line 103
    iput-object p5, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerStates:[Lcom/android/server/input/TouchpadFingerState;

    .line 104
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerStates:[Lcom/android/server/input/TouchpadFingerState;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    return-void
.end method


# virtual methods
.method public getButtonsDown()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareState;->mButtonsDown:I

    return v0
.end method

.method public getFingerCount()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerCount:I

    return v0
.end method

.method public getFingerStates()[Lcom/android/server/input/TouchpadFingerState;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerStates:[Lcom/android/server/input/TouchpadFingerState;

    return-object v0
.end method

.method public getTimestamp()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareState;->mTimestamp:F

    return v0
.end method

.method public getTouchCount()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/server/input/TouchpadHardwareState;->mTouchCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchpadHardwareState { timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareState;->mTimestamp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", buttonsDown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareState;->mButtonsDown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fingerCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareState;->mTouchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fingerStates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/TouchpadHardwareState;->mFingerStates:[Lcom/android/server/input/TouchpadFingerState;

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method
