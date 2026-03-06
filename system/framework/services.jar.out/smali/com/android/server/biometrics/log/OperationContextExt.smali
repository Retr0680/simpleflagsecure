.class public Lcom/android/server/biometrics/log/OperationContextExt;
.super Ljava/lang/Object;
.source "OperationContextExt.java"


# instance fields
.field private final mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

.field private mDockState:I

.field private mFoldState:I

.field private final mIsBP:Z

.field private mIsDisplayOn:Z

.field private final mIsMandatoryBiometrics:Z

.field private mOrientation:I

.field private mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/common/OperationContext;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "isBP"    # Z
    .param p3, "modality"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V
    .locals 2
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;
    .param p2, "isBP"    # Z
    .param p3, "modality"    # I
    .param p4, "isMandatoryBiometrics"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 49
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 50
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 51
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 77
    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 78
    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    .line 79
    iput-boolean p4, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    .line 81
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    new-instance v1, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    invoke-direct {v1}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;-><init>()V

    invoke-static {v1}, Landroid/hardware/biometrics/common/OperationState;->fingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)Landroid/hardware/biometrics/common/OperationState;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    goto :goto_0

    .line 84
    :cond_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    new-instance v1, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    invoke-direct {v1}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;-><init>()V

    invoke-static {v1}, Landroid/hardware/biometrics/common/OperationState;->faceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)Landroid/hardware/biometrics/common/OperationState;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isBP"    # Z

    .line 57
    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZI)V

    .line 58
    return-void
.end method

.method public constructor <init>(ZIZ)V
    .locals 1
    .param p1, "isBP"    # Z
    .param p2, "modality"    # I
    .param p3, "isMandatoryBiometrics"    # Z

    .line 66
    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "isBP"    # Z
    .param p2, "isMandatoryBiometrics"    # Z

    .line 61
    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    .line 62
    return-void
.end method

.method private getAuthReason(Landroid/hardware/face/FaceAuthenticateOptions;)I
    .locals 1
    .param p1, "options"    # Landroid/hardware/face/FaceAuthenticateOptions;

    .line 167
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAuthenticateReason()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 187
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 185
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 183
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 181
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 179
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 177
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 175
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 173
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 171
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 169
    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAuthReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I
    .locals 1
    .param p1, "options"    # Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method private getWakeReason(Landroid/hardware/face/FaceAuthenticateOptions;)I
    .locals 1
    .param p1, "options"    # Landroid/hardware/face/FaceAuthenticateOptions;

    .line 195
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getWakeReason()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 211
    :sswitch_0
    const/16 v0, 0x9

    return v0

    .line 209
    :sswitch_1
    const/16 v0, 0x8

    return v0

    .line 207
    :sswitch_2
    const/4 v0, 0x7

    return v0

    .line 205
    :sswitch_3
    const/4 v0, 0x6

    return v0

    .line 203
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 201
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 199
    :sswitch_6
    const/4 v0, 0x2

    return v0

    .line 197
    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x4 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private getWakeReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I
    .locals 1
    .param p1, "options"    # Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method private setFirstSessionId(Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 2
    .param p1, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;

    .line 356
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getBiometricPromptSessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 358
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object v1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 360
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 v1, 0x1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 361
    return-void

    .line 364
    :cond_0
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getKeyguardEntrySessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object v1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 v1, 0x2

    iput-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 368
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 375
    return-void
.end method

.method private static toAidlDisplayState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 329
    packed-switch p0, :pswitch_data_0

    .line 339
    const/4 v0, 0x0

    return v0

    .line 331
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 337
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 335
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 333
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toAidlFoldState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 344
    packed-switch p0, :pswitch_data_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 346
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 348
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 350
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDisplayState()I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v0, v0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    return v0
.end method

.method public getDockState()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    return v0
.end method

.method public getFoldState()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v0, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    return v0
.end method

.method public getIsMandatoryBiometrics()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    return v0
.end method

.method public getOperationState()Landroid/hardware/biometrics/common/OperationState;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object v0, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    return-object v0
.end method

.method public getOrderAndIncrement()I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 243
    .local v0, "info":Lcom/android/server/biometrics/log/BiometricContextSessionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getOrderAndIncrement()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getOrientation()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    return v0
.end method

.method public getReason()B
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-byte v0, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return v0
.end method

.method public getWakeReason()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v0, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    return v0
.end method

.method public isAod()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v0, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    return v0
.end method

.method public isCrypto()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v0, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    return v0
.end method

.method public isDisplayOn()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    return v0
.end method

.method public toAidlContext()Landroid/hardware/biometrics/common/OperationContext;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object v0
.end method

.method public toAidlContext(Landroid/hardware/biometrics/AuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .locals 2
    .param p1, "options"    # Landroid/hardware/biometrics/AuthenticateOptions;

    .line 118
    instance-of v0, p1, Landroid/hardware/face/FaceAuthenticateOptions;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/hardware/face/FaceAuthenticateOptions;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext(Landroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    instance-of v0, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p1

    check-cast v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authenticate options are invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toAidlContext(Landroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .locals 2
    .param p1, "options"    # Landroid/hardware/face/FaceAuthenticateOptions;

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getAuthReason(Landroid/hardware/face/FaceAuthenticateOptions;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->faceAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason(Landroid/hardware/face/FaceAuthenticateOptions;)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object v0
.end method

.method public toAidlContext(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .locals 2
    .param p1, "options"    # Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 152
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 154
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->vendorAuthenticateReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getAuthReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->fingerprintAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object v0
.end method

.method update(Lcom/android/server/biometrics/log/BiometricContext;Z)Lcom/android/server/biometrics/log/OperationContextExt;
    .locals 2
    .param p1, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p2, "isCrypto"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isAod()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 308
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getDisplayState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlDisplayState(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    .line 309
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getFoldState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlFoldState(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->foldState:I

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-boolean p2, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object v0, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object v0, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    invoke-virtual {v0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object v0, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    invoke-virtual {v0}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object v0

    .line 315
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isHardwareIgnoringTouches()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    .line 317
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->setFirstSessionId(Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 319
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isDisplayOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 320
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getDockedState()I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 321
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getFoldState()I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 322
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getCurrentRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 324
    return-object p0
.end method
