.class final Lcom/android/server/inputmethod/IInputMethodClientInvoker;
.super Ljava/lang/Object;
.source "IInputMethodClientInvoker.java"


# static fields
.field static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputMethodManagerService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsProxy:Z

.field private final mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public static synthetic $r8$lambda$-Kdju1_EXd9J6Azs1wMip_57lL0(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onUnbindMethod$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$4vBH5dzq5LhwPcmgjldbMQdWn6I(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setActive$5(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8K2ipAv29I48Hvp3wxVM87DxhD8(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onStartInputResult$1(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AoIlvIX3rP6SUO6OlBC_XdXM6X4(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setImeTraceEnabled$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuPksNuQ9tCWWn7A6QY0aRiqbeI(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onBindMethod$0(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7Gu5ioQQZTjloGBga4SNiKv3W4(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$reportFullscreenMode$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqfpVjKrgSh4f5zBJva6YHyPOus(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onUnbindAccessibilityService$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$VE1DYoKcKG6RshAekspt91ACmH4(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setImeVisibility$7(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a3G7cYid-zOg_bx0EwyiClrvHT8(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$scheduleStartInputIfNecessary$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMZI-RMrMXtaM_w1zOlvHaqwIis(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setInteractive$6(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hNuUID-hbMFkEXk-7itpoMVvaOA(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$throwExceptionFromSystem$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0530uO66e6JqhlHFYiF7K-M9KM(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onBindAccessibilityService$2(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V
    .locals 0
    .param p1, "target"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "isProxy"    # Z
    .param p3, "handler"    # Landroid/os/Handler;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 89
    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 90
    iput-object p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static create(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;
    .locals 3
    .param p0, "inputMethodClient"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 75
    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    .line 76
    .local v0, "isProxy":Z
    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V

    return-object v1
.end method

.method static create$ravenwood(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;
    .locals 3
    .param p0, "inputMethodClient"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V

    return-object v0
.end method

.method private static getCallerMethodName()Ljava/lang/String;
    .locals 3

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 101
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 102
    const-string v1, "<bottom of call stack>"

    return-object v1

    .line 104
    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$onBindAccessibilityService$2(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "id"    # I

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method private synthetic lambda$onBindMethod$0(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method

.method private synthetic lambda$onStartInputResult$1(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "startInputSeq"    # I

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method private synthetic lambda$onUnbindAccessibilityService$4(II)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "id"    # I

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityServiceInternal(II)V

    return-void
.end method

.method private synthetic lambda$onUnbindMethod$3(II)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "unbindReason"    # I

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethodInternal(II)V

    return-void
.end method

.method private synthetic lambda$reportFullscreenMode$9(Z)V
    .locals 0
    .param p1, "fullscreen"    # Z

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenModeInternal(Z)V

    return-void
.end method

.method private synthetic lambda$scheduleStartInputIfNecessary$8(Z)V
    .locals 0
    .param p1, "fullscreen"    # Z

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessaryInternal(Z)V

    return-void
.end method

.method private synthetic lambda$setActive$5(ZZ)V
    .locals 0
    .param p1, "active"    # Z
    .param p2, "fullscreen"    # Z

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActiveInternal(ZZ)V

    return-void
.end method

.method private synthetic lambda$setImeTraceEnabled$10(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabledInternal(Z)V

    return-void
.end method

.method private synthetic lambda$setImeVisibility$7(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private synthetic lambda$setInteractive$6(ZZ)V
    .locals 0
    .param p1, "interactive"    # Z
    .param p2, "fullscreen"    # Z

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractiveInternal(ZZ)V

    return-void
.end method

.method private synthetic lambda$throwExceptionFromSystem$11(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 343
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->throwExceptionFromSystemInternal(Ljava/lang/String;)V

    return-void
.end method

.method private static logRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 109
    sget-boolean v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->DEBUG:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC failed at IInputMethodClientInvoker#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->getCallerMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_1
    return-void
.end method

.method private onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "id"    # I

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 175
    :catch_0
    move-exception v0

    nop

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 181
    goto :goto_0

    .line 184
    :cond_0
    :goto_1
    return-void

    .line 180
    :goto_2
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 183
    :cond_1
    throw v0
.end method

.method private onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    nop

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 133
    goto :goto_0

    .line 136
    :cond_0
    :goto_1
    return-void

    .line 132
    :goto_2
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 135
    :cond_1
    throw v0
.end method

.method private onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "startInputSeq"    # I

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    nop

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 157
    goto :goto_0

    .line 160
    :cond_0
    :goto_1
    return-void

    .line 156
    :goto_2
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 159
    :cond_1
    throw v0
.end method

.method private onUnbindAccessibilityServiceInternal(II)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "id"    # I

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindAccessibilityService(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onUnbindMethodInternal(II)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "unbindReason"    # I

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private reportFullscreenModeInternal(Z)V
    .locals 1
    .param p1, "fullscreen"    # Z

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private scheduleStartInputIfNecessaryInternal(Z)V
    .locals 1
    .param p1, "fullscreen"    # Z

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setActiveInternal(ZZ)V
    .locals 1
    .param p1, "active"    # Z
    .param p2, "fullscreen"    # Z

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setActive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setImeTraceEnabledInternal(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 272
    const/16 v0, 0x4e

    :try_start_0
    sget-boolean v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    goto :goto_1

    .line 273
    :goto_0
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImeVisibilityInternal: visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", statsToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 277
    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_2

    .line 278
    :goto_1
    nop

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 280
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 282
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private setInteractiveInternal(ZZ)V
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "fullscreen"    # Z

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setInteractive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private throwExceptionFromSystemInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->throwExceptionFromSystem(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "id"    # I

    .line 164
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_0
    return-void
.end method

.method onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;

    .line 116
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :goto_0
    return-void
.end method

.method onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "startInputSeq"    # I

    .line 140
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :goto_0
    return-void
.end method

.method onUnbindAccessibilityService(II)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "id"    # I

    .line 206
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityServiceInternal(II)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    :goto_0
    return-void
.end method

.method onUnbindMethod(II)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "unbindReason"    # I

    .line 188
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethodInternal(II)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    :goto_0
    return-void
.end method

.method reportFullscreenMode(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .line 304
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenModeInternal(Z)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :goto_0
    return-void
.end method

.method scheduleStartInputIfNecessary(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .line 286
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessaryInternal(Z)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :goto_0
    return-void
.end method

.method setActive(ZZ)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "fullscreen"    # Z

    .line 224
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActiveInternal(ZZ)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :goto_0
    return-void
.end method

.method setImeTraceEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 322
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabledInternal(Z)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :goto_0
    return-void
.end method

.method setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 260
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :goto_0
    return-void
.end method

.method setInteractive(ZZ)V
    .locals 2
    .param p1, "interactive"    # Z
    .param p2, "fullscreen"    # Z

    .line 242
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractiveInternal(ZZ)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :goto_0
    return-void
.end method

.method throwExceptionFromSystem(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 340
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->throwExceptionFromSystemInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    :goto_0
    return-void
.end method
