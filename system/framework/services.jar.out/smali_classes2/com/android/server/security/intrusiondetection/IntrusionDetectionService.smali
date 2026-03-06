.class public Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
.super Lcom/android/server/SystemService;
.source "IntrusionDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;,
        Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;,
        Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;,
        Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;
    }
.end annotation


# static fields
.field private static final ERROR_DATA_SOURCE_UNAVAILABLE:I = 0x4

.field private static final ERROR_INVALID_STATE_TRANSITION:I = 0x2

.field private static final ERROR_PERMISSION_DENIED:I = 0x1

.field private static final ERROR_TRANSPORT_UNAVAILABLE:I = 0x3

.field private static final ERROR_UNKNOWN:I = 0x0

.field private static final MAX_STATE_CALLBACK_NUM:I = 0x10

.field private static final MSG_ADD_STATE_CALLBACK:I = 0x0

.field private static final MSG_DISABLE:I = 0x3

.field private static final MSG_ENABLE:I = 0x2

.field private static final MSG_REMOVE_STATE_CALLBACK:I = 0x1

.field private static final MSG_TRANSPORT:I = 0x4

.field private static final STATE_DISABLED:I = 0x1

.field private static final STATE_ENABLED:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IntrusionDetectionService"


# instance fields
.field private final mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

.field private final mContext:Landroid/content/Context;

.field private final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

.field private volatile mState:I

.field private final mStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransport(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->transport(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;-><init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;

    .line 91
    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 92
    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Landroid/os/Handler;

    .line 94
    nop

    .line 95
    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getIntrusionDetectionEventransportConnection()Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    .line 96
    invoke-interface {p1, p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getDataAggregator(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 97
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getPermissionEnforcer()Landroid/os/PermissionEnforcer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;-><init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/os/PermissionEnforcer;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    .line 98
    return-void
.end method

.method private addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-interface {v1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 197
    return-void

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 200
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-interface {p1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->onStateChange(I)V

    .line 202
    return-void
.end method

.method private disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->release()V

    .line 254
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->disable()V

    .line 255
    iput v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 256
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->notifyStateMonitors()V

    .line 257
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    .line 258
    return-void
.end method

.method private enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 231
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->initialize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onFailure(I)V

    .line 237
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->enable()V

    .line 241
    iput v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 242
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->notifyStateMonitors()V

    .line 243
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    .line 244
    return-void
.end method

.method private notifyStateMonitors()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 219
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    iget v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-interface {v1, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->onStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_1

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 226
    .end local v0    # "i":I
    return-void
.end method

.method private removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-interface {v1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    return-void

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 212
    .end local v0    # "i":I
    return-void
.end method

.method private transport(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->addData(Ljava/util/List;)Z

    .line 269
    return-void
.end method


# virtual methods
.method public addNewData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method getBinderService()Landroid/security/intrusiondetection/IIntrusionDetectionService;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .line 274
    :try_start_0
    const-string/jumbo v0, "intrusion_detection"

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "IntrusionDetectionService"

    const-string v2, "Could not start the IntrusionDetectionService."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 102
    iput p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 103
    return-void
.end method
