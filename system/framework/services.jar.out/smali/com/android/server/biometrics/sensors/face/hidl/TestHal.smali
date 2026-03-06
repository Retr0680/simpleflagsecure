.class public Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
.super Lvendor/noth/hardware/face/V1_0/IBiometricsFace$Stub;
.source "TestHal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "face.hidl.TestHal"


# instance fields
.field private mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

.field private final mContext:Landroid/content/Context;

.field private final mSensorId:I

.field private mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I

    .line 56
    invoke-direct {p0}, Lvendor/noth/hardware/face/V1_0/IBiometricsFace$Stub;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    .line 59
    return-void
.end method


# virtual methods
.method public authenticate(J)I
    .locals 2
    .param p1, "operationId"    # J

    .line 158
    const-string v0, "face.hidl.TestHal"

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    .line 122
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 2
    .param p2, "timeoutSec"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 86
    .local p1, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p3, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "face.hidl.TestHal"

    const-string v1, "enroll"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public enroll_with_extension(Ljava/util/ArrayList;ILjava/util/ArrayList;Landroid/os/NativeHandle;)I
    .locals 2
    .param p2, "timeoutSec"    # I
    .param p4, "previewSurface"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/NativeHandle;",
            ")I"
        }
    .end annotation

    .line 177
    .local p1, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p3, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "face.hidl.TestHal"

    const-string v1, "enroll_with_extension"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public enumerate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const-string v0, "face.hidl.TestHal"

    const-string v1, "enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v3, v4, v2, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    .line 131
    :cond_0
    return v1
.end method

.method public generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 3
    .param p1, "challengeTimeoutSec"    # I

    .line 77
    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 79
    .local v0, "result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 80
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 81
    return-object v0
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 3

    .line 110
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 111
    .local v0, "result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 112
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 113
    return-object v0
.end method

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 2
    .param p1, "feature"    # I
    .param p2, "faceId"    # I

    .line 102
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    .line 103
    .local v0, "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    .line 105
    return-object v0
.end method

.method public getFeature_with_extension(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 2
    .param p1, "feature"    # I
    .param p2, "faceId"    # I

    .line 184
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    .line 185
    .local v0, "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    .line 187
    return-object v0
.end method

.method public remove(I)I
    .locals 7
    .param p1, "faceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v0, :cond_2

    .line 138
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 140
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 141
    invoke-virtual {v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v3, "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/Face;

    .line 144
    .local v5, "face":Landroid/hardware/face/Face;
    invoke-virtual {v5}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v5    # "face":Landroid/hardware/face/Face;
    goto :goto_0

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {v4, v0, v1, v3, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    .line 147
    .end local v2    # "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    .end local v3    # "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    new-instance v3, Ljava/util/ArrayList;

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 148
    invoke-interface {v2, v0, v1, v3, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    .line 153
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .line 169
    .local p1, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "resetLockout"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public revokeChallenge()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "storePath"    # Ljava/lang/String;

    .line 71
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2
    .param p1, "clientCallback"    # Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 64
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 65
    .local v0, "result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 66
    new-instance v1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object v1
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .locals 1
    .param p1, "feature"    # I
    .param p2, "enabled"    # Z
    .param p4, "faceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)I"
        }
    .end annotation

    .line 97
    .local p3, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setFeature_with_extension(IZLjava/util/ArrayList;I)I
    .locals 1
    .param p1, "feature"    # I
    .param p2, "enabled"    # Z
    .param p4, "faceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)I"
        }
    .end annotation

    .line 192
    .local p3, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public userActivity()I
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method
