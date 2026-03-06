.class public Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# instance fields
.field private mNativeServicePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    return-void
.end method


# virtual methods
.method public cancelSynced()V
    .locals 2

    .line 2353
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeCancelSynced(J)V

    .line 2354
    return-void
.end method

.method public clearSessions()V
    .locals 2

    .line 2368
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeClearSessions(J)V

    .line 2369
    return-void
.end method

.method public endSession(JZ)V
    .locals 2
    .param p1, "sessionId"    # J
    .param p3, "shouldAbort"    # Z

    .line 2363
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeEndSession(JJZ)V

    .line 2364
    return-void
.end method

.method public getCapabilities()J
    .locals 2

    .line 2333
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetCapabilities(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVibratorIds()[I
    .locals 2

    .line 2338
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetVibratorIds(J)[I

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;

    .line 2320
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeInit(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2321
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetFinalizer()J

    move-result-wide v0

    .line 2323
    .local v0, "finalizerPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2324
    const-class v2, Lcom/android/server/vibrator/VibratorManagerService;

    .line 2326
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2325
    invoke-static {v2, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v2

    .line 2327
    .local v2, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-wide v3, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-virtual {v2, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 2329
    .end local v2    # "registry":Llibcore/util/NativeAllocationRegistry;
    :cond_0
    return-void
.end method

.method public prepareSynced([I)Z
    .locals 2
    .param p1, "vibratorIds"    # [I

    .line 2343
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativePrepareSynced(J[I)Z

    move-result v0

    return v0
.end method

.method public startSession(J[I)Z
    .locals 2
    .param p1, "sessionId"    # J
    .param p3, "vibratorIds"    # [I

    .line 2358
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeStartSession(JJ[I)Z

    move-result v0

    return v0
.end method

.method public triggerSynced(J)Z
    .locals 2
    .param p1, "vibrationId"    # J

    .line 2348
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->nativeTriggerSynced(JJ)Z

    move-result v0

    return v0
.end method
