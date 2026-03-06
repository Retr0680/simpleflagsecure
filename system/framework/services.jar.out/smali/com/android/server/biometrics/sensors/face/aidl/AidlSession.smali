.class public Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
.super Ljava/lang/Object;
.source "AidlSession.java"


# instance fields
.field private final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field private final mHalInterfaceVersion:I

.field private final mSession:Landroid/hardware/biometrics/face/ISession;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 0
    .param p1, "halInterfaceVersion"    # I
    .param p2, "session"    # Landroid/hardware/biometrics/face/ISession;
    .param p3, "userId"    # I
    .param p4, "aidlResponseHandler"    # Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 44
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 45
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 46
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "aidlResponseHandler"    # Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lvendor/noth/hardware/face/V1_0/IBiometricsFace;",
            ">;I",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "session":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lvendor/noth/hardware/face/V1_0/IBiometricsFace;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 53
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 54
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 55
    return-void
.end method


# virtual methods
.method public getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-object v0
.end method

.method public getSession()Landroid/hardware/biometrics/face/ISession;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    return v0
.end method

.method public hasContextMethods()Z
    .locals 2

    .line 75
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallback()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    check-cast v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->setCallback(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 91
    :cond_0
    return-void
.end method

.method public supportsFaceEnrollOptions()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
