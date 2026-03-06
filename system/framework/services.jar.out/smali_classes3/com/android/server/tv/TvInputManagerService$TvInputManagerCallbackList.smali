.class Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputManagerCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/media/tv/ITvInputManagerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3392
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/media/tv/ITvInputManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;

    .line 3395
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3397
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3398
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 3399
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3396
    nop

    .end local v2    # "userId":I
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3401
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3396
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 3401
    .end local v1    # "i":I
    monitor-exit v0

    .line 3402
    return-void

    .line 3401
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3392
    check-cast p1, Landroid/media/tv/ITvInputManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->onCallbackDied(Landroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method
