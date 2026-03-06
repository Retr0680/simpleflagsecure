.class final Lcom/android/server/vibrator/VendorVibrationSession;
.super Landroid/os/vibrator/IVibrationSession$Stub;
.source "VendorVibrationSession.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/CancellationSignal$OnCancelListener;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;,
        Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;,
        Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VendorVibrationSession"


# instance fields
.field private final mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

.field private final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field private final mCancellationSignal:Landroid/os/ICancellationSignal;

.field private mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field private final mCreateTime:J

.field private final mCreateUptime:J

.field private final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field private mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

.field private mEndTime:J

.field private mEndUptime:J

.field private mEndedByVendor:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

.field private final mSessionId:J

.field private mStartTime:J

.field private mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field private final mVibrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSession$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibratorIds:[I


# direct methods
.method public static synthetic $r8$lambda$78TjSb2_FhS6sp1cocyHsPZXfZA(Lcom/android/server/vibrator/VendorVibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession;->lambda$notifySessionCallback$0(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9RRA3cYCdyJ3XVf10yBdu8rqz4(Lcom/android/server/vibrator/VendorVibrationSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->lambda$notifyStart$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gw-uv4r3BzWmx_x5j7utc0ENh5U(Lcom/android/server/vibrator/VendorVibrationSession;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession;->lambda$requestEndSession$2(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "VendorVibrationSession"

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorDebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V
    .locals 2
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "managerHooks"    # Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;
    .param p4, "deviceAdapter"    # Lcom/android/server/vibrator/DeviceAdapter;
    .param p5, "callback"    # Landroid/os/vibrator/IVibrationSessionCallback;

    .line 104
    invoke-direct {p0}, Landroid/os/vibrator/IVibrationSession$Stub;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession;->nextSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    .line 76
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    .line 87
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    .line 107
    invoke-virtual {p4}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    .line 108
    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-direct {v0, p5, p2}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;-><init>(Landroid/os/vibrator/IVibrationSessionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    .line 110
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 111
    iput-object p3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    .line 112
    iput-object p4, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 113
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 114
    return-void
.end method

.method private synthetic lambda$notifySessionCallback$0(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 3
    .param p1, "endStatus"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 250
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->onSessionReleased(J)V

    .line 252
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 253
    return-void
.end method

.method private synthetic lambda$notifyStart$1()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->endSession(JZ)V

    return-void
.end method

.method private synthetic lambda$requestEndSession$2(Z)V
    .locals 3
    .param p1, "shouldAbort"    # Z

    .line 374
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->endSession(JZ)V

    return-void
.end method

.method private maybeSetStatusToRequestedLocked()V
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-nez v0, :cond_1

    .line 411
    return-void

    .line 413
    :cond_1
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session end request applied for status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndUptime:J

    .line 419
    return-void
.end method

.method private notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p2, "isVendorRequest"    # Z

    .line 386
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eqz v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session end request accepted for status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 394
    iput-boolean p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndedByVendor:Z

    .line 395
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinishing()V

    .line 396
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;)V

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eq p1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 401
    :cond_3
    return-void
.end method

.method private requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V
    .locals 4
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p2, "shouldAbort"    # Z
    .param p3, "isVendorRequest"    # Z

    .line 362
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "VendorVibrationSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session end request received with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    sget-boolean v1, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 372
    const-string v1, "VendorVibrationSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting HAL session end with abort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 374
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetStatusToRequestedLocked()V

    .line 379
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 381
    :goto_1
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 195
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session binder died, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    .line 200
    return-void
.end method

.method public cancelSession()V
    .locals 2

    .line 135
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session cancel requested, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    .line 142
    return-void
.end method

.method public clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 335
    .local v1, "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    if-eqz v1, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 338
    .restart local v1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 339
    monitor-exit v0

    return-object v1

    .line 340
    .end local v1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishSession()V
    .locals 3

    .line 125
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session finish requested, ending vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    .line 131
    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object v0
.end method

.method public getCallerToken()Landroid/os/IBinder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->getBinderToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;

    return-object v0
.end method

.method public getCreateUptimeMillis()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    return-wide v0
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 18

    .line 171
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    new-instance v3, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    iget-object v4, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v5, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-wide v6, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateUptime:J

    iget-wide v8, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    iget-wide v10, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    iget-wide v12, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mEndUptime:J

    iget-wide v14, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    iget-boolean v0, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mEndedByVendor:Z

    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    monitor-exit v2

    return-object v3

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceAdapter()Lcom/android/server/vibrator/DeviceAdapter;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method public getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVibrations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSession$DebugInfo;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVibratorIds()[I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    return-object v0
.end method

.method public isEnded()Z
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRepeating()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public linkToDeath()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public maybeSetVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .locals 5
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;

    .line 348
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_1

    .line 350
    sget-boolean v1, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "VendorVibrationSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session still dispatching previous vibration, new vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 354
    :cond_0
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 356
    :cond_1
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 357
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 358
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySessionCallback()V
    .locals 4

    .line 239
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session callback received, ending vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyEndRequestLocked(Lcom/android/server/vibrator/VibrationSession$Status;Z)V

    .line 246
    invoke-direct {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->maybeSetStatusToRequestedLocked()V

    .line 247
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->clearVibrationConductor()Lcom/android/server/vibrator/VibrationStepConductor;

    .line 248
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 249
    .local v1, "endStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    nop

    .end local v1    # "endStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyStart()V
    .locals 4

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "isAlreadyEnded":Z
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const/4 v0, 0x1

    goto :goto_1

    .line 312
    :cond_0
    sget-boolean v2, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 313
    const-string v2, "VendorVibrationSession"

    const-string v3, "Session started at the HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 315
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    .line 316
    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v2, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyStarted(Landroid/os/vibrator/IVibrationSession;)V

    .line 318
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v0, :cond_3

    .line 320
    sget-boolean v1, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 321
    const-string v1, "VendorVibrationSession"

    const-string v2, "Session already ended after starting the HAL, aborting..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VendorVibrationSession;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    :cond_3
    return-void

    .line 318
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public notifySyncedVibratorsCallback(J)V
    .locals 2
    .param p1, "vibrationId"    # J

    .line 231
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synced vibration callback received for vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ignoring..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-void
.end method

.method public notifyVibrationAttempt(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 1
    .param p1, "vibrationDebugInfo"    # Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    .line 328
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public notifyVibratorCallback(IJJ)V
    .locals 2
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 223
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibration callback received for vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " on vibrator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ignoring..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorVibrationSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 186
    sget-boolean v0, Lcom/android/server/vibrator/VendorVibrationSession;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "VendorVibrationSession"

    const-string v1, "Session cancellation signal received, aborting vibration session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    .line 191
    return-void
.end method

.method public requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p2, "endedBy"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p3, "immediate"    # Z

    .line 218
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->requestEndSession(Lcom/android/server/vibrator/VibrationSession$Status;ZZ)V

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCreateTime:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStartTime:J

    invoke-static {v7, v8, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-wide v7, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 265
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callerInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vibratorIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    .line 267
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vibrations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mVibrations:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 260
    return-object v1

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unlinkToDeath()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 210
    return-void
.end method

.method public vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V
    .locals 6
    .param p1, "vibration"    # Landroid/os/CombinedVibration;
    .param p2, "reason"    # Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    iget-object v4, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    move-object v5, p2

    .end local p2    # "reason":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "vibrationCallerInfo":Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    iget-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-interface {p2, v1, v2, v0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;->vibrate(JLcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    .line 121
    return-void
.end method

.method public wasEndRequested()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mEndStatusRequest:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
