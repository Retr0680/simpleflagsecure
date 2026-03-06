.class public final Lcom/android/server/appfunctions/AppFunctionExecutors;
.super Ljava/lang/Object;
.source "AppFunctionExecutors.java"


# static fields
.field public static final LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field static final sConcurrency:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->sConcurrency:I

    .line 31
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/server/appfunctions/AppFunctionExecutors;->sConcurrency:I

    sget v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->sConcurrency:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string v0, "AppFunctionExecutors"

    invoke-direct {v8, v0}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    new-instance v0, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string v1, "AppFunctionsLoggingExecutors"

    invoke-direct {v0, v1}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 46
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
