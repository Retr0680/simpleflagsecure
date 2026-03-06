.class Lcom/android/server/display/DisplayManagerService$UidImportanceListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidImportanceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1206
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private onUidImportanceFlagged(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 1249
    const/16 v0, 0x190

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1250
    .local v0, "cached":Z
    :goto_0
    const/4 v1, 0x0

    .line 1251
    .local v1, "readyCallbackRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1252
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmCallbackRecordByPidByUid(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1253
    .local v3, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    if-nez v3, :cond_1

    .line 1254
    monitor-exit v2

    return-void

    .line 1261
    .end local v3    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1256
    .restart local v3    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 1257
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->setCachedLocked(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 1259
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->setUncachedLocked(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 1261
    .end local v3    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    if-eqz v1, :cond_3

    .line 1264
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1265
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dispatchPending()Z

    .line 1264
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1268
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 1261
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onUidImportanceUnflagged(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 1217
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1218
    const/16 v1, 0x3e8

    if-lt p2, v1, :cond_0

    .line 1220
    :try_start_0
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop pending events for gone uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1222
    monitor-exit v0

    return-void

    .line 1245
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1223
    :cond_0
    const/16 v1, 0x190

    if-lt p2, v1, :cond_1

    .line 1225
    monitor-exit v0

    return-void

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1230
    .local v1, "pendingCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$PendingCallback;>;"
    if-nez v1, :cond_2

    .line 1231
    monitor-exit v0

    return-void

    .line 1235
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1236
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " becomes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1239
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$PendingCallback;

    .line 1240
    .local v3, "pendingCallback":Lcom/android/server/display/DisplayManagerService$PendingCallback;
    if-eqz v3, :cond_4

    .line 1241
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$PendingCallback;->sendPendingDisplayEvent()V

    .line 1238
    .end local v3    # "pendingCallback":Lcom/android/server/display/DisplayManagerService$PendingCallback;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 1244
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmPendingCallbackSelfLocked(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1245
    .end local v1    # "pendingCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$PendingCallback;>;"
    monitor-exit v0

    .line 1246
    return-void

    .line 1245
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCachedLocked(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;)V"
        }
    .end annotation

    .line 1273
    .local p1, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1274
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1275
    .local v1, "cb":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_0

    .line 1276
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setCached(Z)Z

    .line 1273
    .end local v1    # "cb":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1279
    .end local v0    # "i":I
    return-void
.end method

.method private setUncachedLocked(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation

    .line 1284
    .local p1, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    const/4 v0, 0x0

    .line 1285
    .local v0, "ready":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1286
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1287
    .local v2, "cb":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v2, :cond_1

    .line 1288
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setCached(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1289
    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1290
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    .end local v2    # "cb":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1294
    .end local v1    # "i":I
    return-object v0
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 1209
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->onUidImportanceFlagged(II)V

    goto :goto_0

    .line 1212
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->onUidImportanceUnflagged(II)V

    .line 1214
    :goto_0
    return-void
.end method
