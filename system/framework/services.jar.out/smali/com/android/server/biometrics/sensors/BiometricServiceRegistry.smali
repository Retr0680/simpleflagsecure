.class public abstract Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.super Ljava/lang/Object;
.source "BiometricServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/biometrics/sensors/BiometricServiceProvider<",
        "TP;>;P:",
        "Landroid/hardware/biometrics/SensorPropertiesInternal;",
        "C::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricServiceRegistry"


# instance fields
.field private volatile mAllProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final mBiometricServiceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/IBiometricService;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "TC;>;"
        }
    .end annotation
.end field

.field private volatile mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$x0WsIKdzUnRnfbom1Yua11lD2N0(Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;Ljava/util/function/Supplier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->lambda$registerAll$0(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/IBiometricService;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .local p1, "biometricSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/IBiometricService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 67
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mBiometricServiceSupplier:Ljava/util/function/Supplier;

    .line 68
    return-void
.end method

.method private declared-synchronized broadcastAllAuthenticatorsRegistered()V
    .locals 6

    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 165
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .local v2, "cb":Landroid/os/IInterface;, "TC;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    :try_start_2
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    goto :goto_1

    .line 163
    .end local v0    # "n":I
    .end local v1    # "i":I
    .end local v2    # "cb":Landroid/os/IInterface;, "TC;"
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 172
    .restart local v0    # "n":I
    .restart local v1    # "i":I
    .restart local v2    # "cb":Landroid/os/IInterface;, "TC;"
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 169
    :catch_0
    move-exception v3

    nop

    .line 170
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BiometricServiceRegistry"

    const-string v5, "Remote exception in broadcastAllAuthenticatorsRegistered"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    .end local v3    # "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 173
    nop

    .line 165
    .end local v2    # "cb":Landroid/os/IInterface;, "TC;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .restart local v2    # "cb":Landroid/os/IInterface;, "TC;"
    :goto_2
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 173
    throw v3

    .line 165
    .end local v2    # "cb":Landroid/os/IInterface;, "TC;"
    :cond_0
    nop

    .line 175
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 163
    .end local v0    # "n":I
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private declared-synchronized finishRegistration(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TP;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "allProps":Ljava/util/List;, "Ljava/util/List<TP;>;"
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    .line 138
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 139
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->broadcastAllAuthenticatorsRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 136
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .end local p1    # "providers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local p2    # "allProps":Ljava/util/List;, "Ljava/util/List<TP;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$registerAll$0(Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "serviceProvider"    # Ljava/util/function/Supplier;

    .line 103
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerAllInBackground(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAllRegisteredCallback(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TC;"
    monitor-enter p0

    .line 149
    if-nez p1, :cond_0

    .line 150
    :try_start_0
    const-string v0, "BiometricServiceRegistry"

    const-string v1, "addAllRegisteredCallback, callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 148
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .end local p1    # "callback":Landroid/os/IInterface;, "TC;"
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 154
    .restart local p1    # "callback":Landroid/os/IInterface;, "TC;"
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 155
    .local v0, "registered":Z
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 156
    .local v1, "allRegistered":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->broadcastAllAuthenticatorsRegistered()V

    goto :goto_1

    .line 158
    :cond_2
    if-nez v0, :cond_3

    .line 159
    const-string v2, "BiometricServiceRegistry"

    const-string v3, "addAllRegisteredCallback failed to register callback"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "registered":Z
    .end local v1    # "allRegistered":Z
    .end local p1    # "callback":Landroid/os/IInterface;, "TC;"
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getAllProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TP;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;
    .locals 3
    .param p1, "sensorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 197
    .local v1, "provider":Lcom/android/server/biometrics/sensors/BiometricServiceProvider;, "TT;"
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->containsSensor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    return-object v1

    .line 197
    :cond_0
    nop

    .line 200
    .end local v1    # "provider":Lcom/android/server/biometrics/sensors/BiometricServiceProvider;, "TT;"
    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mServiceProviders:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSingleProvider()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "BiometricServiceRegistry"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto/16 :goto_3

    .line 223
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSingleProvider() called but multiple sensors present: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    .line 225
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    goto :goto_1

    .line 228
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 229
    .local v0, "sensorId":I
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    move-result-object v3

    .line 230
    .local v3, "provider":Lcom/android/server/biometrics/sensors/BiometricServiceProvider;, "TT;"
    if-eqz v3, :cond_3

    .line 231
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 234
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Single sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", but provider not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-object v1

    .line 236
    .end local v0    # "sensorId":I
    .end local v3    # "provider":Lcom/android/server/biometrics/sensors/BiometricServiceProvider;, "TT;"
    :goto_1
    nop

    .line 238
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    if-nez v1, :cond_4

    .line 239
    const-string/jumbo v1, "mAllProps: null"

    .local v1, "extra":Ljava/lang/String;
    goto :goto_2

    .line 241
    .end local v1    # "extra":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAllProps.size(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mAllProps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1    # "extra":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This shouldn\'t happen. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    throw v0

    .line 217
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "extra":Ljava/lang/String;
    :goto_3
    const-string v0, "No sensors found"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v1
.end method

.method protected abstract invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/List<",
            "TP;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public registerAll(Ljava/util/function/Supplier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .local p1, "serviceProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/List<TT;>;>;"
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "BiometricServiceRegistry"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 101
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;Ljava/util/function/Supplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 105
    return-void
.end method

.method public registerAllInBackground(Ljava/util/function/Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;, "Lcom/android/server/biometrics/sensors/BiometricServiceRegistry<TT;TP;TC;>;"
    .local p1, "serviceProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/List<TT;>;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->mBiometricServiceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/IBiometricService;

    .line 116
    .local v1, "biometricService":Landroid/hardware/biometrics/IBiometricService;
    if-eqz v1, :cond_4

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "allProps":Ljava/util/List;, "Ljava/util/List<TP;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 123
    .local v4, "provider":Lcom/android/server/biometrics/sensors/BiometricServiceProvider;, "TT;"
    if-eqz v4, :cond_2

    .line 124
    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v5

    .line 125
    .local v5, "props":Ljava/util/List;, "Ljava/util/List<TP;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 126
    .local v7, "prop":Landroid/hardware/biometrics/SensorPropertiesInternal;, "TP;"
    invoke-virtual {p0, v1, v7}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V

    .line 127
    .end local v7    # "prop":Landroid/hardware/biometrics/SensorPropertiesInternal;, "TP;"
    goto :goto_1

    .line 128
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    .end local v4    # "provider":Lcom/android/server/biometrics/sensors/BiometricServiceProvider;, "TT;"
    .end local v5    # "props":Ljava/util/List;, "Ljava/util/List<TP;>;"
    :cond_2
    goto :goto_0

    .line 132
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->finishRegistration(Ljava/util/List;Ljava/util/List;)V

    .line 133
    return-void

    .line 117
    .end local v2    # "allProps":Ljava/util/List;, "Ljava/util/List<TP;>;"
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "biometric service cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/IBiometricService;",
            "TP;)V"
        }
    .end annotation
.end method
