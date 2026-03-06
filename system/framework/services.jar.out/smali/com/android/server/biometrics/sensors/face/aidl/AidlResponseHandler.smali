.class public Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
.super Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.source "AidlResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AidlResponseHandler"


# instance fields
.field private final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field private final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field private final mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field private final mContext:Landroid/content/Context;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$0gbCsAk06ZULzasyP9fGHei9YqY(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentsEnumerated$10(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/EnumerateConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1CnXY_UtDpe1OXC4l2wbghIh5dk(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$handleResponse$20(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$28RAQo1lWTUB-4BoqPBPebWKxMw(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JLcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Hqi0iJFFkhaaj-bmtku_3wqokQ(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onLockoutChanged$19(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ay8_VmKwbe21S3wxdRFvX-uvrTw(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentsEnumerated$11(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEae8ZphlmOl3n33QjMvIBJeOd8(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JPZVomc-TsUv8oPTWqJRPNHePJo(Landroid/hardware/face/Face;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onAuthenticationFailed$7(Landroid/hardware/face/Face;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJqAtHAO1sAJ8HoUMcR-C0QqWbY(Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onFeatureSet$13(Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NW6hyQNngRK8IwEQRxH3ChDkFnQ(Landroid/hardware/biometrics/face/EnrollmentFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentFrame$3(Landroid/hardware/biometrics/face/EnrollmentFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QF83JYjDjolHkowMrLXV5XNE-Mo(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onAcquired$18(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Slz3Vvzcu-eOR7TsJCT0QvS26K0(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentsRemoved$15(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-myBNGfhWcUy8BDk69tvKhWxNQ(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentsRemoved$14(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/RemovalConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7K_BsIF1n7FggRN_unuSxBcyy4(Landroid/hardware/biometrics/face/AuthenticationFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onAuthenticationFrame$2(Landroid/hardware/biometrics/face/AuthenticationFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmkUriCWl17aIQ7o-YQ61sQ5Zmk(JLcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onAuthenticatorIdInvalidated$17(JLcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_6owfz4ghJTa36StgpISWG8tiA(JLcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onAuthenticatorIdRetrieved$16(JLcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iId0imr_aEB7ndbttpp0lLsmkNM([BLcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onFeaturesRetrieved$12([BLcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJFvIK43YWd6HYhViabb2eNKAUo(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JLcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onChallengeRevoked$1(JLcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s3ZpbjO5-QyadcQQaQ-StXkyqTk(Landroid/hardware/face/Face;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onAuthenticationSucceeded$6(Landroid/hardware/face/Face;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYDjGT_S1VyOAkKtupvtOJKzBSM(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Landroid/hardware/face/Face;ILcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentProgress$5(Landroid/hardware/face/Face;ILcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7Bwx-vmwy2K5YB7bDZAd2wz48s(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onLockoutCleared$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrEhMdT1KoD3DRTFLOClafsIdI0(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onLockoutTimed$8(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/face/FaceUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduler"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .param p3, "sensorId"    # I
    .param p4, "userId"    # I
    .param p5, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutTracker;
    .param p6, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p7, "authSessionCoordinator"    # Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
    .param p8, "aidlResponseHandlerCallback"    # Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;
    .param p9, "biometricUtils"    # Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 92
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 95
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 96
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 97
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 98
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 99
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 100
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 106
    return-void
.end method

.method private handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 414
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 415
    return-void
.end method

.method private handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/biometrics/sensors/BaseClientMonitor;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "actionIfClassMatchesClient":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p3, "alternateAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/biometrics/sensors/BaseClientMonitor;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method

.method private synthetic lambda$handleResponse$20(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "className"    # Ljava/lang/Class;
    .param p2, "actionIfClassMatchesClient"    # Ljava/util/function/Consumer;
    .param p3, "alternateAction"    # Ljava/util/function/Consumer;

    .line 421
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 422
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AidlResponseHandler"

    if-eqz v1, :cond_0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleResponse: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " actionIfClassMatchesClient:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current client is not an instance of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz p3, :cond_1

    .line 431
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 434
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onAcquired$18(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0
    .param p0, "acquiredInfo"    # I
    .param p1, "vendorCode"    # I
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 368
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationFailed$7(Landroid/hardware/face/Face;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 2
    .param p0, "face"    # Landroid/hardware/face/Face;
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationFrame$2(Landroid/hardware/biometrics/face/AuthenticationFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 2
    .param p0, "frame"    # Landroid/hardware/biometrics/face/AuthenticationFrame;
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 148
    if-nez p0, :cond_0

    .line 149
    const-string v0, "AidlResponseHandler"

    const-string v1, "Received null enrollment frame for face authentication client."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .line 153
    return-void
.end method

.method private static synthetic lambda$onAuthenticationSucceeded$6(Landroid/hardware/face/Face;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 1
    .param p0, "face"    # Landroid/hardware/face/Face;
    .param p1, "byteList"    # Ljava/util/ArrayList;
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 232
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticatorIdInvalidated$17(JLcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;)V
    .locals 0
    .param p0, "newAuthenticatorId"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    .line 360
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticatorIdRetrieved$16(JLcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;)V
    .locals 0
    .param p0, "authenticatorId"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    .line 350
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method private synthetic lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;)V
    .locals 2
    .param p1, "challenge"    # J
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    .line 125
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method private synthetic lambda$onChallengeRevoked$1(JLcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;)V
    .locals 2
    .param p1, "challenge"    # J
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    .line 136
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentFrame$3(Landroid/hardware/biometrics/face/EnrollmentFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 2
    .param p0, "frame"    # Landroid/hardware/biometrics/face/EnrollmentFrame;
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v0, "AidlResponseHandler"

    const-string v1, "Received null enrollment frame for face enroll client."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    .line 169
    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$5(Landroid/hardware/face/Face;ILcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 212
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 213
    if-nez p2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onEnrollSuccess()V

    .line 216
    :cond_0
    return-void
.end method

.method private static synthetic lambda$onEnrollmentsEnumerated$10(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 1
    .param p0, "face"    # Landroid/hardware/face/Face;
    .param p1, "enrollmentIds"    # [I
    .param p2, "finalI"    # I
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 296
    array-length v0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, p0, v0}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentsEnumerated$11(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 2
    .param p0, "c"    # Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentsRemoved$14(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 1
    .param p0, "face"    # Landroid/hardware/face/Face;
    .param p1, "enrollmentIds"    # [I
    .param p2, "finalI"    # I
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 335
    array-length v0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, p0, v0}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentsRemoved$15(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 2
    .param p0, "c"    # Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 339
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private synthetic lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 187
    invoke-interface {p3, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 188
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onHardwareUnavailable()V

    .line 191
    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFeatureSet$13(Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;)V
    .locals 1
    .param p0, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->onFeatureSet(Z)V

    return-void
.end method

.method private static synthetic lambda$onFeaturesRetrieved$12([BLcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;)V
    .locals 1
    .param p0, "features"    # [B
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->onFeatureGet(Z[B)V

    return-void
.end method

.method private synthetic lambda$onLockoutChanged$19(J)V
    .locals 5
    .param p1, "duration"    # J

    .line 377
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 378
    const/4 v2, 0x0

    .local v2, "lockoutMode":I
    goto :goto_1

    .line 379
    .end local v2    # "lockoutMode":I
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 382
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "lockoutMode":I
    goto :goto_1

    .line 380
    .end local v2    # "lockoutMode":I
    :goto_0
    const/4 v2, 0x2

    .line 387
    .restart local v2    # "lockoutMode":I
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutPermanent()V

    goto :goto_2

    .line 389
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutTimed(J)V

    .line 392
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLockoutChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " lockoutMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AidlResponseHandler"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-interface {v3, v4, v2}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    .line 397
    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 400
    :cond_5
    return-void
.end method

.method private synthetic lambda$onLockoutCleared$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 8
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 272
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 274
    invoke-static {v5}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v5

    .line 272
    const-wide/16 v6, -0x1

    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;IJ)V

    return-void
.end method

.method private static synthetic lambda$onLockoutTimed$8(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V
    .locals 0
    .param p0, "durationMillis"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 253
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 110
    const/4 v0, 0x4

    return v0
.end method

.method public onAcquired(II)V
    .locals 2
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 368
    const-class v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 369
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 5

    .line 240
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/hardware/face/Face;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 243
    .local v0, "face":Landroid/hardware/face/Face;
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/Face;)V

    const-class v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 245
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticationFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;-><init>(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 154
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 7
    .param p1, "enrollmentId"    # I
    .param p2, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;

    .line 221
    new-instance v0, Landroid/hardware/face/Face;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 222
    .local v0, "face":Landroid/hardware/face/Face;
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object v1

    .line 223
    .local v1, "byteArray":[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "byteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .line 225
    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAuthenticationSucceeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AidlResponseHandler"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;-><init>(Landroid/hardware/face/Face;Ljava/util/ArrayList;)V

    const-class v4, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-direct {p0, v4, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 234
    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .locals 2
    .param p1, "newAuthenticatorId"    # J

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticatorIdInvalidated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 362
    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .locals 2
    .param p1, "authenticatorId"    # J

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticatorIdRetrieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 352
    return-void
.end method

.method public onChallengeGenerated(J)V
    .locals 2
    .param p1, "challenge"    # J

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChallengeGenerated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 127
    return-void
.end method

.method public onChallengeRevoked(J)V
    .locals 2
    .param p1, "challenge"    # J

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChallengeRevoked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 138
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollmentFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 170
    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 6
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollmentProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 203
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    if-nez v0, :cond_0

    .line 204
    return-void

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 208
    .local v1, "currentUserId":I
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 209
    .local v2, "name":Ljava/lang/CharSequence;
    new-instance v3, Landroid/hardware/face/Face;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v4, v4

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 211
    .local v3, "face":Landroid/hardware/face/Face;
    const-class v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    new-instance v5, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Landroid/hardware/face/Face;I)V

    invoke-direct {p0, v4, v5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 217
    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .locals 7
    .param p1, "enrollmentIds"    # [I

    .line 290
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onEnrollmentsEnumerated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    array-length v0, p1

    const-class v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-lez v0, :cond_1

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 294
    new-instance v2, Landroid/hardware/face/Face;

    aget v3, p1, v0

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 295
    .local v2, "face":Landroid/hardware/face/Face;
    move v3, v0

    .line 296
    .local v3, "finalI":I
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;-><init>(Landroid/hardware/face/Face;[II)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 293
    .end local v2    # "face":Landroid/hardware/face/Face;
    .end local v3    # "finalI":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v0    # "i":I
    goto :goto_1

    .line 300
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 303
    :goto_1
    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .locals 7
    .param p1, "enrollmentIds"    # [I

    .line 328
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onEnrollmentsRemoved: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    array-length v0, p1

    const-class v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-lez v0, :cond_1

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 332
    new-instance v2, Landroid/hardware/face/Face;

    aget v3, p1, v0

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 333
    .local v2, "face":Landroid/hardware/face/Face;
    move v3, v0

    .line 334
    .local v3, "finalI":I
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/face/Face;[II)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 331
    .end local v2    # "face":Landroid/hardware/face/Face;
    .end local v3    # "finalI":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v0    # "i":I
    goto :goto_1

    .line 339
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 342
    :goto_1
    return-void
.end method

.method public onError(BI)V
    .locals 2
    .param p1, "error"    # B
    .param p2, "vendorCode"    # I

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    .line 180
    return-void
.end method

.method public onError(II)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 186
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;II)V

    const-class v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 192
    return-void
.end method

.method public onFeatureSet(B)V
    .locals 2
    .param p1, "feature"    # B

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFeatureSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 322
    return-void
.end method

.method public onFeaturesRetrieved([B)V
    .locals 2
    .param p1, "features"    # [B

    .line 309
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onFeaturesRetrieved"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 313
    return-void
.end method

.method public onInteractionDetected()V
    .locals 2

    .line 281
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onInteractionDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 284
    return-void
.end method

.method public onLockoutChanged(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 375
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method public onLockoutCleared()V
    .locals 3

    .line 269
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onLockoutCleared"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 275
    return-void
.end method

.method public onLockoutPermanent()V
    .locals 2

    .line 260
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onLockoutPermanent: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 263
    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 2
    .param p1, "durationMillis"    # J

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutTimed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;-><init>(J)V

    const-class v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 254
    return-void
.end method

.method public onSessionClosed()V
    .locals 3

    .line 441
    const-string v0, "AidlResponseHandler"

    const-string/jumbo v1, "onSessionClosed:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public onUnsupportedClientScheduled()V
    .locals 2

    .line 408
    const-string v0, "AidlResponseHandler"

    const-string v1, "FaceInvalidationClient is not supported in the HAL."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 410
    return-void
.end method
