.class final Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;
.super Ljava/lang/Object;
.source "FutureAppSearchSessionImpl.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BatchResultCallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/appsearch/BatchResultCallback<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mFuture:Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;, "Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter<TK;TV;>;"
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchBatchResult<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 201
    return-void
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;, "Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter<TK;TV;>;"
    .local p1, "result":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 210
    .local p0, "this":Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;, "Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 211
    return-void
.end method
