.class public Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
.super Ljava/lang/Object;
.source "AppFunctionsLoggerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;
    }
.end annotation


# static fields
.field static final SUCCESS_RESPONSE_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

.field private final mLoggingExecutor:Ljava/util/concurrent/Executor;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$E-GaZXKbGpv9ACEQx4jBBvQjy0M(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->lambda$logAppFunctionsRequestReported$0(ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/appfunctions/AppFunctionExecutors;->LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;-><init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "loggerClock"    # Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggingExecutor:Ljava/util/concurrent/Executor;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    .line 56
    return-void
.end method

.method private getPackageUid(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package uid not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private synthetic lambda$logAppFunctionsRequestReported$0(ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V
    .locals 11
    .param p1, "callingUid"    # I
    .param p2, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p3, "errorCode"    # I
    .param p4, "responseSizeBytes"    # I
    .param p5, "e2eRequestLatencyMillis"    # J
    .param p7, "requestOverheadMillis"    # J

    .line 98
    nop

    .line 102
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->getPackageUid(Ljava/lang/String;)I

    move-result v3

    .line 104
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getRequestDataSize()I

    move-result v5

    .line 98
    const/16 v1, 0x3e6

    move v2, p1

    move v4, p3

    move v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lcom/android/server/appfunctions/AppFunctionsStatsLog;->write(IIIIIIJJ)V

    return-void
.end method

.method private logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V
    .locals 11
    .param p1, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "errorCode"    # I
    .param p3, "responseSizeBytes"    # I
    .param p4, "callingUid"    # I
    .param p5, "executionStartTimeMillis"    # J

    .line 90
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggerClock:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;

    .line 91
    invoke-interface {v0}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    .line 93
    .local v6, "e2eRequestLatencyMillis":J
    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-lez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v2

    sub-long v2, p5, v2

    move-wide v8, v2

    goto :goto_0

    .line 95
    :cond_0
    move-wide v8, v6

    :goto_0
    nop

    .line 96
    .local v8, "requestOverheadMillis":J
    iget-object v10, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mLoggingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method


# virtual methods
.method logAppFunctionError(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJ)V
    .locals 7
    .param p1, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "errorCode"    # I
    .param p3, "callingUid"    # I
    .param p4, "executionStartTimeMillis"    # J

    .line 76
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "request":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local p2    # "errorCode":I
    .end local p3    # "callingUid":I
    .end local p4    # "executionStartTimeMillis":J
    .local v1, "request":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .local v2, "errorCode":I
    .local v4, "callingUid":I
    .local v5, "executionStartTimeMillis":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V

    .line 82
    return-void
.end method

.method logAppFunctionSuccess(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;IJ)V
    .locals 7
    .param p1, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .param p2, "response"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .param p3, "callingUid"    # I
    .param p4, "executionStartTimeMillis"    # J

    .line 63
    nop

    .line 66
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getResponseDataSize()I

    move-result v3

    .line 63
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-wide v5, p4

    .end local p1    # "request":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .end local p3    # "callingUid":I
    .end local p4    # "executionStartTimeMillis":J
    .local v1, "request":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .local v4, "callingUid":I
    .local v5, "executionStartTimeMillis":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionsRequestReported(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIIJ)V

    .line 69
    return-void
.end method
