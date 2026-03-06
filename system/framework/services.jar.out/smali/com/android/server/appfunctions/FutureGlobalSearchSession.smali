.class public Lcom/android/server/appfunctions/FutureGlobalSearchSession;
.super Ljava/lang/Object;
.source "FutureGlobalSearchSession.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/GlobalSearchSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0qHG0pa-4z42mlbsXVHJ9J0p-Mk(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/GlobalSearchSession;)Landroid/app/appsearch/SearchResults;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->lambda$search$1(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/GlobalSearchSession;)Landroid/app/appsearch/SearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EtxqmNDQz_MWov7nuq1eqfjOUx0(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GlobalSearchSession;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->lambda$getSessionAsync$0(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GlobalSearchSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i-ta5WlaweofGofCKsVRgg4AMJQ(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->lambda$search$2(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mstb6dlOJg0h7MKcQGG8wlw7KmI(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;Landroid/app/appsearch/GlobalSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->lambda$registerObserverCallbackAsync$3(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;Landroid/app/appsearch/GlobalSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y6tL64kMFsgVw73V5YAS3rQA3go(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->lambda$close$4(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "appSearchManager"    # Landroid/app/appsearch/AppSearchManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 43
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 44
    return-void
.end method

.method private getSessionAsync()Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/GlobalSearchSession;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$close$4(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "appSearchSession"    # Landroid/app/appsearch/GlobalSearchSession;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    .line 104
    :cond_0
    return-void
.end method

.method private static synthetic lambda$getSessionAsync$0(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GlobalSearchSession;
    .locals 2
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 49
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/GlobalSearchSession;

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic lambda$registerObserverCallbackAsync$3(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;Landroid/app/appsearch/GlobalSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "spec"    # Landroid/app/appsearch/observer/ObserverSpec;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "observer"    # Landroid/app/appsearch/observer/ObserverCallback;
    .param p4, "session"    # Landroid/app/appsearch/GlobalSearchSession;

    .line 87
    :try_start_0
    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/app/appsearch/exceptions/AppSearchException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static synthetic lambda$search$1(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/GlobalSearchSession;)Landroid/app/appsearch/SearchResults;
    .locals 1
    .param p0, "queryExpression"    # Ljava/lang/String;
    .param p1, "searchSpec"    # Landroid/app/appsearch/SearchSpec;
    .param p2, "session"    # Landroid/app/appsearch/GlobalSearchSession;

    .line 65
    invoke-virtual {p2, p0, p1}, Landroid/app/appsearch/GlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$search$2(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .locals 2
    .param p1, "result"    # Landroid/app/appsearch/SearchResults;

    .line 66
    new-instance v0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;-><init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;-><init>()V

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 105
    return-void
.end method

.method public registerObserverCallbackAsync(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "spec"    # Landroid/app/appsearch/observer/ObserverSpec;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "observer"    # Landroid/app/appsearch/observer/ObserverCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/observer/ObserverSpec;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/observer/ObserverCallback;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p1, "queryExpression"    # Ljava/lang/String;
    .param p2, "searchSpec"    # Landroid/app/appsearch/SearchSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/SearchSpec;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Lcom/android/server/appfunctions/FutureSearchResults;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 64
    return-object v0
.end method
