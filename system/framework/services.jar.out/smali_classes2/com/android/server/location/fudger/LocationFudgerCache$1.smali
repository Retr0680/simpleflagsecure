.class Lcom/android/server/location/fudger/LocationFudgerCache$1;
.super Landroid/location/provider/IS2LevelCallback$Stub;
.source "LocationFudgerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/fudger/LocationFudgerCache;


# direct methods
.method constructor <init>(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/fudger/LocationFudgerCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-direct {p0}, Landroid/location/provider/IS2LevelCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$sfgetsTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "could not get default population density"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public onResult(I)V
    .locals 3
    .param p1, "s2level"    # I

    .line 207
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-static {v0}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$fgetmLock(Lcom/android/server/location/fudger/LocationFudgerCache;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$fputmDefaultCoarseningLevel(Lcom/android/server/location/fudger/LocationFudgerCache;Ljava/lang/Integer;)V

    .line 209
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
