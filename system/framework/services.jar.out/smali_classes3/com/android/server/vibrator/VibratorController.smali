.class final Lcom/android/server/vibrator/VibratorController;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorController$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorController$VibratorState;
    }
.end annotation


# static fields
.field private static final RICHTAP_TAKEOVER_CTL:Z = true

.field private static final TAG:Ljava/lang/String; = "VibratorController"


# instance fields
.field private volatile mCurrentAmplitude:F

.field private volatile mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

.field private volatile mVibratorInfo:Landroid/os/VibratorInfo;

.field private volatile mVibratorInfoLoadSuccessful:Z

.field private final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$SXJ48rSkhfxUkD7g1Dv0zSk83NY(Lcom/android/server/vibrator/VibratorController;ZLandroid/os/IVibratorStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;->lambda$updateStateAndNotifyListenersLocked$0(ZLandroid/os/IVibratorStateListener;)V

    return-void
.end method

.method constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .locals 1
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;

    .line 100
    new-instance v0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    .line 101
    return-void
.end method

.method constructor <init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V
    .locals 3
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
    .param p3, "nativeWrapper"    # Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 106
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 107
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    .line 108
    new-instance v0, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v0, p1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 109
    .local v0, "vibratorInfoBuilder":Landroid/os/VibratorInfo$Builder;
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 110
    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 111
    sget-object v1, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    .line 113
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator controller initialization failed to load some HAL info for vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method private static isVibrating(Lcom/android/server/vibrator/VibratorController$VibratorState;)Z
    .locals 1
    .param p0, "state"    # Lcom/android/server/vibrator/VibratorController$VibratorState;

    .line 568
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$updateStateAndNotifyListenersLocked$0(ZLandroid/os/IVibratorStateListener;)V
    .locals 0
    .param p1, "newIsVibrating"    # Z
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 554
    invoke-direct {p0, p2, p1}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    return-void
.end method

.method private notifyStateListener(Landroid/os/IVibratorStateListener;Z)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;
    .param p2, "isVibrating"    # Z

    .line 560
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorController"

    const-string v2, "Vibrator state listener failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/vibrator/VibratorController$VibratorState;

    .line 547
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/VibratorController$VibratorState;)Z

    move-result v0

    .line 548
    .local v0, "previousIsVibrating":Z
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/VibratorController$VibratorState;)Z

    move-result v1

    .line 549
    .local v1, "newIsVibrating":Z
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    .line 550
    if-eq v0, v1, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorController;Z)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 556
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibrator (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibratorInfoLoadSuccessful = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibratorStateListener size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 537
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, p1}, Landroid/os/VibratorInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 539
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 540
    return-void
.end method

.method public getCurrentAmplitude()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    return v0
.end method

.method public getVibratorInfo()Landroid/os/VibratorInfo;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public hasCapability(J)Z
    .locals 1
    .param p1, "capability"    # J

    .line 216
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 221
    const-string v0, "VibratorController#isAvailable"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable()Z

    move-result v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    return v3

    .line 225
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 228
    throw v0
.end method

.method public isVibrating()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/VibratorController$VibratorState;)Z

    move-result v0

    return v0
.end method

.method isVibratorInfoLoadSuccessful()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    return v0
.end method

.method public off()V
    .locals 4

    .line 497
    const-string v0, "VibratorController#off"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 500
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off()V

    .line 501
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 502
    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    .line 503
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 506
    nop

    .line 507
    return-void

    .line 503
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 505
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 506
    throw v0
.end method

.method public on(JJJ)J
    .locals 18
    .param p1, "milliseconds"    # J
    .param p3, "vibrationId"    # J
    .param p5, "stepId"    # J

    .line 315
    move-object/from16 v1, p0

    const-string v0, "VibratorController#on"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 317
    :try_start_0
    iget-object v4, v1, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    :try_start_1
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nothing/server/ext/INtVibratorManager;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-interface/range {v5 .. v11}, Lcom/nothing/server/ext/INtVibratorManager;->ntVibrateOn(JJJ)J

    move-result-wide v12

    .line 321
    .local v12, "ntDuration":J
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    const/high16 v5, -0x40800000    # -1.0f

    if-lez v0, :cond_0

    .line 322
    iput v5, v1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 323
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    .line 324
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 324
    return-wide v12

    .line 334
    .end local v12    # "ntDuration":J
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 326
    .restart local v12    # "ntDuration":J
    :cond_0
    move v0, v5

    :try_start_2
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJ)J

    move-result-wide v16

    .line 327
    .local v16, "duration":J
    cmp-long v5, v16, v14

    if-lez v5, :cond_1

    .line 328
    iput v0, v1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 329
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    .line 331
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 331
    return-wide v16

    .line 334
    .end local v12    # "ntDuration":J
    .end local v16    # "duration":J
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "milliseconds":J
    .end local p3    # "vibrationId":J
    .end local p5    # "stepId":J
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 336
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "milliseconds":J
    .restart local p3    # "vibrationId":J
    .restart local p5    # "stepId":J
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 337
    throw v0
.end method

.method public on(Landroid/os/VibrationEffect$VendorEffect;JJ)J
    .locals 14
    .param p1, "vendorEffect"    # Landroid/os/VibrationEffect$VendorEffect;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 350
    const-string v0, "VibratorController#on (vendor)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    .line 354
    .local v5, "vendorData":Landroid/os/Parcel;
    :try_start_1
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 356
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 357
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getEffectStrength()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getScale()F

    move-result v8

    .line 358
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getAdaptiveScale()F

    move-result v9

    .line 356
    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performVendorEffect(Landroid/os/Parcel;JFFJJ)J

    move-result-wide v6

    .line 359
    .local v6, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    .line 360
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 361
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    .end local v6    # "duration":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 363
    .restart local v6    # "duration":J
    :cond_0
    :goto_0
    nop

    .line 365
    :try_start_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    .line 363
    return-wide v6

    .line 368
    .end local v5    # "vendorData":Landroid/os/Parcel;
    .end local v6    # "duration":J
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 365
    .restart local v5    # "vendorData":Landroid/os/Parcel;
    :goto_1
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 367
    nop

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "vendorEffect":Landroid/os/VibrationEffect$VendorEffect;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    throw v0

    .line 368
    .end local v5    # "vendorData":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "vendorEffect":Landroid/os/VibrationEffect$VendorEffect;
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public on(Landroid/os/vibrator/PrebakedSegment;JJ)J
    .locals 22
    .param p1, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 381
    move-object/from16 v1, p0

    const-string v0, "VibratorController#on (Prebaked)"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    :try_start_0
    iget-object v4, v1, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nothing/server/ext/INtVibratorManager;

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-interface/range {v5 .. v10}, Lcom/nothing/server/ext/INtVibratorManager;->ntVibrateOn(Landroid/os/vibrator/PrebakedSegment;JJ)J

    move-result-wide v11

    .line 387
    .local v11, "ntDuration":J
    const-wide/16 v5, 0x0

    cmp-long v0, v11, v5

    const/high16 v7, -0x40800000    # -1.0f

    if-lez v0, :cond_0

    .line 388
    iput v7, v1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 389
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    .line 390
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 390
    return-wide v11

    .line 401
    .end local v11    # "ntDuration":J
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 392
    .restart local v11    # "ntDuration":J
    :cond_0
    :try_start_2
    iget-object v13, v1, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    int-to-long v14, v0

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v0

    int-to-long v8, v0

    .line 392
    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    move-wide/from16 v16, v8

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->perform(JJJJ)J

    move-result-wide v8

    .line 394
    .local v8, "duration":J
    cmp-long v0, v8, v5

    if-lez v0, :cond_1

    .line 395
    iput v7, v1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 396
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    .line 398
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 398
    return-wide v8

    .line 401
    .end local v8    # "duration":J
    .end local v11    # "ntDuration":J
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 403
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 404
    throw v0
.end method

.method public on([Landroid/os/vibrator/PrimitiveSegment;JJ)J
    .locals 14
    .param p1, "primitives"    # [Landroid/os/vibrator/PrimitiveSegment;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 417
    const-string v0, "VibratorController#on (Primitive)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    .line 420
    nop

    .line 431
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 420
    return-wide v3

    .line 422
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 423
    :try_start_2
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide v12

    .line 424
    .local v12, "duration":J
    cmp-long v0, v12, v3

    if-lez v0, :cond_1

    .line 425
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 426
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    .line 429
    .end local v12    # "duration":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 428
    .restart local v12    # "duration":J
    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    return-wide v12

    .line 429
    .end local v12    # "duration":J
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "primitives":[Landroid/os/vibrator/PrimitiveSegment;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 431
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "primitives":[Landroid/os/vibrator/PrimitiveSegment;
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 432
    throw v0
.end method

.method public on([Landroid/os/vibrator/PwlePoint;JJ)J
    .locals 14
    .param p1, "pwlePoints"    # [Landroid/os/vibrator/PwlePoint;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 473
    const-string v0, "VibratorController#on (PWLE v2)"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    .line 476
    nop

    .line 487
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    return-wide v3

    .line 478
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 479
    :try_start_2
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide v12

    .line 480
    .local v12, "duration":J
    cmp-long v0, v12, v3

    if-lez v0, :cond_1

    .line 481
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 482
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    .line 485
    .end local v12    # "duration":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 484
    .restart local v12    # "duration":J
    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 484
    return-wide v12

    .line 485
    .end local v12    # "duration":J
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "pwlePoints":[Landroid/os/vibrator/PwlePoint;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 487
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "pwlePoints":[Landroid/os/vibrator/PwlePoint;
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    throw v0
.end method

.method public on([Landroid/os/vibrator/RampSegment;JJ)J
    .locals 16
    .param p1, "primitives"    # [Landroid/os/vibrator/RampSegment;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 444
    move-object/from16 v1, p0

    const-string v0, "VibratorController#on (PWLE)"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 446
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v4, 0x400

    invoke-virtual {v0, v4, v5}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    .line 447
    nop

    .line 460
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 447
    return-wide v4

    .line 449
    :cond_0
    :try_start_1
    iget-object v6, v1, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    :try_start_2
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getDefaultBraking()I

    move-result v0

    move v9, v0

    .line 451
    .local v9, "braking":I
    iget-object v7, v1, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    move-object/from16 v8, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->composePwle([Landroid/os/vibrator/RampSegment;IJJ)J

    move-result-wide v14

    .line 453
    .local v14, "duration":J
    cmp-long v0, v14, v4

    if-lez v0, :cond_1

    .line 454
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    .line 455
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    goto :goto_0

    .line 458
    .end local v9    # "braking":I
    .end local v14    # "duration":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 457
    .restart local v9    # "braking":I
    .restart local v14    # "duration":J
    :cond_1
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 457
    return-wide v14

    .line 458
    .end local v9    # "braking":I
    .end local v14    # "duration":J
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "primitives":[Landroid/os/vibrator/RampSegment;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 460
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "primitives":[Landroid/os/vibrator/RampSegment;
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 461
    throw v0
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    const/4 v2, 0x0

    return v2

    .line 132
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 131
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorController;->isVibrating(Lcom/android/server/vibrator/VibratorController$VibratorState;)Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/vibrator/VibratorController;->notifyStateListener(Landroid/os/IVibratorStateListener;Z)V

    .line 132
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    nop

    .line 135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    const/4 v2, 0x1

    return v2

    .line 132
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw v2
.end method

.method public reloadVibratorInfoIfNeeded()V
    .locals 8

    .line 151
    const-string v0, "VibratorController#reloadVibratorInfoIfNeeded"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 170
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    return-void

    .line 157
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz v3, :cond_1

    .line 159
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    return-void

    .line 168
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 161
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    .line 162
    .local v3, "vibratorId":I
    new-instance v4, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v4, v3}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    .line 163
    .local v4, "vibratorInfoBuilder":Landroid/os/VibratorInfo$Builder;
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v5, v4}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(Landroid/os/VibratorInfo$Builder;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 164
    invoke-virtual {v4}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 165
    iget-boolean v5, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-nez v5, :cond_2

    .line 166
    const-string v5, "VibratorController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed retry of HAL getInfo for vibrator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v3    # "vibratorId":I
    .end local v4    # "vibratorInfoBuilder":Landroid/os/VibratorInfo$Builder;
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    nop

    .line 172
    return-void

    .line 168
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    throw v0
.end method

.method public reset()V
    .locals 1

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 515
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 516
    return-void
.end method

.method public setAmplitude(F)V
    .locals 7
    .param p1, "amplitude"    # F

    .line 280
    const-string v0, "VibratorController#setAmplitude"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 287
    .local v3, "strength":I
    :try_start_1
    const-string v4, "VibratorController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "richTapVibratorSetAmplitude strength : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v4, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v4}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nothing/server/ext/INtVibratorManager;

    invoke-interface {v4, v3}, Lcom/nothing/server/ext/INtVibratorManager;->richTapVibratorSetAmplitude(I)V

    .line 296
    .end local v3    # "strength":I
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v4, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-ne v3, v4, :cond_0

    .line 297
    iput p1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 302
    nop

    .line 303
    return-void

    .line 299
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "amplitude":F
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "amplitude":F
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 302
    throw v0
.end method

.method public setExternalControl(Z)V
    .locals 5
    .param p1, "externalControl"    # Z

    .line 237
    nop

    .line 238
    if-eqz p1, :cond_0

    const-string v0, "VibratorController#enableExternalControl"

    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "VibratorController#disableExternalControl"

    .line 237
    :goto_0
    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 251
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 242
    return-void

    .line 245
    :cond_1
    nop

    nop

    if-eqz p1, :cond_2

    :try_start_1
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

    goto :goto_1

    .line 251
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 245
    :cond_2
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    :goto_1
    nop

    .line 246
    .local v0, "newState":Lcom/android/server/vibrator/VibratorController$VibratorState;
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v4, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(Z)V

    .line 248
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateStateAndNotifyListenersLocked(Lcom/android/server/vibrator/VibratorController$VibratorState;)V

    .line 249
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    .end local v0    # "newState":Lcom/android/server/vibrator/VibratorController$VibratorState;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    nop

    .line 253
    return-void

    .line 249
    .restart local v0    # "newState":Lcom/android/server/vibrator/VibratorController$VibratorState;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "externalControl":Z
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    .end local v0    # "newState":Lcom/android/server/vibrator/VibratorController$VibratorState;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "externalControl":Z
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorController{mVibratorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorInfoLoadSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    .line 523
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mVibratorStateListeners count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 526
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    return-object v0
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 143
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    return v2

    .line 145
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    throw v2
.end method

.method public updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;

    .line 260
    const-string v0, "VibratorController#updateAlwaysOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v3, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 274
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 263
    return-void

    .line 265
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    if-nez p2, :cond_1

    .line 267
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(J)V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 269
    :cond_1
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    int-to-long v5, p1

    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    int-to-long v7, v0

    .line 270
    invoke-virtual {p2}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v0

    int-to-long v9, v0

    .line 269
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJ)V

    .line 272
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    nop

    .line 276
    return-void

    .line 272
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .end local p1    # "id":I
    .end local p2    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 274
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorController;
    .restart local p1    # "id":I
    .restart local p2    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    throw v0
.end method
