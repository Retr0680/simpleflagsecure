.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.super Landroid/app/appfunctions/IAppFunctionManager$Stub;
.source "AppFunctionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;,
        Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

.field private final mContext:Landroid/content/Context;

.field private final mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

.field private final mLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/appfunctions/RemoteServiceCaller<",
            "Landroid/app/appfunctions/IAppFunctionService;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;


# direct methods
.method public static synthetic $r8$lambda$83VSvtUgiCvOfCoY2fr5GTdlHik(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$getLockForPackage$8(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KEoWxzH9uq6uNoEYYtTp5qRF6aQ(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$registerAppSearchObserver$6(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcP1s5Km9gVoMSZwK8xweONTcYM(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$1(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NtV0Vpf9alWQDF3VN-_R1DwAYog(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$4(Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vo7P-n_xA2kyqnOUjQevDM5n1K8(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$3(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$giixtBhts1WbYY_qneUXlyEjzSU(Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$trySyncRuntimeMetadata$7(Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijLVbAaSQj-Gar67nBj7J2jT2ps(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$2(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nRYDTFk56Qrw6oZWnAzd50WVJqk(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$setAppFunctionEnabled$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAQGcGMOD8rGPZM-0NgY6tTxlmE(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunction$0(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;

    .line 101
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>()V

    sget-object v1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lcom/android/server/appfunctions/CallerValidatorImpl;

    invoke-direct {v3, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/appfunctions/ServiceHelperImpl;

    invoke-direct {v4, p1}, Lcom/android/server/appfunctions/ServiceHelperImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/appfunctions/ServiceConfigImpl;

    invoke-direct {v5}, Lcom/android/server/appfunctions/ServiceConfigImpl;-><init>()V

    new-instance v6, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    invoke-direct {v6, p1}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v1, "context":Landroid/content/Context;
    .local v7, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;)V

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callerValidator"    # Lcom/android/server/appfunctions/CallerValidator;
    .param p4, "appFunctionInternalServiceHelper"    # Lcom/android/server/appfunctions/ServiceHelper;
    .param p5, "serviceConfig"    # Lcom/android/server/appfunctions/ServiceConfig;
    .param p6, "loggerWrapper"    # Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
    .param p7, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/appfunctions/RemoteServiceCaller<",
            "Landroid/app/appfunctions/IAppFunctionService;",
            ">;",
            "Lcom/android/server/appfunctions/CallerValidator;",
            "Lcom/android/server/appfunctions/ServiceHelper;",
            "Lcom/android/server/appfunctions/ServiceConfig;",
            "Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;",
            "Landroid/content/pm/PackageManagerInternal;",
            ")V"
        }
    .end annotation

    .line 120
    .local p2, "remoteServiceCaller":Lcom/android/server/appfunctions/RemoteServiceCaller;, "Lcom/android/server/appfunctions/RemoteServiceCaller<Landroid/app/appfunctions/IAppFunctionService;>;"
    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;-><init>()V

    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    .line 123
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 124
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 125
    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 126
    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    .line 127
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 128
    return-void
.end method

.method private bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V
    .locals 12
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "targetUser"    # Landroid/os/UserHandle;
    .param p4, "cancellationSignalTransport"    # Landroid/os/ICancellationSignal;
    .param p5, "safeExecuteAppFunctionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .param p6, "bindFlags"    # I
    .param p7, "callerBinder"    # Landroid/os/IBinder;
    .param p8, "callingUid"    # I

    .line 467
    move-object/from16 v0, p5

    .line 468
    invoke-static/range {p4 .. p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v7

    .line 469
    .local v7, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    invoke-direct {v1, p0, v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/CancellationSignal;)V

    move-object v10, v1

    .line 477
    .local v10, "cancellationCallback":Landroid/app/appfunctions/ICancellationCallback;
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 482
    invoke-interface {v2}, Lcom/android/server/appfunctions/ServiceConfig;->getExecuteAppFunctionCancellationTimeoutMillis()J

    move-result-wide v5

    new-instance v8, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 490
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 488
    move/from16 v11, p8

    invoke-direct {p0, p3, v2, v11}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getPackageSigningInfo(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/content/pm/SigningInfo;

    move-result-object v2

    invoke-direct {v8, p1, v10, v0, v2}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/content/pm/SigningInfo;)V

    .line 478
    move-object v2, p2

    move-object v4, p3

    move/from16 v3, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/server/appfunctions/RemoteServiceCaller;->runServiceCall(Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)Z

    move-result v1

    .line 494
    .local v1, "bindServiceResult":Z
    if-nez v1, :cond_0

    .line 495
    sget-object v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Failed to bind to the AppFunctionService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v2, Landroid/app/appfunctions/AppFunctionException;

    const/16 v3, 0x7d0

    const-string v4, "Failed to bind the AppFunctionService."

    invoke-direct {v2, v3, v4}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 501
    :cond_0
    return-void
.end method

.method private executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "localCancelTransport"    # Landroid/os/ICancellationSignal;
    .param p5, "safeExecuteAppFunctionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .param p6, "callerBinder"    # Landroid/os/IBinder;

    .line 214
    move-object/from16 v4, p5

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 215
    .local v3, "targetUser":Landroid/os/UserHandle;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 216
    .local v12, "callingUser":Landroid/os/UserHandle;
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v0, v12, v3}, Lcom/android/server/appfunctions/CallerValidator;->verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    const/16 v1, 0x7d2

    const-string v2, "Cannot run on a user with a restricted enterprise policy"

    invoke-direct {v0, v1, v2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 221
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "targetPackageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    const/16 v1, 0x3e9

    const-string v2, "Target package name cannot be empty."

    invoke-direct {v0, v1, v2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 230
    return-void

    .line 233
    :cond_1
    iget-object v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 238
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v11

    .line 234
    move v6, p2

    move/from16 v7, p3

    move-object v8, v3

    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .local v8, "targetUser":Landroid/os/UserHandle;
    invoke-interface/range {v5 .. v11}, Lcom/android/server/appfunctions/CallerValidator;->verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .end local v8    # "targetUser":Landroid/os/UserHandle;
    .restart local v3    # "targetUser":Landroid/os/UserHandle;
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v9

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object v2, v10

    .end local v10    # "targetPackageName":Ljava/lang/String;
    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;)V

    .line 267
    .end local v2    # "targetPackageName":Ljava/lang/String;
    .restart local v10    # "targetPackageName":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v4}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 321
    return-void
.end method

.method private getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 521
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 522
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 521
    return-object v0
.end method

.method private getPackageSigningInfo(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/content/pm/SigningInfo;
    .locals 6
    .param p1, "targetUser"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 506
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 516
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 512
    const-wide/32 v2, 0x8000000

    move-object v1, p2

    move v4, p3

    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "uid":I
    .local v1, "packageName":Ljava/lang/String;
    .local v4, "uid":I
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 511
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .local p2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p3
.end method

.method private getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSession;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "functionId"    # Ljava/lang/String;
    .param p3, "runtimeMetadataSearchSession"    # Lcom/android/server/appfunctions/FutureAppSearchSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    nop

    .line 445
    invoke-static {p1, p2}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "documentId":Ljava/lang/String;
    new-instance v1, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string v2, "app_functions_runtime"

    invoke-direct {v1, v2}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object v1

    .line 450
    .local v1, "request":Landroid/app/appsearch/GetByDocumentIdRequest;
    nop

    .line 451
    invoke-interface {p3, v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/AppSearchBatchResult;

    .line 452
    .local v2, "result":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Landroid/app/appsearch/GenericDocument;>;"
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    new-instance v3, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/appsearch/GenericDocument;

    invoke-direct {v3, v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v3

    .line 455
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Function "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p0, "functionIdentifier"    # Ljava/lang/String;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "appSearchManager"    # Landroid/app/appsearch/AppSearchManager;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/AppSearchManager;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 329
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {p0, p1, p2, p3, v1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 345
    return-object v0
.end method

.method private synthetic lambda$executeAppFunction$0(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 8
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "localCancelTransport"    # Landroid/os/ICancellationSignal;
    .param p5, "safeExecuteAppFunctionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .param p6, "executeAppFunctionCallback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 191
    nop

    .line 197
    :try_start_0
    invoke-interface {p6}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPid":I
    .end local p4    # "localCancelTransport":Landroid/os/ICancellationSignal;
    .end local p5    # "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .local v2, "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .local v3, "callingUid":I
    .local v4, "callingPid":I
    .local v5, "localCancelTransport":Landroid/os/ICancellationSignal;
    .local v6, "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local v3    # "callingUid":I
    .end local v4    # "callingPid":I
    .end local v5    # "localCancelTransport":Landroid/os/ICancellationSignal;
    .end local v6    # "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .restart local p1    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "localCancelTransport":Landroid/os/ICancellationSignal;
    .restart local p5    # "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    :catch_1
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 199
    .end local p2    # "callingUid":I
    .end local p3    # "callingPid":I
    .end local p4    # "localCancelTransport":Landroid/os/ICancellationSignal;
    .end local p5    # "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .restart local v2    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .restart local v3    # "callingUid":I
    .restart local v4    # "callingPid":I
    .restart local v5    # "localCancelTransport":Landroid/os/ICancellationSignal;
    .restart local v6    # "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object p2

    .line 199
    invoke-virtual {v6, p2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 202
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static synthetic lambda$executeAppFunctionInternal$1(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 3
    .param p0, "canExecuteResult"    # Ljava/lang/Integer;
    .param p1, "isEnabled"    # Ljava/lang/Boolean;

    .line 260
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-object p0

    .line 261
    :cond_0
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    const-string v1, "The app function is disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>(Ljava/lang/String;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl-IA;)V

    throw v0
.end method

.method private synthetic lambda$executeAppFunctionInternal$2(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .locals 4
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "canExecuteResult"    # Ljava/lang/Integer;

    .line 243
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not have permission to execute the appfunction"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    nop

    .line 250
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 255
    invoke-direct {p0, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;

    move-result-object v2

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 248
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Integer;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 248
    return-object v0
.end method

.method private synthetic lambda$executeAppFunctionInternal$3(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .locals 16
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "safeExecuteAppFunctionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .param p4, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p5, "callingUid"    # I
    .param p6, "localCancelTransport"    # Landroid/os/ICancellationSignal;
    .param p7, "callerBinder"    # Landroid/os/IBinder;
    .param p8, "canExecuteResult"    # Ljava/lang/Integer;

    .line 269
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 270
    .local v1, "bindFlags":I
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 275
    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    move v6, v1

    goto :goto_0

    .line 270
    :cond_0
    move v6, v1

    .line 277
    .end local v1    # "bindFlags":I
    .local v6, "bindFlags":I
    :goto_0
    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 278
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    invoke-interface {v1, v9, v3}, Lcom/android/server/appfunctions/ServiceHelper;->resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v12

    .line 280
    .local v12, "serviceIntent":Landroid/content/Intent;
    if-nez v12, :cond_1

    .line 281
    new-instance v1, Landroid/app/appfunctions/AppFunctionException;

    const/16 v2, 0x7d0

    const-string v4, "Cannot find the target service."

    invoke-direct {v1, v2, v4}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    move-object/from16 v5, p3

    invoke-virtual {v5, v1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 285
    return-void

    .line 288
    :cond_1
    move-object/from16 v5, p3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 289
    .local v11, "grantRecipientUserId":I
    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 293
    invoke-virtual/range {p4 .. p4}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 291
    const-wide/16 v7, 0x0

    invoke-virtual {v1, v2, v7, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 290
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 297
    .local v13, "grantRecipientAppId":I
    if-lez v13, :cond_2

    .line 298
    iget-object v10, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v15, 0x1

    move/from16 v14, p5

    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 305
    :cond_2
    move-object/from16 v1, p4

    move/from16 v8, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    move-object v2, v12

    .end local v12    # "serviceIntent":Landroid/content/Intent;
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V

    .line 314
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .restart local v12    # "serviceIntent":Landroid/content/Intent;
    return-void
.end method

.method private synthetic lambda$executeAppFunctionInternal$4(Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1
    .param p1, "safeExecuteAppFunctionCallback"    # Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 317
    nop

    .line 318
    invoke-direct {p0, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object v0

    .line 317
    invoke-virtual {p1, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$getLockForPackage$8(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 626
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$registerAppSearchObserver$6(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "futureGlobalSearchSession"    # Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    .param p1, "voidResult"    # Ljava/lang/Void;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 584
    if-eqz p2, :cond_0

    .line 585
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register observer: "

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V

    .line 588
    return-void
.end method

.method private synthetic lambda$setAppFunctionEnabled$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "enabledState"    # I
    .param p5, "callback"    # Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    .line 364
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->setAppFunctionEnabledInternalLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    .line 367
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    invoke-interface {p5}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 372
    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "functionIdentifier":Ljava/lang/String;
    .end local p3    # "userHandle":Landroid/os/UserHandle;
    .end local p4    # "enabledState":I
    .end local p5    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 369
    .restart local p0    # "this":Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    .restart local p2    # "functionIdentifier":Ljava/lang/String;
    .restart local p3    # "userHandle":Landroid/os/UserHandle;
    .restart local p4    # "enabledState":I
    .restart local p5    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    :goto_0
    nop

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error in setAppFunctionEnabled: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-static {p5, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static synthetic lambda$trySyncRuntimeMetadata$7(Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "isSuccess"    # Ljava/lang/Boolean;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 602
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Sync was not successful"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    return-void
.end method

.method private mapAppSearchResultFailureCodeToExecuteAppFunctionResponse(I)I
    .locals 2
    .param p1, "resultCode"    # I

    .line 545
    if-eqz p1, :cond_0

    .line 550
    packed-switch p1, :pswitch_data_0

    .line 558
    const/16 v0, 0x7d0

    return v0

    .line 552
    :pswitch_0
    const/16 v0, 0x3eb

    return v0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method can only be used to convert failure result codes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 526
    instance-of v0, p1, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 529
    :cond_0
    const/16 v0, 0x7d0

    .line 530
    .local v0, "resultCode":I
    instance-of v1, p1, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;

    if-eqz v1, :cond_1

    .line 531
    const/16 v0, 0x3eb

    goto :goto_0

    .line 532
    :cond_1
    instance-of v1, p1, Lcom/android/server/appfunctions/AppSearchException;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/appfunctions/AppSearchException;

    .line 533
    .local v1, "appSearchException":Lcom/android/server/appfunctions/AppSearchException;
    nop

    .line 535
    invoke-virtual {v1}, Lcom/android/server/appfunctions/AppSearchException;->getResultCode()I

    move-result v2

    .line 534
    invoke-direct {p0, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapAppSearchResultFailureCodeToExecuteAppFunctionResponse(I)I

    move-result v0

    goto :goto_0

    .line 536
    .end local v1    # "appSearchException":Lcom/android/server/appfunctions/AppSearchException;
    :cond_2
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_3

    .line 537
    const/16 v0, 0x3e8

    goto :goto_0

    .line 538
    :cond_3
    instance-of v1, p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    if-eqz v1, :cond_4

    .line 539
    const/16 v0, 0x3ea

    .line 541
    :cond_4
    :goto_0
    new-instance v1, Landroid/app/appfunctions/AppFunctionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private registerAppSearchObserver(Lcom/android/server/SystemService$TargetUser;)V
    .locals 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 562
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 563
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 564
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 565
    .local v0, "perUserAppSearchManager":Landroid/app/appsearch/AppSearchManager;
    if-nez v0, :cond_0

    .line 566
    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSearch Manager not found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void

    .line 569
    :cond_0
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V

    .line 571
    .local v1, "futureGlobalSearchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    new-instance v3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    .line 573
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 574
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;-><init>(Landroid/os/UserHandle;Landroid/content/Context;)V

    .line 575
    .local v3, "appFunctionMetadataObserver":Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
    new-instance v2, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    invoke-direct {v2}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    .line 579
    invoke-virtual {v2}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    move-result-object v2

    sget-object v4, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 577
    const-string v5, "android"

    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->registerObserverCallbackAsync(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    new-instance v4, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 582
    invoke-virtual {v2, v4}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 589
    .local v2, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method private static reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "callback"    # Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 379
    :try_start_0
    new-instance v0, Landroid/os/ParcelableException;

    invoke-direct {v0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to report the exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setAppFunctionEnabledInternalLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "enabledState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    invoke-direct {p0, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;

    move-result-object v0

    .line 401
    .local v0, "perUserAppSearchManager":Landroid/app/appsearch/AppSearchManager;
    if-eqz v0, :cond_1

    .line 405
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v2, "appfunctions-db"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    .line 408
    .local v1, "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    .line 413
    .local v2, "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :try_start_0
    new-instance v3, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 415
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSession;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 419
    .local v3, "existingMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    new-instance v4, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {v4, v3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Landroid/app/appfunctions/AppFunctionRuntimeMetadata;)V

    .line 421
    invoke-virtual {v4, p4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    move-result-object v4

    .line 422
    invoke-virtual {v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v4

    .line 423
    .local v4, "newMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    new-instance v5, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v5}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/app/appsearch/GenericDocument;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 427
    invoke-virtual {v5, v6}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object v5

    .line 428
    invoke-virtual {v5}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object v5

    .line 425
    invoke-interface {v2, v5}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    .line 429
    invoke-virtual {v5}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/appsearch/AppSearchBatchResult;

    .line 430
    .local v5, "putDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 434
    .end local v3    # "existingMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .end local v4    # "newMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .end local v5    # "putDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V

    .line 435
    .end local v2    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    return-void

    .line 431
    .restart local v2    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .restart local v3    # "existingMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .restart local v4    # "newMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .restart local v5    # "putDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed writing updated doc to AppSearch due to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "perUserAppSearchManager":Landroid/app/appsearch/AppSearchManager;
    .end local v1    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local v2    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .end local p0    # "this":Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "functionIdentifier":Ljava/lang/String;
    .end local p3    # "userHandle":Landroid/os/UserHandle;
    .end local p4    # "enabledState":I
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .end local v3    # "existingMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .end local v4    # "newMetadata":Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .end local v5    # "putDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    .restart local v0    # "perUserAppSearchManager":Landroid/app/appsearch/AppSearchManager;
    .restart local v1    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .restart local v2    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .restart local p0    # "this":Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    .restart local p2    # "functionIdentifier":Ljava/lang/String;
    .restart local p3    # "userHandle":Landroid/os/UserHandle;
    .restart local p4    # "enabledState":I
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 402
    .end local v1    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local v2    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSearchManager not found for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 592
    nop

    .line 594
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 593
    invoke-static {v0, v1}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object v0

    .line 596
    .local v0, "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    if-eqz v0, :cond_0

    .line 597
    nop

    .line 599
    invoke-virtual {v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>()V

    .line 600
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsState(Landroid/content/Context;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw v2
.end method

.method public executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;
    .locals 10
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "executeAppFunctionCallback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 167
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 169
    .local v4, "callingPid":I
    nop

    .line 170
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v6

    .line 175
    .local v6, "safeExecuteAppFunctionCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 176
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 177
    .local v8, "validatedCallingPackage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 178
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 177
    invoke-interface {v0, v1, v8}, Lcom/android/server/appfunctions/CallerValidator;->verifyTargetUserHandle(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    nop

    .line 186
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 188
    .local v5, "localCancelTransport":Landroid/os/ICancellationSignal;
    sget-object v9, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local p2    # "executeAppFunctionCallback":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .local v2, "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .local v7, "executeAppFunctionCallback":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-object v5

    .line 179
    .end local v2    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local v5    # "localCancelTransport":Landroid/os/ICancellationSignal;
    .end local v7    # "executeAppFunctionCallback":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .end local v8    # "validatedCallingPackage":Ljava/lang/String;
    .restart local p1    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .restart local p2    # "executeAppFunctionCallback":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    :catch_0
    move-exception v0

    move-object v2, p1

    move-object v7, p2

    move-object p1, v0

    .line 180
    .end local p2    # "executeAppFunctionCallback":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .restart local v2    # "requestInternal":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .restart local v7    # "executeAppFunctionCallback":Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .local p1, "exception":Ljava/lang/SecurityException;
    new-instance p2, Landroid/app/appfunctions/AppFunctionException;

    .line 182
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p2, v1, v0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 180
    invoke-virtual {v6, p2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 183
    const/4 p2, 0x0

    return-object p2
.end method

.method getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 626
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    new-instance v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .locals 2
    .param p1, "requestInternal"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "executeAppFunctionCallback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .param p3, "callingUid"    # I

    .line 639
    new-instance v0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V

    invoke-direct {v0, p2, v1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V

    return-object v0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->removeUserSyncAdapter(Landroid/os/UserHandle;)V

    .line 143
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->registerAppSearchObserver(Lcom/android/server/SystemService$TargetUser;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;)V

    .line 136
    return-void
.end method

.method public setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "enabledState"    # I
    .param p5, "callback"    # Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    nop

    .line 361
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "functionIdentifier":Ljava/lang/String;
    .end local p3    # "userHandle":Landroid/os/UserHandle;
    .end local p4    # "enabledState":I
    .end local p5    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "functionIdentifier":Ljava/lang/String;
    .local v5, "userHandle":Landroid/os/UserHandle;
    .local v6, "enabledState":I
    .local v7, "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 374
    return-void

    .line 357
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v4    # "functionIdentifier":Ljava/lang/String;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "enabledState":I
    .end local v7    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    .restart local p2    # "functionIdentifier":Ljava/lang/String;
    .restart local p3    # "userHandle":Landroid/os/UserHandle;
    .restart local p4    # "enabledState":I
    .restart local p5    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    :catch_0
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object p1, v0

    .line 358
    .end local p2    # "functionIdentifier":Ljava/lang/String;
    .end local p3    # "userHandle":Landroid/os/UserHandle;
    .end local p4    # "enabledState":I
    .end local p5    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    .restart local v3    # "callingPackage":Ljava/lang/String;
    .restart local v4    # "functionIdentifier":Ljava/lang/String;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    .restart local v6    # "enabledState":I
    .restart local v7    # "callback":Landroid/app/appfunctions/IAppFunctionEnabledCallback;
    .local p1, "e":Ljava/lang/SecurityException;
    invoke-static {v7, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V

    .line 359
    return-void
.end method
