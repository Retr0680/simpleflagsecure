.class public Lcom/android/server/appfunctions/FutureSearchResultsImpl;
.super Ljava/lang/Object;
.source "FutureSearchResultsImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/FutureSearchResults;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSearchResults:Landroid/app/appsearch/SearchResults;


# direct methods
.method public static synthetic $r8$lambda$u4_-ZPGJhQ80uw8KPqeMiA_RkdM(Landroid/app/appsearch/AppSearchResult;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->lambda$getNextPage$0(Landroid/app/appsearch/AppSearchResult;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "searchResults"    # Landroid/app/appsearch/SearchResults;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    .line 38
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 39
    return-void
.end method

.method private static synthetic lambda$getNextPage$0(Landroid/app/appsearch/AppSearchResult;)Ljava/util/List;
    .locals 2
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 49
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

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


# virtual methods
.method public close()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    invoke-virtual {v0}, Landroid/app/appsearch/SearchResults;->close()V

    .line 61
    return-void
.end method

.method public getNextPage()Lcom/android/internal/infra/AndroidFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 45
    .local v0, "nextPageFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchResult<Ljava/util/List<Landroid/app/appsearch/SearchResult;>;>;>;"
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    iget-object v2, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 46
    new-instance v1, Lcom/android/server/appfunctions/FutureSearchResultsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 46
    return-object v1
.end method
