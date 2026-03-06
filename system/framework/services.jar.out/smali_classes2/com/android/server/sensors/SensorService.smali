.class public Lcom/android/server/sensors/SensorService;
.super Lcom/android/server/SystemService;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensors/SensorService$LocalService;,
        Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;,
        Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;,
        Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;,
        Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    }
.end annotation


# static fields
.field private static final START_NATIVE_SENSOR_SERVICE:Ljava/lang/String; = "StartNativeSensorService"

.field private static final TAG:Ljava/lang/String; = "JSensorService"

.field private static final VND_UDLIGHT_SENSOR_SUPPORT_TRACK:Ljava/lang/String; = "ro.vendor.sensor.udlight_sensor_support"

.field private static final mSupportUDLightSensor:Z


# instance fields
.field private final mAmbientLightSensorListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;",
            "Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mProximityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;",
            "Lcom/android/server/sensors/SensorService$ProximityListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPtr:J

.field private final mRuntimeSensorHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tuvhrgJDhAzfGFTh_3IUBIw3Spg(Lcom/android/server/sensors/SensorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/sensors/SensorService;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAmbientLightSensorListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smregisterProximityActiveListenerNative(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->registerProximityActiveListenerNative(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p12}, Lcom/android/server/sensors/SensorService;->registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorEventNative(JIIJ[F)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smunregisterProximityActiveListenerNative(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->unregisterProximityActiveListenerNative(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smunregisterRuntimeSensorNative(JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/sensors/SensorService;->unregisterRuntimeSensorNative(JI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 87
    const-string/jumbo v0, "ro.vendor.sensor.udlight_sensor_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sensors/SensorService;->mSupportUDLightSensor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    .line 102
    iput-object p1, p0, Lcom/android/server/sensors/SensorService;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    new-instance v1, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-string v2, "StartNativeSensorService"

    invoke-static {v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    .line 106
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 107
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartNativeSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService-IA;)V

    new-instance v3, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;

    invoke-direct {v3, p0, v2}, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService-IA;)V

    invoke-static {v1, v3}, Lcom/android/server/sensors/SensorService;->startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)J

    move-result-wide v1

    .line 109
    .local v1, "ptr":J
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    iput-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 111
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 113
    const-string v3, "JSensorService"

    const-string v4, "SensorServicestartSensorServiceNative"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 111
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static native registerAmbientLightSensorActiveListenerNative(J)V
.end method

.method private static native registerProximityActiveListenerNative(J)V
.end method

.method private static native registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
.end method

.method private static native sendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z
.end method

.method private static native sendRuntimeSensorEventNative(JIIJ[F)Z
.end method

.method private static native startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)J
.end method

.method private static native unregisterAmbientLightSensorActiveListenerNative(J)V
.end method

.method private static native unregisterProximityActiveListenerNative(J)V
.end method

.method private static native unregisterRuntimeSensorNative(JI)V
.end method


# virtual methods
.method public addAmbientLightSensorActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    new-instance v0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)V

    .line 153
    .local v0, "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    iget-object v1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "JSensorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAmbientLightSensorActiveListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 160
    const-string v2, "JSensorService"

    const-string/jumbo v3, "registerAmbientLightSensorActiveListenerNative"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-wide v2, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->registerAmbientLightSensorActiveListenerNative(J)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 164
    return-void

    .line 155
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener already registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    .end local p0    # "this":Lcom/android/server/sensors/SensorService;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;
    throw v2

    .line 163
    .restart local v0    # "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    .restart local p0    # "this":Lcom/android/server/sensors/SensorService;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 125
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v1, "StartNativeSensorService"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 130
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 134
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/sensors/SensorService;->mSupportUDLightSensor:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 135
    const-string v0, "JSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase BOOT_COMPLETED mPtr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NothSensorService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 140
    .local v2, "handlerExecutor":Landroid/os/HandlerExecutor;
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/sensors/NothSensorHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/sensors/NothSensorHelper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/sensors/NothSensorHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/sensors/NothSensorHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/sensors/NothSensorHelper;->getAmbientLightSensorActiveListener()Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sensors/SensorService;->addAmbientLightSensorActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)V

    .line 144
    .end local v0    # "thread":Landroid/os/HandlerThread;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "handlerExecutor":Landroid/os/HandlerExecutor;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 120
    new-instance v0, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$LocalService;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-class v1, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public removeAmbientLightSensorActiveListener(Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    iget-object v0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;

    .line 170
    .local v1, "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    if-eqz v1, :cond_1

    .line 174
    const-string v2, "JSensorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAmbientLightSensorActiveListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/server/sensors/SensorService;->mAmbientLightSensorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "JSensorService"

    const-string/jumbo v3, "unregisterAmbientLightSensorActiveListenerNative"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-wide v2, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->unregisterAmbientLightSensorActiveListenerNative(J)V

    goto :goto_0

    .line 179
    .end local v1    # "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 180
    return-void

    .line 171
    .restart local v1    # "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener was not registered with sensor service"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/sensors/SensorService;
    .end local p1    # "listener":Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;
    throw v2

    .line 179
    .end local v1    # "proxy":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    .restart local p0    # "this":Lcom/android/server/sensors/SensorService;
    .restart local p1    # "listener":Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
