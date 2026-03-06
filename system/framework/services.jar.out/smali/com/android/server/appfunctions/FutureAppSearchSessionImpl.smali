.class public Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;
.super Ljava/lang/Object;
.source "FutureAppSearchSessionImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/FutureAppSearchSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1vtyz9aT23J_5hh81zE3Mn4z3qg(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GetSchemaResponse;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$getSchema$3(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GetSchemaResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$46izMU8cOzNEYsR-hxiAqbZ1lAk(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/AppSearchSession;)Landroid/app/appsearch/SearchResults;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$search$8(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/AppSearchSession;)Landroid/app/appsearch/SearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5NJeJVUalJgBDGtPr2LjGbGPBQA(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/SetSchemaRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$setSchema$2(Landroid/app/appsearch/SetSchemaRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7cwcP4zTo1Nxbtot1zK1Wld2EAI(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$remove$6(Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F96CqzEt0AKZtgLzvc4hkj80hYw(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$getSchema$4(Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GlOi76RcRm2Kcymq1kQ8mGT3uNk(Landroid/app/appsearch/AppSearchSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$close$10(Landroid/app/appsearch/AppSearchSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JTDa6745wo4ym2zJzc_Mw9ETX1M(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$search$9(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QCdHjwJs_qWHKkvT1iaFVXRrhl8(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/SetSchemaResponse;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$setSchema$1(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/SetSchemaResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$czNKsIZULcDdbQo_ehJdrGONL4E(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$getByDocumentId$7(Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nKcAnFWLpA8FXrG-rG2LL_1zo-E(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchSession;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$getSessionAsync$0(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wkS14ELjO4CVVC29amwYKzXNsyc(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$put$5(Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/server/appfunctions/FutureAppSearchSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    .locals 3
    .param p1, "appSearchManager"    # Landroid/app/appsearch/AppSearchManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "appSearchContext"    # Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 61
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 62
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 62
    invoke-virtual {p1, p3, v0, v2}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 64
    return-void
.end method

.method private getSessionAsync()Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$close$10(Landroid/app/appsearch/AppSearchSession;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "appSearchSession"    # Landroid/app/appsearch/AppSearchSession;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 189
    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSession;->close()V

    .line 192
    :cond_0
    return-void
.end method

.method private synthetic lambda$getByDocumentId$7(Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .param p1, "getRequest"    # Landroid/app/appsearch/GetByDocumentIdRequest;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 167
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 168
    .local v0, "batchResultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Landroid/app/appsearch/GenericDocument;>;>;"
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p2, p1, v1, v2}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 172
    return-object v0
.end method

.method private static synthetic lambda$getSchema$3(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GetSchemaResponse;
    .locals 2
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 113
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/GetSchemaResponse;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 117
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private synthetic lambda$getSchema$4(Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .param p1, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 109
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 110
    .local v0, "settableSchemaResponse":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchResult<Landroid/app/appsearch/GetSchemaResponse;>;>;"
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/appsearch/AppSearchSession;->getSchema(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 111
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$getSessionAsync$0(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchSession;
    .locals 2
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 69
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchSession;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private synthetic lambda$put$5(Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .param p1, "putDocumentsRequest"    # Landroid/app/appsearch/PutDocumentsRequest;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 131
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 134
    .local v0, "batchResultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;>;"
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 135
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 134
    invoke-virtual {p2, p1, v1, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 136
    return-object v0
.end method

.method private synthetic lambda$remove$6(Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .param p1, "removeRequest"    # Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 149
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 150
    .local v0, "settableBatchResultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;>;"
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p2, p1, v1, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 154
    return-object v0
.end method

.method private static synthetic lambda$search$8(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/AppSearchSession;)Landroid/app/appsearch/SearchResults;
    .locals 1
    .param p0, "queryExpression"    # Ljava/lang/String;
    .param p1, "searchSpec"    # Landroid/app/appsearch/SearchSpec;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 180
    invoke-virtual {p2, p0, p1}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$search$9(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .locals 2
    .param p1, "result"    # Landroid/app/appsearch/SearchResults;

    .line 181
    new-instance v0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;-><init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static synthetic lambda$setSchema$1(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/SetSchemaResponse;
    .locals 2
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 93
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SetSchemaResponse;

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 97
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private synthetic lambda$setSchema$2(Landroid/app/appsearch/SetSchemaRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .locals 4
    .param p1, "setSchemaRequest"    # Landroid/app/appsearch/SetSchemaRequest;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 85
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 86
    .local v0, "settableSchemaResponse":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchResult<Landroid/app/appsearch/SetSchemaResponse;>;>;"
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    new-instance v3, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 86
    invoke-virtual {p2, p1, v1, v2, v3}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 91
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 193
    return-void
.end method

.method public getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p1, "getRequest"    # Landroid/app/appsearch/GetByDocumentIdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/GetByDocumentIdRequest;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GenericDocument;",
            ">;>;"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/GetByDocumentIdRequest;)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public getSchema()Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p1, "putDocumentsRequest"    # Landroid/app/appsearch/PutDocumentsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/PutDocumentsRequest;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/PutDocumentsRequest;)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p1, "removeRequest"    # Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/RemoveByDocumentIdRequest;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/RemoveByDocumentIdRequest;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 145
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

    .line 179
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 179
    return-object v0
.end method

.method public setSchema(Landroid/app/appsearch/SetSchemaRequest;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p1, "setSchemaRequest"    # Landroid/app/appsearch/SetSchemaRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetSchemaRequest;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/SetSchemaResponse;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/SetSchemaRequest;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 81
    return-object v0
.end method
