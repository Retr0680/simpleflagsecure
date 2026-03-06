.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;
.super Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.source "AidlResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AidlResponseHandler"


# instance fields
.field private final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field private final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field private final mBiometricUtils:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

.field private final mContext:Landroid/content/Context;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$2W-w_jvjCRoxMWujuCeHMMYnEog(BILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAcquired$3(BILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5kh4u8a7gqQ0K8SECRM5iSHvgg8(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onEnrollmentEnumerated$13(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/EnumerateConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ETgoj_n-EtWBtqZ7JTH9nGXQ4E(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onUnsupportedClientScheduled$18(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7IMFVxacLbIkMz_KB0OV-QSfQEc(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onLockoutCleared$11(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2m9RNZJF14ZE7gkn1fZPSnuEtM(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticatorIdInvalidated$17(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dt_ki4suEcfGgwlp1SRUcmBPLt8(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticationFailed$8(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-Kmp1it0EqXPzV4t0Mmg6l6JvU(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onEnrollmentRemoved$14(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/RemovalConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDmOixkm301gzlRJh0khlj5hfUM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$handleResponse$19(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MWRkPJMm2Xngl62iBune8zdbmfI(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticationSucceeded$6(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tu6E1_jW0n_PaBet3cqxZp1F-w4(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAcquired$2(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQEScGrGcsXrFGzXOdW48BpN18Y(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticationSucceeded$7(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iaAqL1fSVodgUwfRLP1-yXY3InQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jj7Ee5QTyq26PViiERuXRh9CZRo(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticatorIdRetrieved$16(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kAOE08WdtRlmtibaQ9AnkCDHlhQ(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onLockoutTimed$10(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYPu2ppSZoAaM8TJVQmrIEuZbXU(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onEnrollmentProgress$5(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngnX8YMOdPXHl1hiLGGY2JGHlrY(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoq4vWnjA9zOXZ35-DWtpei3OYA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticationFailed$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rSq7ywN9stqfs2kz4eGHJHe7LI8(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onEnrollmentsEnumerated$12(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sC5AGoDUN7QZR6TicgHW3Cv5peE(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onChallengeRevoked$1(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y0I9ifZpvPMko_RVyfrHllDw7zc(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onEnrollmentsRemoved$15(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduler"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .param p3, "sensorId"    # I
    .param p4, "userId"    # I
    .param p5, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutTracker;
    .param p6, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p7, "authSessionCoordinator"    # Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
    .param p8, "aidlResponseHandlerCallback"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;
    .param p9, "biometricUtils"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 92
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 95
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    .line 96
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mUserId:I

    .line 97
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 98
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 99
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 100
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 101
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 102
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

    .line 286
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 287
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

    .line 292
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p3, "alternateAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/biometrics/sensors/BaseClientMonitor;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method private synthetic lambda$handleResponse$19(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/Class;
    .param p2, "action"    # Ljava/util/function/Consumer;
    .param p3, "alternateAction"    # Ljava/util/function/Consumer;

    .line 293
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 294
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client monitor is not an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AidlResponseHandler"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz p3, :cond_1

    .line 299
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 302
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onAcquired$2(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0
    .param p0, "acquiredInfo"    # I
    .param p1, "vendorCode"    # I
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 130
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method private static synthetic lambda$onAcquired$3(BILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 1
    .param p0, "info"    # B
    .param p1, "vendorCode"    # I
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 135
    nop

    .line 136
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v0

    .line 135
    invoke-virtual {p2, v0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationFailed$8(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 2
    .param p0, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onInteractionDetected()V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationSucceeded$6(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 1
    .param p0, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "byteList"    # Ljava/util/ArrayList;
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 184
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$7(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onInteractionDetected()V

    return-void
.end method

.method private static synthetic lambda$onAuthenticatorIdInvalidated$17(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;)V
    .locals 0
    .param p0, "newAuthenticatorId"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    .line 272
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticatorIdRetrieved$16(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;)V
    .locals 0
    .param p0, "authenticatorId"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    .line 267
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method private synthetic lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;)V
    .locals 2
    .param p1, "challenge"    # J
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    .line 116
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method private static synthetic lambda$onChallengeRevoked$1(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;)V
    .locals 0
    .param p0, "challenge"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    .line 122
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->onChallengeRevoked(J)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentEnumerated$13(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0
    .param p0, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "remaining"    # I
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 241
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$5(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;)V
    .locals 1
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I
    .param p3, "c"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    .line 169
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onEnrollSuccess()V

    .line 173
    :cond_0
    return-void
.end method

.method private static synthetic lambda$onEnrollmentRemoved$14(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0
    .param p0, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "remaining"    # I
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 249
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentsEnumerated$12(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 2
    .param p0, "c"    # Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private static synthetic lambda$onEnrollmentsRemoved$15(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 2
    .param p0, "c"    # Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 259
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

    .line 144
    invoke-interface {p3, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 145
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onHardwareUnavailable()V

    .line 148
    :cond_0
    return-void
.end method

.method private synthetic lambda$onLockoutCleared$11(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 8
    .param p1, "c"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 210
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    .line 212
    invoke-static {v5}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v5

    .line 210
    const-wide/16 v6, -0x1

    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;IJ)V

    return-void
.end method

.method private static synthetic lambda$onLockoutTimed$10(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V
    .locals 0
    .param p0, "durationMillis"    # J
    .param p2, "c"    # Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 198
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method

.method private static synthetic lambda$onUnsupportedClientScheduled$18(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0
    .param p0, "c"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 106
    const/4 v0, 0x4

    return v0
.end method

.method public onAcquired(BI)V
    .locals 2
    .param p1, "info"    # B
    .param p2, "vendorCode"    # I

    .line 135
    const-class v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;-><init>(BI)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 137
    return-void
.end method

.method public onAcquired(II)V
    .locals 2
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 130
    const-class v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 131
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 5

    .line 190
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 191
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/fingerprint/Fingerprint;)V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    const-class v3, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 194
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 7
    .param p1, "enrollmentId"    # I
    .param p2, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;

    .line 178
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 179
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object v1

    .line 180
    .local v1, "byteArray":[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "byteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .line 182
    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_0
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;-><init>(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;)V

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    const-class v5, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 186
    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .locals 2
    .param p1, "newAuthenticatorId"    # J

    .line 272
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 274
    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .locals 2
    .param p1, "authenticatorId"    # J

    .line 266
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 268
    return-void
.end method

.method public onChallengeGenerated(J)V
    .locals 2
    .param p1, "challenge"    # J

    .line 116
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 118
    return-void
.end method

.method public onChallengeRevoked(J)V
    .locals 2
    .param p1, "challenge"    # J

    .line 122
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 124
    return-void
.end method

.method public onEnrollmentEnumerated(II)V
    .locals 4
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 240
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 241
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;-><init>(Landroid/hardware/fingerprint/Fingerprint;I)V

    const-class v2, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 242
    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 7
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 160
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    if-nez v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    .line 165
    .local v3, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 166
    .local v2, "name":Ljava/lang/CharSequence;
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v5, v4

    move v4, p1

    .end local p1    # "enrollmentId":I
    .local v4, "enrollmentId":I
    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 168
    .local v1, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    const-class p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 174
    return-void
.end method

.method public onEnrollmentRemoved(II)V
    .locals 4
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 248
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 249
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/fingerprint/Fingerprint;I)V

    const-class v2, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 250
    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .locals 3
    .param p1, "enrollmentIds"    # [I

    .line 224
    array-length v0, p1

    if-lez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 226
    aget v1, p1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentEnumerated(II)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v0    # "i":I
    goto :goto_1

    .line 230
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;-><init>()V

    const-class v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 234
    :goto_1
    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .locals 3
    .param p1, "enrollmentIds"    # [I

    .line 254
    array-length v0, p1

    if-lez v0, :cond_1

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 256
    aget v1, p1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentRemoved(II)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v0    # "i":I
    goto :goto_1

    .line 259
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>()V

    const-class v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 262
    :goto_1
    return-void
.end method

.method public onError(BI)V
    .locals 1
    .param p1, "error"    # B
    .param p2, "vendorCode"    # I

    .line 153
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onError(II)V

    .line 154
    return-void
.end method

.method public onError(II)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 143
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;II)V

    const-class v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 149
    return-void
.end method

.method public onInteractionDetected()V
    .locals 2

    .line 218
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 220
    return-void
.end method

.method public onLockoutCleared()V
    .locals 3

    .line 208
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 214
    return-void
.end method

.method public onLockoutPermanent()V
    .locals 2

    .line 203
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 204
    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 2
    .param p1, "durationMillis"    # J

    .line 198
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>(J)V

    const-class v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 199
    return-void
.end method

.method public onSessionClosed()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method public onUnsupportedClientScheduled(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/biometrics/sensors/BaseClientMonitor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 280
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported in the HAL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 282
    return-void
.end method
