.class Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaQualityManagerPictureProfileCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/media/quality/IPictureProfileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1293
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/media/quality/IPictureProfileCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/quality/IPictureProfileCallback;

    .line 1297
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmUserStates(Lcom/android/server/media/quality/MediaQualityService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmUserStates(Lcom/android/server/media/quality/MediaQualityService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1300
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3, v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v3

    .line 1301
    .local v3, "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    nop

    .end local v2    # "userId":I
    .end local v3    # "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1298
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 1303
    .end local v1    # "i":I
    monitor-exit v0

    .line 1304
    return-void

    .line 1303
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

    .line 1293
    check-cast p1, Landroid/media/quality/IPictureProfileCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;->onCallbackDied(Landroid/media/quality/IPictureProfileCallback;)V

    return-void
.end method
