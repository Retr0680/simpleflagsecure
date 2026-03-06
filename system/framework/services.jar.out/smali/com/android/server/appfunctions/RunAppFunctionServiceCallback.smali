.class public Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;
.super Ljava/lang/Object;
.source "RunAppFunctionServiceCallback.java"

# interfaces
.implements Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback<",
        "Landroid/app/appfunctions/IAppFunctionService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallerSigningInfo:Landroid/content/pm/SigningInfo;

.field private final mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

.field private final mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field private final mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSafeExecuteAppFunctionCallback(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/content/pm/SigningInfo;)V
    .locals 0
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "cancellationCallback"    # Landroid/app/appfunctions/ICancellationCallback;
    .param p3, "safeExecuteAppFunctionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .param p4, "callerSigningInfo"    # Landroid/content/pm/SigningInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 50
    iput-object p3, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 51
    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

    .line 52
    iput-object p4, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCallerSigningInfo:Landroid/content/pm/SigningInfo;

    .line 53
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-virtual {v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->disable()V

    .line 100
    return-void
.end method

.method public onFailedToConnect()V
    .locals 4

    .line 90
    sget-object v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->TAG:Ljava/lang/String;

    const-string v1, "Failed to connect to service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v1, Landroid/app/appfunctions/AppFunctionException;

    const/16 v2, 0xbb8

    const-string v3, "Failed to connect to AppFunctionService"

    invoke-direct {v1, v2, v3}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 95
    return-void
.end method

.method public onServiceConnected(Landroid/app/appfunctions/IAppFunctionService;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
    .locals 7
    .param p1, "service"    # Landroid/app/appfunctions/IAppFunctionService;
    .param p2, "serviceUsageCompleteListener"    # Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->setExecutionStartTimeAfterBindMillis(J)V

    .line 62
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 63
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 64
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCallerSigningInfo:Landroid/content/pm/SigningInfo;

    iget-object v5, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

    new-instance v6, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;

    invoke-direct {v6, p0, p2}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;-><init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    move-object v1, p1

    .end local p1    # "service":Landroid/app/appfunctions/IAppFunctionService;
    .local v1, "service":Landroid/app/appfunctions/IAppFunctionService;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/app/appfunctions/IAppFunctionService;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "service":Landroid/app/appfunctions/IAppFunctionService;
    .restart local p1    # "service":Landroid/app/appfunctions/IAppFunctionService;
    :catch_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 81
    .restart local v1    # "service":Landroid/app/appfunctions/IAppFunctionService;
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v2, Landroid/app/appfunctions/AppFunctionException;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-direct {v2, v4, v3}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 84
    invoke-interface {p2}, Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;->onCompleted()V

    .line 86
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public bridge synthetic onServiceConnected(Ljava/lang/Object;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, Landroid/app/appfunctions/IAppFunctionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->onServiceConnected(Landroid/app/appfunctions/IAppFunctionService;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V

    return-void
.end method
